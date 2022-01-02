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
    public class VistorsController : ControllerBase
    {
        private readonly IVisitorservices _service;
        public VistorsController(IVisitorservices service)
        {
            _service = service;

        }





        [HttpPost("HousePreview/{HouseId}")]
        public Response HousePreview(int HouseId)
        {
            UserManagment claimDTO = null;

            Response response = new Response();

            try
            {

                //claimDTO = TokenManager.GetValidateToken(Request);
                //if (claimDTO == null) return CustomStatusResponse.GetResponse(401);




                var res = _service.getHouseByIdForPrevieworVisitor(HouseId);
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


        [HttpPost("HouseList")]
        public Response HouseList()
        {
            UserManagment claimDTO = null;
            Response response = new Response();

            try
            {
                //claimDTO = TokenManager.GetValidateToken(Request);
                //if (claimDTO == null) return CustomStatusResponse.GetResponse(401);




                var res = _service.HouseList();

                string[] img = { "https://images.pexels.com/photos/1268871/pexels-photo-1268871.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" };

                for (int i = 0; i < res.Count; i++)
                {
                    res[i].galleryImgs = res[i].galleryImgslist == null || res[i].galleryImgslist == "" ? img : res[i].galleryImgslist.Split(',');



                }

                response = CustomStatusResponse.GetResponse(200);
             //   response.Token = TokenManager.GenerateToken(claimDTO);
                if (res != null)
                {

                    #region Set New Entry In Cache

                    //cacheData.Add(res);
                    //cacheManager.Remove(cacheName);
                    //cacheManager.CreateEntry(cacheName, cacheData);

                    #endregion
                    response.Data = res;

                }
                return response;



            }
            catch (DbException ex)
            {

                response = CustomStatusResponse.GetResponse(600);
             //   response.Token = TokenManager.GenerateToken(claimDTO);



                response.ResponseMsg = ex.Message;


                return response;
            }
            catch (Exception ex)
            {

                response = CustomStatusResponse.GetResponse(500);
           //     response.Token = TokenManager.GenerateToken(claimDTO);
                response.ResponseMsg = ex.Message;
                return response;
            }

        }



    }
}
