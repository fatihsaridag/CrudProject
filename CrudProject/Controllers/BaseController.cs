using CrudProject.GenericRepository;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace CrudProject.Controllers
{
    public class BaseController<TEntity> : Controller, IBaseController<TEntity> where TEntity : class 
    {

        private readonly IGenericRepository<TEntity> _genericRepository;
        private readonly IRepositoryManager _repositoryManager;

        public BaseController( IGenericRepository<TEntity> genericRepository)
        {
            _genericRepository = genericRepository;
        }

        public IActionResult Create(TEntity entity)
        {
            if (ModelState.IsValid)
            {
                _genericRepository.Create(entity);
                _repositoryManager.Save();
                return View();
            }
            return View(entity);
        }

        public IActionResult Delete(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity != null)
            {
                _genericRepository.Delete(entity);
                _repositoryManager.Save();
                return View();
            }
            return View();
        }

        public IActionResult GetAll()
        {
            var entities = _genericRepository.GetAll();
            return View(entities);
        }

        public IActionResult GetById(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity is null)
            {
                return View();
            }
            return View(entity);
        }

        public IActionResult Update(TEntity entity)
        {
            if (ModelState.IsValid)
            {
                _genericRepository.Update(entity);
                _repositoryManager.Save();
                return View();
            }
            return View(entity);
        }
    }

}
