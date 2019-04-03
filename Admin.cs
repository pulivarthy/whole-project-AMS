using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEL
{
    public class Admin
    {
        public int Login_Id { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public DateTime Dob { get; set; }
        public string Address { get; set; }
        public long ContactNo { get; set; }
        public string Email { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public DateTime Date_of_joining { get; set; }
        public long Zip_code { get; set; }
        public string job_Type { get; set; }
    }
}
