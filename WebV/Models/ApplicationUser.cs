using Microsoft.AspNetCore.Identity;

namespace WebV.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string? Name { get; set; }
    }
}
