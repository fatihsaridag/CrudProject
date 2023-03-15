using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblCmsVersionController : BaseController<TblCmsVersion>, IBaseController<TblCmsVersion>
    {
        public TblCmsVersionController(IGenericRepository<TblCmsVersion> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
