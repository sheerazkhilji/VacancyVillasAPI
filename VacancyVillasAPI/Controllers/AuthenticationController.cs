﻿using ATS.Utiltiy;
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
    public class AuthenticationController : ControllerBase
    {
        private readonly IAuthenticationServices _service;
        public AuthenticationController(IAuthenticationServices services)
        {
            _service = services;

        }

        [HttpPost("Authenticate")]
        public Response Authenticate(LoginCredentials obj)
        {
            Response response = new Response();
            UserManagment claimDTO = new UserManagment();
            try
            {

                obj.Password = Secure.EncryptData(obj.Password);
                var user = _service.Authenticate(obj);
                if (user == null) return CustomStatusResponse.GetResponse(320);
                else
                {



                    response = CustomStatusResponse.GetResponse(200);
                    response.Token = TokenManager.GenerateToken(user.user);
                    response.Data = new
                    {
                        DataObj = user,
                        Userdata = user.user,
                        Modules = user.userModules,
                        Pages = user.UserPages,
                        PagesActons = user.UserPageActions

                        //Menu = menu,
                        //IndexPageController = menu[0].DynamicModulePagesMenus[0].UrlController,
                        //IndexPageAction = menu[0].DynamicModulePagesMenus[0].UrlAction

                    };
                    return response;
                }
            }
            catch (DbException ex)
            {
                //WriteFileLogger.WriteLog(_env, Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Authenticate", claimDTO.Username, Convert.ToInt32(claimDTO.UserId), claimDTO.RoleId, 600, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));
                //_loggerService.CreateLog(Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Authenticate", claimDTO.Username, Convert.ToInt32(claimDTO.UserId), claimDTO.RoleId, 600, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));

                response = CustomStatusResponse.GetResponse(600);


                response.ResponseMsg = ex.Message;

                return response;
            }
            catch (Exception ex)
            {
                //WriteFileLogger.WriteLog(_env, Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Authenticate", claimDTO.Username, Convert.ToInt32(claimDTO.UserId), claimDTO.RoleId, 500, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));
                //_loggerService.CreateLog(Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Authenticate", claimDTO.Username, Convert.ToInt32(claimDTO.UserId), claimDTO.RoleId, 500, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));

                response = CustomStatusResponse.GetResponse(500);
                response.ResponseMsg = "Internal server error!";
                return response;
            }
        }



        [HttpPost("Logout")]
        public Response Logout()
        {
            Response response;
            try
            {


                string token = Request.Headers["Authorization"];
                if (token != null)
                {
                    TokenManager.RemoveToken(token);
                }

                response = CustomStatusResponse.GetResponse(200);
                response.Data = null;
                response.Token = null;
                return response;

            }
            catch (DbException ex)
            {
                //WriteFileLogger.WriteLog(_env, Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Add", "", 0, 0, 600, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));
                //_loggerService.CreateLog(Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Add", "", 0, 0, 600, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));

                response = CustomStatusResponse.GetResponse(600);
                response.Token = null;
                //if (IsDBExceptionEnabeled)
                //{
                //    response.ResponseMsg = "An Error Occured";
                //}
                //else
                //{

                response.ResponseMsg = ex.Message;
                // }

                return response;
            }
            catch (Exception ex)
            {
                //WriteFileLogger.WriteLog(_env, Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Add", "", 0, 0, 500, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));
                //_loggerService.CreateLog(Convert.ToString(Request.Path.HasValue == false ? "" : Request.Path.Value), _controllerName, "Add", "", 0, 0, 500, Convert.ToString(ex.Message), Convert.ToString(ex.InnerException));

                response = CustomStatusResponse.GetResponse(500);
                response.Token = null;
                response.ResponseMsg = "Internal server error!";
                return response;
            }
        }

    }
}


      

