using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Security.Claims;
using WebV.Data;
using WebV.Models;

namespace WebV.Controllers
{
    public class CartController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CartController(ApplicationDbContext context)
        {
            _context = context;
        }
        public const string CARTKEY = "cart";
        public IActionResult Index()
        {
            return View();
        }

        List<Cart> GetCarts()
        {
            var session = HttpContext.Session;
            string jsoncart = session.GetString(CARTKEY);
            if (jsoncart != null)
            {
                return JsonConvert.DeserializeObject<List<Cart>>(jsoncart);
            }
            return new List<Cart>();
        }

        void ClearCart()
        {
            var session = HttpContext.Session;
            session.Remove(CARTKEY);
        }

        void SaveCartSession(List<Cart> cart)
        {
            var session = HttpContext.Session;
            string jsoncart = JsonConvert.SerializeObject(cart);
            session.SetString(CARTKEY, jsoncart);
        }


        public IActionResult Add(int id)
        {
            var book = _context.Books.Where(b => b.BookId == id).FirstOrDefault();
            if (book == null)
            {
                return NotFound();
            }

            // Check if the book is out of stock
            if (book.Quantity <= 0)
            {
                // Return a notification indicating that the item is out of stock
                TempData["OutOfStockNotification"] = "This item is currently out of stock.";
                return RedirectToAction(nameof(ViewCart));
            }

            var cart = GetCarts();
            var cart1 = cart.Find(b => b.book.BookId == id);
            if (cart1 != null)
            {
                cart1.Quantity++;
            }
            else
            {
                cart.Add(new Cart() { Quantity = 1, book = book });
            }
            SaveCartSession(cart);
            return RedirectToAction(nameof(ViewCart));
        }
        public IActionResult ViewCart()
        {
            var categories = _context.Categories.ToList();
            ViewBag.CartUserName = User.Identity.Name;
            ViewBag.Categories = categories;
            return View(GetCarts());
        }
        [Route("/removecart/{bookid:int}", Name = "removecart")]
        public IActionResult RemoveCart([FromRoute] int bookid)
        {
            var cart = GetCarts();
            var cart1 = cart.Find(b => b.book.BookId == bookid);
            if (cart1 != null)
            {
                // Đã tồn tại, tăng thêm 1
                cart.Remove(cart1);
            }

            SaveCartSession(cart);
            return RedirectToAction(nameof(ViewCart));
        }
        public IActionResult ViewOrder()
        {
            var categories = _context.Categories.ToList();
            ViewBag.Categories = categories;
            var claimIdentity = (ClaimsIdentity)User.Identity;
            var claims = claimIdentity.FindFirst(ClaimTypes.NameIdentifier);
            string currentUserId = claims.Value;
            //int UsrID = Int32.Parse(currentUserId);
            string UsrID = currentUserId;
            var orders = _context.Orders.ToList();
            var FindOrder = _context.Orders.Where(p => p.UserId.Contains(currentUserId)).ToList();
            return View("ViewOrder", FindOrder);

        }
        public IActionResult Checkout()
        {
            var claimIdentity = (ClaimsIdentity)User.Identity;
            var claims = claimIdentity.FindFirst(ClaimTypes.NameIdentifier);
            string currentUserId = claims.Value;

            // caculate total price
            var cart = GetCarts();
            float total = 0;
            foreach (var item in cart)
            {
                total += (item.book.Price * item.Quantity);
            }

            for (int i = 0; i < cart.Count; i++)
            {
                var order = new Order()
                {
                    UserId = currentUserId,
                    BookId = cart[i].book.BookId,
                    BookName = cart[i].book.Title,
                    image = cart[i].book.Image,
                    Price = (int)cart[i].book.Price,
                    Quantity = cart[i].Quantity,
                    TotalPrice = total,

                };
                _context.Orders.Add(order);
                _context.SaveChanges();
                var book = _context.Books.Find(cart[i].book.BookId);
                if (book != null)
                {
                    book.Quantity -= cart[i].Quantity;
                    _context.SaveChanges();
                }
            }
            ClearCart();
            return RedirectToAction(nameof(ViewOrder));

        }
    }
}
