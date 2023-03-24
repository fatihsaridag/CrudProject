using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblCMSAppNavigationController : BaseController<TblCmsappNavigation>
    {
        public TblCMSAppNavigationController(IGenericRepository<TblCmsappNavigation> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
