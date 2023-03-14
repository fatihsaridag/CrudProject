using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public interface IBaseController<TEntity>
    {
        IActionResult Create(TEntity entity);
        IActionResult Update(TEntity entity);
        IActionResult Delete(int id);
        IActionResult GetAll();
        IActionResult GetById(int id);
    }
}
