namespace WebV.Models
{
    public class Order
    {
        public int Id { get; set; }
        public string UserId { get; set; }

        public int BookId { get; set; }
        public string BookName { get; set; }
        public string image { get; set; }
        public int Quantity { get; set; }
        public float Price { get; set; }

        public float TotalPrice { get; set; }
        public ICollection<Cart> carts { get; set; }
    }
}
