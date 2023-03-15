using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblCMSNavYetkiController : BaseController<TblCmsappNavigation>, IBaseController<TblCmsappNavigation>
    {
        public TblCMSNavYetkiController(IGenericRepository<TblCmsappNavigation> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
