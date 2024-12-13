using System.ComponentModel.DataAnnotations;

namespace PROG7311_P2_ST10049180_ALEC.Models
{
    public class ProductsModel
    {

        [Key]
        public int ProductId { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string Category { get; set; }
        public DateTime Production_Date { get; set; }
        public string FarmerId { get; set; }

    }
}
