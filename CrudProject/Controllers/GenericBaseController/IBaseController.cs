using Microsoft.AspNetCore.Mvc;
using System.Net.Http.Formatting;

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
