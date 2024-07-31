using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HygeRoyal_Booking.Models
{
    public class AccountModel
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Phone { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Region { get; set; }
        public string PostalCode { get; set; }

    }
}