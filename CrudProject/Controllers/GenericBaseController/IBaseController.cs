using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers.GenericBaseController
{
    public interface IBaseController<TEntity>
    {
        Task<IActionResult> CreateEntity(TEntity entity);
        Task<IActionResult> UpdateEntity(TEntity entity);
        Task<IActionResult> DeleteEntity(int id);
        Task<IActionResult> Index();
        Task<IActionResult> GetEntityById(int id);
    }
}
