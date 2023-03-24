using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblCmsappMenusController : BaseController<TblCmsappMenu>
    {
        public TblCmsappMenusController(IGenericRepository<TblCmsappMenu> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
