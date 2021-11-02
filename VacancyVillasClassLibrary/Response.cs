using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VacancyVillasClassLibrary
{
  public  class Response
    {
        public int Status { get; set; }
        public string ResponseMsg { get; set; }
        public object Data { get; set; }
        public string Token { get; set; }
    }
}
