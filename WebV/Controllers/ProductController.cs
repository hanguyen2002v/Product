using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebV.Controllers
{
    public class ProductController : Controller
    {
        [Authorize(Roles = "Admin")]
        public IActionResult GetAll()
        {
            return View();
        }
    }
}
