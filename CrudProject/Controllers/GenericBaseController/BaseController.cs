using CrudProject.GenericRepository;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace CrudProject.Controllers.GenericBaseController
{
    public class BaseController<TEntity> : Controller, IBaseController<TEntity> where TEntity : class
    {

        private readonly IGenericRepository<TEntity> _genericRepository;
        private readonly OctaPullContext _context;

        public BaseController(IGenericRepository<TEntity> genericRepository,OctaPullContext context)
        {
            _genericRepository = genericRepository;
            _context = context;
        }

        public IActionResult CreateEntity(TEntity entity)
        {
            if (ModelState.IsValid)
            {
                _genericRepository.Create(entity);
                return View();
            }
            return View(entity);
        }

        public IActionResult DeleteEntity(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity != null)
            {
                _genericRepository.Delete(entity);
                _context.SaveChanges();
                return RedirectToAction("GetAllEntity");
            }
            return View();
        }

        public IActionResult GetAllEntity()
        {
            var entities = _genericRepository.GetAll();
            return View(entities);
        }

        public IActionResult GetEntityById(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity is null)
            {
                return View();
            }
            return View(entity);
        }


        [HttpGet]
        public IActionResult UpdateEntity(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity != null)
            {
                return View(entity);

            }
            return RedirectToAction("GetAll");
        }


        [HttpPost]
        public IActionResult UpdateEntity(TEntity entity)
        {
            if (ModelState.IsValid)
            {
                _genericRepository.Update(entity);
                _context.SaveChanges();
                return RedirectToAction("GetAllEntity");
            }
            return View(entity);
        }
    }

}
