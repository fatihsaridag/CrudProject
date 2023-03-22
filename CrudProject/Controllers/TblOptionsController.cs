using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblOptionsController : BaseController<TblOption>
    {
        public TblOptionsController(IGenericRepository<TblOption> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
