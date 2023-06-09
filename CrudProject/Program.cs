using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;

namespace CrudProject
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
            ConfigurationManager _configuration = builder.Configuration;

            // Add services to the container.
            builder.Services.AddControllersWithViews().AddRazorRuntimeCompilation();
            builder.Services.AddDbContext<OctaPullContext>(opts =>
            {
                opts.UseSqlServer(_configuration.GetConnectionString("SqlServer"));
            });

            builder.Services.AddScoped(typeof(IGenericRepository<>), typeof(EfGenericRepository<>));
            builder.Services.AddRazorPages().AddJsonOptions(options => 
            
                options.JsonSerializerOptions.PropertyNamingPolicy = null
           
            );
            builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

            JsonConvert.DefaultSettings = () => new JsonSerializerSettings
            {
                ReferenceLoopHandling = ReferenceLoopHandling.Serialize,
                PreserveReferencesHandling = PreserveReferencesHandling.Objects
            };


            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();


            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");

            app.Run();
        }
    }
}