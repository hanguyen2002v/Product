using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebV.Models;
using WebV.Data;
using Microsoft.EntityFrameworkCore;

namespace WebV.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            var books = _context.Books.ToList();
            return View(books);
        }

        public async Task<IActionResult> Privacy(string searchString)
        {
            if (_context.Books == null)
            {
                return Problem("Not book");
            }

            var books = from b in _context.Books select b;

            if (!String.IsNullOrEmpty(searchString))
            {
                books = books.Where(s => s.Title!.Contains(searchString));
            }

            return View(await books.ToListAsync());
        }

        public async Task<IActionResult> Detail(int id)
        {
            var book = await _context.Books.Include(b => b.Category)
                            .FirstOrDefaultAsync(m => m.BookId == id);
            if (book == null)
            {
                return NotFound();
            }
            return View(book);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}