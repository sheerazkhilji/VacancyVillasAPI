using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http.Headers;
using VacancyVillasAPI.Service;
using VacancyVillasClassLibrary;

namespace VacancyVillasAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CommonController : ControllerBase
    {


        private readonly ICommonService _service;
        private readonly IConfiguration _configuration;
        public CommonController(ICommonService services, IConfiguration configuration)
        {
            _service = services;
            _configuration = configuration;

        }

        [HttpPost]
        [Route("Upload")]
        [AllowAnonymous]
        public ActionResult AddAttachment(List<AttachmentLogDto> attachmentLogs)
        {
            try
            {
                List<AttachmentLogDto> attachmentResult = _service.SaveAttachment(attachmentLogs);

                if (attachmentResult != null)
                {
                    string Domain = HttpContext.Request.Scheme + "://" + HttpContext.Request.Host + "/";

                    foreach (var attachment in attachmentResult)
                    {
                        attachment.AttachmentUrl = Domain + attachment.AttachmentUrl;
                    }
                    return Ok(attachmentResult);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return Ok(ex);
            }
        }


        [HttpPost]
        [Route("Upload1")]
        [AllowAnonymous]

        public string Upload_File()

        {

            string result = string.Empty;

            try

            {

                long size = 0;

                var file = Request.Form.Files;

                var filename = ContentDispositionHeaderValue

                                .Parse(file[0].ContentDisposition)

                                .FileName

                                .Trim('"');

                //string FilePath = hostingEnv.WebRootPath + $@"\Attachments\{ filename}";
                string path = @"wwwroot/Attachments/";
                filename = DateTime.UtcNow.ToString("yyyy-MM-dd hh-mm-ss") + "---" + filename;
                string filePath = path + filename;

                size += file[0].Length;

                using (FileStream fs = System.IO.File.Create(filePath))

                {

                    file[0].CopyTo(fs);

                    fs.Flush();

                }



                result = _configuration.GetSection("APIURL").Value.ToString()+filePath;

            }

            catch (Exception ex)

            {

                result = ex.Message;

            }



            return result;

        }
    }
}
