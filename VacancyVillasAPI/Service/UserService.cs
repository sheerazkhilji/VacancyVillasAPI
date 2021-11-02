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

    public interface IUserService
    {
       public int AddUser(UserManagment obj);
        
       public int AddUpdate(UserManagment obj);
       public UserManagment GetById(int Id);
       public int  IsActive(int Id);



    }

    public class UserService : IUserService
    {
        private readonly IDapper _dapper;

        public UserService(IDapper dapper)
        {
            _dapper = dapper;
        }

        public int AddUpdate(UserManagment obj)
        {
            throw new NotImplementedException();
        }

        public int AddUser(UserManagment obj)
        {
            DynamicParameters parameters = new DynamicParameters();

            throw new NotImplementedException();


        }

        public UserManagment GetById(int Id)
        {
            throw new NotImplementedException();
        }

        public int IsActive(int Id)
        {
            throw new NotImplementedException();
        }
    }
}
