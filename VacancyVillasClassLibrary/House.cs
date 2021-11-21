using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VacancyVillasClassLibrary
{
    public class House
    {
        public int MyProperty { get; set; }


    }


    public   class HouseDropDown:House

    {

        public List<PropertyType> propertyTypes { get; set; }

        public List<RentalForm> rentalForms { get; set; }

        public List<Country> countries { get; set; }
        public List<GeneralAmenities> generalAmenities { get; set; }

        public List<OtherAmenities> otherAmenities { get; set; }


        public List<SafeAmenities> safeAmenities { get; set; }


    }




}
