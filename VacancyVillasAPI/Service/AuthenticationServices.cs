using ATS.DBManager;
using ATSClassLibrary.DTOLibraries;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using VacancyVillasClassLibrary;

namespace VacancyVillasAPI.Service
{
    public interface IAuthenticationServices
    {

        ClaimDTO Authenticate(LoginCredentials obj);
    }
    public class AuthenticationServices : IAuthenticationServices
    {
        private readonly IDapper _dapper;
        public AuthenticationServices(IDapper dapper)
        {
            _dapper = dapper;

        }
        public ClaimDTO Authenticate(LoginCredentials obj)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@Username", obj.UserName, DbType.String, ParameterDirection.Input);
            parameters.Add("@UserPassword", obj.Password, DbType.String, ParameterDirection.Input);
            var tuple = _dapper.GetMultipleObjects(@"[dbo].[usp_ValidateLogin]", parameters, gr => gr.Read<UserManagment>(), gr => gr.Read<UserModule>(), gr => gr.Read<UserPages>(), gr => gr.Read<UserPageAction>());
            
            
           ClaimDTO claimDTO = new ClaimDTO();

            claimDTO.user = tuple.Item1.FirstOrDefault();
             
           
            claimDTO.userModules = tuple.Item2.ToList();
            claimDTO.UserPages = tuple.Item3.ToList();
            claimDTO.UserPageActions = tuple.Item4.ToList();

            if (claimDTO.user !=null)
            {


                return claimDTO;

            }
            else
            {
                return null;

            }

          
        }
    }
}
