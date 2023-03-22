using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;

namespace CrudProject.Controllers
{
    public class TblCMSAppMenuController : BaseController<TblCmsappMenu>
    {
        public TblCMSAppMenuController(IGenericRepository<TblCmsappMenu> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
