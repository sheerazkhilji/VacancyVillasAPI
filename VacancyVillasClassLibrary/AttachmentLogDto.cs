using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VacancyVillasClassLibrary
{

    public class AttachmentLogDto
    {
        public long Id { get; set; }
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string AttachmentName { get; set; }
        public string AttachmentUrl { get; set; }
        public string AttachmentExtension { get; set; }
        public string filebase64 { get; set; }
        public string TypeCode { get; set; }
    }
}
