using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VacancyVillasClassLibrary
{
   public class UserManagment:City
    {
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string RoleName { get; set; }
        public string Password { get; set; }
        public string Address { get; set; }
        public string Number { get; set; }

        public string PostalCode { get; set; }

        public string Gender { get; set; }

        public DateTime? DateOfBirth { get; set; }

        public bool IsActive { get; set; }

        public DateTime? CreateDate { get; set; }

        public string CreatedBy { get; set; }
        public DateTime? UpdateDate { get; set; }

        public string UpdateBy { get; set; }



    }
    public class Country
    {

        public int countryId { get; set; }
        public string CountryName { get; set; }
    }
    public class City: Country
    {

        public int CityId { get; set; }
        public string CityName { get; set; }
    }


}
