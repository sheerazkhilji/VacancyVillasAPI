using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VacancyVillasClassLibrary;

namespace ATSClassLibrary.DTOLibraries
{
  public  class ClaimDTO
    {
        public  UserManagment user { get; set; }


        public List<UserModule> userModules { get; set; }


        public List<UserPages> UserPages { get; set; }

        public List<UserPageAction> UserPageActions { get; set; }


    }


    public class UserModule
    {

        public int? ModuleId { get; set; }
        public string ModuleName { get; set; }

        public bool IsActive { get; set; }

    }


    public class UserPages
    {

        public int? PageId { get; set; }
        public string PageName { get; set; }

        public bool IsActive { get; set; }

    }


    public class UserPageAction
    {

        public int? PageActionId { get; set; }
        public string PageActionName { get; set; }

        public bool IsActive { get; set; }

    }




}
