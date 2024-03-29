﻿using ATS.DBManager;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using VacancyVillasClassLibrary;

namespace VacancyVillasAPI.Service
{
    public interface IVendorServices
    {

        public List<Country> Countries();

        public List<City> Cities(int id);

        public int selfVendorGegistration(VendorManagement obj);


        public object GetAllDropDownForHouse();


        public int AddUpdateHouse(House obj);

        public List<HouseListByvendor> HouseListByVendor(int userid);



        public object getHouseByIdForVendor(int HouseId);

        public List<VendorManagement> ListOfVendors();


        public object getHouseByIdForPreview(int HouseId);




    }
    public class VendorServices : IVendorServices
    {
        private readonly IDapper _dapper;
        public VendorServices(IDapper dapper)
        {
            _dapper = dapper;

        }
  

        public List<Country> Countries()
        {
            DynamicParameters parameters = new DynamicParameters();

            var data = _dapper.GetAll<Country>(@"[dbo].[usp_GetAllCountries]", parameters);


          




            return data;
        }


        public List<City> Cities(int id)
        {

            DynamicParameters parameters = new DynamicParameters();


            parameters.Add("@Id", id, DbType.Int32, ParameterDirection.Input);

            var data = _dapper.GetAll<City>(@"[dbo].[usp_GetCityByCountryId]", parameters);


            return data;
        }

        public int selfVendorGegistration(VendorManagement obj)
        {
            DynamicParameters parameters = new DynamicParameters();

            parameters.Add("@Username", obj.Username, DbType.String, ParameterDirection.Input);
            parameters.Add("@Firstname", obj.Firstname, DbType.String, ParameterDirection.Input);

            parameters.Add("@LastName", obj.Lastname, DbType.String, ParameterDirection.Input);
            parameters.Add("@Password", Secure.EncryptData(obj.Password), DbType.String, ParameterDirection.Input);

            parameters.Add("@dateofbirth", obj.DateOfBirth, DbType.Date, ParameterDirection.Input);

            parameters.Add("@Gender", obj.Gender, DbType.String, ParameterDirection.Input);

            
            parameters.Add("@Address", obj.Address, DbType.String, ParameterDirection.Input);

            parameters.Add("@PhoneNumber", obj.Number, DbType.String, ParameterDirection.Input);
            parameters.Add("@PostalCode", obj.PostalCode, DbType.String, ParameterDirection.Input);
            parameters.Add("@CityID", obj.CityId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@CountryId", obj.countryId, DbType.Int32, ParameterDirection.Input);
            
            parameters.Add("@CompanyName", obj.CompanyName, DbType.String, ParameterDirection.Input);
            parameters.Add("@CompanyDiscription", obj.CompanyDiscription, DbType.String, ParameterDirection.Input);
            parameters.Add("@WebSite", obj.WebSite, DbType.String, ParameterDirection.Input);

          return _dapper.Insert<int>(@"[dbo].[usp_SelfVendorRegistration]", parameters);
        }

        public object GetAllDropDownForHouse()
        {
            DynamicParameters parameters = new DynamicParameters();

            HouseDropDown obj = new HouseDropDown();


            var data = _dapper.GetMultipleObjects(@"[dbo].[usp_GetAllDropDownForHouse]", parameters,gr=>gr.Read<PropertyType>(), gr => gr.Read<RentalForm>(), gr => gr.Read<Country>() ,gr => gr.Read<GeneralAmenities>(), gr => gr.Read<OtherAmenities>(), gr => gr.Read<SafeAmenities>());


            obj.propertyTypes = data.Item1.ToList();
            obj.rentalForms = data.Item2.ToList();
            obj.countries = data.Item3.ToList();
            obj.generalAmenities = data.Item4.ToList();
            obj.otherAmenities = data.Item5.ToList();
            obj.safeAmenities = data.Item6.ToList();







            return obj;
        }

        public int AddUpdateHouse(House obj)
        {
            DynamicParameters parameters = new DynamicParameters();

            var table1 = new DataTable();

            var table2 = new DataTable();

            var table3 = new DataTable();

            var table4 = new DataTable();


            table1.Columns.Add("GeneralAmentiesIds", typeof(int));
            table1.Columns.Add("IsActive", typeof(bool));

            table2.Columns.Add("OtherAmenitiesIds", typeof(int));
            table2.Columns.Add("IsActive", typeof(bool));

            table3.Columns.Add("SafeAmenitiesIds", typeof(int));
            table3.Columns.Add("IsActive", typeof(bool));

            table4.Columns.Add("HouseId", typeof(int));
            table4.Columns.Add("HouseNotAvaiableDates", typeof(DateTime));

            if (obj.houseGeneralAmenities != null) {
                foreach (var item in obj.houseGeneralAmenities)
                {
                    var row = table1.NewRow();
                    row["GeneralAmentiesIds"] = Convert.ToInt32(item.GeneralAmentiesId);
                    row["IsActive"] = item.IsActive;
                    table1.Rows.Add(row);
                }
            }

            if (obj.houseOtherAmenities != null)
            {
                foreach (var item in obj.houseOtherAmenities)
                {
                    var row = table2.NewRow();
                    row["OtherAmenitiesIds"] = Convert.ToInt32(item.OtherAmenitiesId);
                    row["IsActive"] = item.IsActive;
                    table2.Rows.Add(row);
                }
            }

            if (obj.houseSafeAmenities != null) { 
                foreach (var item in obj.houseSafeAmenities)
                {
                    var row = table3.NewRow();
                    row["SafeAmenitiesIds"] = Convert.ToInt32(item.safeAmenitiesId);
                    row["IsActive"] = item.IsActive;
                    table3.Rows.Add(row);
                }
        }

            if (obj.HouseNotAvaiable != null)
            {
                foreach (var item in obj.HouseNotAvaiable)
                {
                    var row = table4.NewRow();
                    row["HouseId"] = Convert.ToInt32(obj.HouseId);
                    row["HouseNotAvaiableDates"] = item.HouseNotAvaiable;
                    table4.Rows.Add(row);
                }
            }

            parameters.Add("@HouseId", obj.HouseId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@UserId", obj.UserId, DbType.Int32, ParameterDirection.Input);
          
            parameters.Add("@PropertyId", obj.PropertyId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@PlaceName", obj.PlaceName, DbType.String, ParameterDirection.Input);
            parameters.Add("@RentalId", obj.RentalId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@Longitude", obj.Longitude, DbType.Double, ParameterDirection.Input);
            parameters.Add("@Latitude", obj.Latitude, DbType.Double, ParameterDirection.Input);
            parameters.Add("@CountryId", obj.CountryId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@streetName", obj.StreetName, DbType.String, ParameterDirection.Input);
            parameters.Add("@RoomNumber", obj.RoomNumber, DbType.String, ParameterDirection.Input);
            parameters.Add("@CityName", obj.CityName, DbType.String, ParameterDirection.Input);
            parameters.Add("@stateName", obj.StateName, DbType.String, ParameterDirection.Input);
            parameters.Add("@PostalCode", obj.PostalCode, DbType.String, ParameterDirection.Input);
            parameters.Add("@Acreage", obj.Acreage, DbType.String, ParameterDirection.Input);
            parameters.Add("@Guests", obj.Guests, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@Beds", obj.Beds, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@Bedroom", obj.Bedroom, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@Bathroom", obj.Bathroom, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@kitchen", obj.Kitchen, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@GeneralAmenitiesRule", obj.GeneralAmenitiesRule, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@PetRule", obj.PetRule, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@PartyOrganizingRule", obj.PartyOrganizingRule, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@CookingRule", obj.CookingRule, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@PlaceDesForClient", obj.PlaceDesForClient, DbType.String, ParameterDirection.Input);
            parameters.Add("@HouseCoverImage", obj.HouseCoverImage, DbType.String, ParameterDirection.Input);
            parameters.Add("@HousePlaceImage", obj.HousePlaceImage, DbType.String, ParameterDirection.Input);
            parameters.Add("@Currency", obj.Currency, DbType.String, ParameterDirection.Input);
            parameters.Add("@OneNightPrice", obj.OneNightPrice, DbType.Double, ParameterDirection.Input);
            parameters.Add("@MonThusPrice", obj.MonThusPrice, DbType.Double, ParameterDirection.Input);
            parameters.Add("@FriSunPrice", obj.FriSunPrice, DbType.Double, ParameterDirection.Input);
            parameters.Add("@Longtermprice", obj.Longtermprice, DbType.Double, ParameterDirection.Input);
            parameters.Add("@NightsMin", obj.NightsMin, DbType.Double, ParameterDirection.Input);
            parameters.Add("@NightsMax", obj.NightsMax, DbType.Double, ParameterDirection.Input);
            parameters.Add("@AdditionalRulesForHouse", obj.AdditionalRuleText, DbType.String, ParameterDirection.Input);
            parameters.Add("@AvailDate", obj.AvailDate, DbType.DateTime, ParameterDirection.Input);

            parameters.Add("@type_HouseGeneralAmenities", table1.AsTableValuedParameter("dbo.type_HouseGeneralAmenities"));
            parameters.Add("@type_HouseOtherAmenities", table2.AsTableValuedParameter("dbo.type_HouseOtherAmenities"));
            parameters.Add("@type_HouseSafeAmenities", table3.AsTableValuedParameter("dbo.type_HouseSafeAmenities"));
            parameters.Add("@type_HouseNotAvaiable", table4.AsTableValuedParameter("dbo.type_HouseNotAvaiable"));
            parameters.Add("@stepCode", obj.stepCode, DbType.Int32, ParameterDirection.Input);

            return _dapper.Insert<int>(@"[dbo].[usp_AddUpdateHouse]", parameters);
        }

        public List<HouseListByvendor> HouseListByVendor(int userid)
        {

            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@UserId", userid, DbType.Int32, ParameterDirection.Input);

            var data = _dapper.GetAll<HouseListByvendor>(@"[dbo].[usp_GetAllHousesByVendor]", parameters);






            return data;


        }

        public object getHouseByIdForVendor(int HouseId)
        {
            DynamicParameters parameters = new DynamicParameters();

            HouseDropDown obj = new HouseDropDown();


            parameters.Add("@HouseId", HouseId, DbType.Int32, ParameterDirection.Input);
            var data = _dapper.GetMultipleObjects(@"[dbo].[usp_getHouseByIdForVendor]", parameters, gr => gr.Read<PropertyType>(), gr => gr.Read<RentalForm>(), gr => gr.Read<Country>(), gr => gr.Read<GeneralAmenities>(), gr => gr.Read<OtherAmenities>(), gr => gr.Read<SafeAmenities>(), gr=>gr.Read<HouseeDates>(),gr => gr.Read<House>());


            obj.propertyTypes = data.Item1.ToList();
            obj.rentalForms = data.Item2.ToList();
            obj.countries = data.Item3.ToList();
            obj.generalAmenities = data.Item4.ToList();
            obj.otherAmenities = data.Item5.ToList();
            obj.safeAmenities = data.Item6.ToList();
            obj.HouseNotAvaiable = data.Item7.Item1.ToList();
            obj.house = data.Item7.Item2.FirstOrDefault();
           




            return obj;
        }

        public List<VendorManagement> ListOfVendors()
        {
            DynamicParameters parameters = new DynamicParameters();
           

            var data = _dapper.GetAll<VendorManagement>(@"[dbo].[usp_GetAllVendors]", parameters);


            return data;
        }

        public object getHouseByIdForPreview(int HouseId)
        {

            DynamicParameters parameters = new DynamicParameters();

            HousePreview obj = new HousePreview();


            parameters.Add("@HouseId", HouseId, DbType.Int32, ParameterDirection.Input);
            var data = _dapper.GetMultipleObjects(@"[dbo].[usp_GetHouseForPreview]", parameters, gr => gr.Read<House>(),gr=>gr.Read<VendorManagement>(), gr => gr.Read<PropertyType>(), gr => gr.Read<RentalForm>(), gr => gr.Read<Country>(), gr => gr.Read<HouseeDates>(), gr => gr.Read<GeneralAmenities>(), gr => gr.Read<SafeAmenities>(), gr => gr.Read<OtherAmenities>());


            obj.house = data.Item1.FirstOrDefault();
            obj.vendor = data.Item2.FirstOrDefault();
            obj.propertyType = data.Item3.FirstOrDefault();
            obj.rentalForm = data.Item4.FirstOrDefault();
            obj.countries = data.Item5.FirstOrDefault();
            obj.HouseNotAvaiable = data.Item6.ToList();
            obj.generalAmenities = data.Item7.Item1.ToList();
            obj.safeAmenities = data.Item7.Item2.ToList();

            obj.otherAmenities = data.Item7.Item3.ToList();
          
            



            return obj;
        }
    }
}
