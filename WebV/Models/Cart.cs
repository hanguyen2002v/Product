namespace WebV.Models
{
    public class Cart
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
        public Book book { get; set; }
    }
}
