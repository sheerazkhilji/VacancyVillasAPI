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
    public interface IVisitorservices
    {

        public object getHouseByIdForPrevieworVisitor(int HouseId);

        public List<HouseList> HouseList();
    }

    public class VisitorsServices : IVisitorservices
    {
        private readonly IDapper _dapper;
        public VisitorsServices(IDapper dapper)
        {
            _dapper = dapper;

        }
        public object getHouseByIdForPrevieworVisitor(int HouseId)
        {

            DynamicParameters parameters = new DynamicParameters();

            HousePreview obj = new HousePreview();


            parameters.Add("@HouseId", HouseId, DbType.Int32, ParameterDirection.Input);
            var data = _dapper.GetMultipleObjects(@"[dbo].[usp_GetHouseForPreviewForVisitor]", parameters, gr => gr.Read<House>(), gr => gr.Read<VendorManagement>(), gr => gr.Read<PropertyType>(), gr => gr.Read<RentalForm>(), gr => gr.Read<Country>(), gr => gr.Read<HouseeDates>(), gr => gr.Read<GeneralAmenities>(), gr => gr.Read<SafeAmenities>(), gr => gr.Read<OtherAmenities>());


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
        public List<HouseList> HouseList()
        {

            DynamicParameters parameters = new DynamicParameters();
            var data = _dapper.GetAll<HouseList>(@"[dbo].[usp_GetAllHouses]", parameters);






            return data;


        }
    }
}
