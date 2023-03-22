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

        private readonly IRepositoryManager _repositoryManager;

        public HomeController(IRepositoryManager repositoryManager)
        {
            _repositoryManager= repositoryManager;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult DataProtectionKeys()
        {
            return View();
        }

        public IActionResult TblGeneralApplications()
        {
            var datas = _repositoryManager.TblGeneralApplication.GetAll();
            return View(datas);
        }

      
    }
}