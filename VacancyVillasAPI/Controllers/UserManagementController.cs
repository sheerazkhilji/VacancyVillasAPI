using ATS.Utiltiy;
using ATSClassLibrary.DTOLibraries;
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
    public class UserManagementController : ControllerBase
    {


        private readonly IUserService _service;
        public UserManagementController(IUserService service)
        {
            _service = service;


        }





        [HttpPost("AddUser")]
        public Response AddUser([FromBody] UserManagment obj)
        {
            UserManagment claimDTO = null;
            Response response = new Response();

            try
            {
                claimDTO = TokenManager.GetValidateToken(Request);
                if (claimDTO == null) return CustomStatusResponse.GetResponse(401);

               

                obj.CreateDate = DateTime.Now;
                obj.CreatedBy = "sheeraz";
                var res = _service.AddUser(obj);
                response = CustomStatusResponse.GetResponse(200);
                response.Token = TokenManager.GenerateToken(claimDTO);
                if (res>0)
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
                response.Token = TokenManager.GenerateToken(claimDTO);



                response.ResponseMsg = ex.Message;


                return response;
            }
            catch (Exception ex)
            {

                response = CustomStatusResponse.GetResponse(500);
                response.Token = TokenManager.GenerateToken(claimDTO);
                response.ResponseMsg = ex.Message;
                return response;
            }

        }







    }
}
