using ATS.DBManager;
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
    }
}
