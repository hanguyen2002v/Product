using System.ComponentModel.DataAnnotations;

namespace WebV.Models
{
    public class Contact
    {
        public int ContactId { get; set; }
        [Display(Name = "Contact Name")]
        public string ContactName { get; set; }
        [Display(Name = "Message")]
        public string ContactMessage { get; set; }
    }
}
