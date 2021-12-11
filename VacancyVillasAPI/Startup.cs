using ATS.DBManager;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using VacancyVillasAPI.Service;

namespace VacancyVillasAPI
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            services.AddControllers();


            services.AddCors(options =>
            {
                options.AddPolicy("defaultcorspolicy", builder =>
                {
                    //builder.WithOrigins("*").WithHeaders("*").WithMethods("*");

                    builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();

                }
                    );


            });

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "VacancyVillasAPI", Version = "v1" });
            });




            services.AddTransient<IDapper, Dapperr>();
            services.AddTransient<IAuthenticationServices, AuthenticationServices>();

            services.AddTransient<IUserService, UserService>();

            services.AddTransient<IVendorServices, VendorServices>();
            services.AddTransient<ICommonService, CommonService>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "VacancyVillasAPI v1"));
            }

            app.UseHttpsRedirection();
            app.UseCors("defaultcorspolicy");
            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
            app.UseStaticFiles(); // For the wwwroot folder  
            app.UseStaticFiles(new StaticFileOptions
            {
                FileProvider = new PhysicalFileProvider(Path.Combine(Directory.GetCurrentDirectory(), "wwwroot")),
                RequestPath = "/wwwroot"
            });
        }
    }
}
