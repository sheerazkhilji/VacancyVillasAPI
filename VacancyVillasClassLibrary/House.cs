using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VacancyVillasClassLibrary
{
    public class House
    {
        public int HouseId { get; set; }
        public int UserId { get; set; }
        public int PropertyId { get; set; }
        public string PlaceName { get; set; }
        public int RentalId { get; set; }
        public float Longitude { get; set; }
        public float Latitude { get; set; }
        public int?  CountryId { get; set; }
        public string StreetName { get; set; }
        public string RoomNumber { get; set; }
        public string CityName { get; set; }
        public string StateName { get; set; }
        public string PostalCode { get; set; }
        public string Acreage { get; set; }
        public int Guests { get; set; }
        public int  Bedroom { get; set; }
        public int  Beds { get; set; }
        public int Bathroom { get; set; }
        public int  Kitchen { get; set; }
        public int  GeneralAmenitiesRule { get; set; }
        public int  PetRule { get; set; }
        public int  PartyOrganizingRule { get; set; }
        public int CookingRule { get; set; }
        public string AdditionalRuleText { get; set; }
        public string PlaceDesForClient { get; set; }

        public string HouseCoverImage { get; set; }
        public string HousePlaceImage { get; set; }
        
        public string Currency { get; set; }

        public float OneNightPrice { get; set; }
        public float MonThusPrice { get; set; }
        
        public float FriSunPrice { get; set; }
        public float Longtermprice { get; set; }
        public float NightsMin { get; set; }
        public float NightsMax { get; set; }
        public int stepCode { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime? AvailDate { get; set; }


        public List<HouseGeneralAmenities> houseGeneralAmenities { get; set; }
        public List<HouseOtherAmenities> houseOtherAmenities { get; set; }
        public List<HouseSafeAmenities> houseSafeAmenities { get; set; }

        public List<HouseeDates> HouseNotAvaiable { get; set; }

        
    }


    public class HouseeDates
    {
        public DateTime HouseNotAvaiable { get; set; }


    }


    public class HouseGeneralAmenities
    {


        public int GeneralAmentiesId { get; set; }
        public int HouseId { get; set; }
        public bool IsActive { get; set; }
    }
    public class HouseOtherAmenities
    {


        public int OtherAmenitiesId { get; set; }
        public int HouseId { get; set; }
        public bool IsActive { get; set; }
    }
    public class HouseSafeAmenities
    {


        public int safeAmenitiesId { get; set; }
        public int HouseId { get; set; }
        public bool IsActive { get; set; }
    }




    public   class HouseDropDown

    {

        public List<PropertyType> propertyTypes { get; set; }

        public List<RentalForm> rentalForms { get; set; }

        public List<Country> countries { get; set; }
        public List<GeneralAmenities> generalAmenities { get; set; }

        public List<OtherAmenities> otherAmenities { get; set; }


        public List<SafeAmenities> safeAmenities { get; set; }


        public List<HouseeDates> HouseNotAvaiable { get; set; }

        public House house { get; set; }

    }

    public class HouseListByvendor
    {
        public int id { get; set; }

        public int authorId { get; set; }

        public DateTime date { get; set; }

        public string title { get; set; }

        public string featuredImage { get; set; }


        public string galleryImgslist { get; set; }

        public int Bedroom { get; set; }

        public float price { get; set; }
        public int stepCode { get; set; }

        public string[] galleryImgs { get; set; }
    }



}
