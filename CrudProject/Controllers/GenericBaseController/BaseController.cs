using CrudProject.GenericRepository;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.Extensions.Caching.Memory;
using System.Net.Http.Formatting;

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

        public  IActionResult Post(TEntity entity)
        {
          
                _genericRepository.Create(entity);
                _context.SaveChanges();
                return Json(true);

        }

        public IActionResult Delete(long id)
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

        public IActionResult Get()
        {
            var entities = _genericRepository.GetAll();
            return Json(entities);
        }

        public IActionResult GetEntityById(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity is null)
            {
                return Json(false);
            }
            return Json(entity);
        }

        public IActionResult Put(TEntity entity)
        {

            _genericRepository.Update(entity);
            _context.SaveChanges();
            return Json(true);
        }
    }

}
