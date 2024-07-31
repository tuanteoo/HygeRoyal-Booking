using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HygeRoyal_Booking.Models
{
    public class RoomModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string ImageUrl { get; set; }
        public int Price { get; set; }
        public string Discount { get; set; }
        public string Belong { get; set; }
        public int Quantity { get; set; }

        public int priceDiscount(int price, string discount)
        {
            float discountFloat = float.Parse(discount)/100;

            return Convert.ToInt32(price - (price * discountFloat));
        }
    }
}