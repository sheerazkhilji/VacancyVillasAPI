using System;
using System.Collections.Generic;
using System.IO;
using VacancyVillasClassLibrary;

namespace VacancyVillasAPI.Service
{
  
        public interface ICommonService
        {


             List<AttachmentLogDto> SaveAttachment(List<AttachmentLogDto> attachments);
             string SaveAttachments(string UserName, System.IO.Stream fileStream, string FileType, string FileName);




        }

        public class CommonService : ICommonService
        {

            public List<AttachmentLogDto> SaveAttachment(List<AttachmentLogDto> attachments)
            {
                List<AttachmentLogDto> lstAttachment = new List<AttachmentLogDto>();
                foreach (var lstAttach in attachments)
                {
                    byte[] imageBytes = Convert.FromBase64String(lstAttach.filebase64);
                    MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
                    if (lstAttach.filebase64 != null)
                    {
                        String Imagepath = SaveAttachments(lstAttach.UserName, ms, lstAttach.AttachmentExtension, lstAttach.AttachmentName);
                        lstAttach.AttachmentUrl = Imagepath;
                        lstAttachment.Add(lstAttach);
                    }
                }
                return lstAttachment;
            }

            public string SaveAttachments(string UserName, System.IO.Stream fileStream, string FileType, string FileName)
            {
                string path = @"wwwroot/Attachments/";
                FileName = DateTime.UtcNow.ToString("yyyy-MM-dd hh-mm-ss") + "---" + FileName;
                string filePath = path + FileName;
                using (var stream = new FileStream(filePath, FileMode.Create))
                {
                    fileStream.CopyTo(stream);
                }
                string newFilePath = filePath;
                return newFilePath;
            }
        }
    
}
