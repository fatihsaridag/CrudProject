using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers.GenericBaseController
{
    public interface IBaseController<TEntity>
    {
        IActionResult CreateEntity(TEntity entity);
        IActionResult UpdateEntity(TEntity entity);
        IActionResult UpdateEntity(int id);
        IActionResult DeleteEntity(int id);
        IActionResult GetAllEntity();
        IActionResult GetEntityById(int id);
    }
}
