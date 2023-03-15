using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblCMSAppMenuController : BaseController<TblCmsappMenu>, IBaseController<TblCmsappMenu>
    {
        public TblCMSAppMenuController(IGenericRepository<TblCmsappMenu> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
