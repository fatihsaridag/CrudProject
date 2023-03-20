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

 

        [HttpPost]
        public  async Task<IActionResult> CreateEntity(TEntity entity)
        {
            if (ModelState.IsValid)  
            {
                _genericRepository.Create(entity);
                return Json(true);
            }
            return Json(false);

        }

        public async Task<IActionResult> DeleteEntity(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity != null)
            {
                _genericRepository.Delete(entity);
                _context.SaveChanges();
                return Json(true);
            }
            return Json(false);

        }
            
        public async Task<IActionResult> Index()
        {
            var entities = _genericRepository.GetAll();
            return View(entities);
        }

        public async Task<IActionResult> GetEntityById(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity is null)
            {
                return Json(false);
            }
            return Json(entity);
        }

        [HttpPost]
        public async Task<IActionResult> UpdateEntity(TEntity entity)
        {
            if (ModelState.IsValid)
            {
                _genericRepository.Update(entity);
                _context.SaveChanges();
                return Json(true);
            }
            return Json(false);
        }
    }

}
