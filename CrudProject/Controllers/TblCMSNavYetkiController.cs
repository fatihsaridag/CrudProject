using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblCMSNavYetkiController : BaseController<TblCmsnavYetki>
    {
        public TblCMSNavYetkiController(IGenericRepository<TblCmsnavYetki> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
