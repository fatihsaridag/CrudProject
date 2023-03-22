using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers.GenericBaseController
{
    public interface IBaseController<TEntity>
    {
        IActionResult Post(TEntity entity);
        IActionResult Put(TEntity entity);
        IActionResult Delete(long id);
        IActionResult Get();
        IActionResult GetEntityById(int id);
    }
}
