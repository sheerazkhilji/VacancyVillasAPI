using ATS.DBManager;
using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VacancyVillasClassLibrary;

namespace VacancyVillasAPI.Service
{
   public interface IAdminService
    {
        public List<VendorsHouses> vendorsHousesRequest();



    }

    public class AdminService: IAdminService
    {
        private readonly IDapper _dapper;

        public AdminService(IDapper dapper)
        {
            _dapper = dapper;
        }

        public List<VendorsHouses> vendorsHousesRequest()
        {
            DynamicParameters parameters = new DynamicParameters();


            var data = _dapper.GetAll<VendorsHouses>(@"[dbo].[usp_GetAllHouseForAdmin]", parameters);


            return data;
        }
    }
}
