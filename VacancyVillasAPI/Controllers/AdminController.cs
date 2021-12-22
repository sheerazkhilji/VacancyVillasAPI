using ATS.Utiltiy;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;
using VacancyVillasAPI.Service;
using VacancyVillasClassLibrary;

namespace VacancyVillasAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminController : ControllerBase
    {
        private readonly IAdminService _service;
        public AdminController(IAdminService Service)
        {
            _service = Service;
        }



        [HttpPost("vendorsHousesRequest")]
        public Response vendorsHousesRequest()
        {
            UserManagment claimDTO = null;
            Response response = new Response();

            try
            {


                claimDTO = TokenManager.GetValidateToken(Request);
                if (claimDTO == null) return CustomStatusResponse.GetResponse(401);



                var res = _service.vendorsHousesRequest();
                response = CustomStatusResponse.GetResponse(200);

                if (res != null)
                {

                    #region Set New Entry In Cache

                    //cacheData.Add(res);
                    //cacheManager.Remove(cacheName);
                    //cacheManager.CreateEntry(cacheName, cacheData);

                    #endregion
                    response.Data = res;
                    response.ResponseMsg = "Data save successfully!";
                }
                return response;



            }
            catch (DbException ex)
            {

                response = CustomStatusResponse.GetResponse(600);




                response.ResponseMsg = ex.Message;


                return response;
            }
            catch (Exception ex)
            {

                response = CustomStatusResponse.GetResponse(500);
                // response.Token = TokenManager.GenerateToken(claimDTO);
                response.ResponseMsg = ex.Message;
                return response;
            }

        }



    }
}
