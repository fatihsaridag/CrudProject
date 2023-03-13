using CrudProject.GenericRepository;
using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace CrudProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IRepositoryManager _repositoryManager;

        public HomeController(ILogger<HomeController> logger,  IRepositoryManager repositoryManager )
        {
            _logger = logger;
            _repositoryManager = repositoryManager;
        }

        public IActionResult Index()
        {
           var values=  _repositoryManager.DataProtectionKeys.GetAll();
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}