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
    public class VendorController : ControllerBase
    {
        private readonly IVendorServices _service;
        public VendorController(IVendorServices services)
        {
            _service = services;

        }



        [HttpPost("GetAllCountries")]
        public Response GetAllCountries()
        {
            //ClaimDTO claimDTO = null;
            Response response = new Response();

            try
            {
                //claimDTO = TokenManager.GetValidateToken(Request);
                //if (claimDTO == null) return CustomStatusResponse.GetResponse(401);



              
                var res = _service.Countries();
                response = CustomStatusResponse.GetResponse(200);
              //  response.Token = TokenManager.GenerateToken(claimDTO);
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
             //   response.Token = TokenManager.GenerateToken(claimDTO);



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



        [HttpPost("GetCityByCountryId/{id}")]
        public Response GetCityByCountryId(int id)
        {
           
            Response response = new Response();

            try
            {
             



                var res = _service.Cities(id);
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



        [HttpPost("SelfVenforRegistration")]
        public Response SelfVenforRegistration(VendorManagement obj)
        {

            Response response = new Response();

            try
            {




                var res = _service.selfVendorGegistration(obj);
                response = CustomStatusResponse.GetResponse(200);

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




        [HttpPost("GetAllDropDownForHouse")]
        public Response GetAllDropDownForHouse()
        {
            //ClaimDTO claimDTO = null;
            Response response = new Response();

            try
            {
                //claimDTO = TokenManager.GetValidateToken(Request);
                //if (claimDTO == null) return CustomStatusResponse.GetResponse(401);




                var res = _service.GetAllDropDownForHouse();
                response = CustomStatusResponse.GetResponse(200);
                //  response.Token = TokenManager.GenerateToken(claimDTO);
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
                // response.Token = TokenManager.GenerateToken(claimDTO);
                response.ResponseMsg = ex.Message;
                return response;
            }

        }









    }
}
