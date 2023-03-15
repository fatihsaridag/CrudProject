using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRedNedenYeriController : BaseController<TblGeneralRedNedenYeri>, IBaseController<TblGeneralRedNedenYeri>
    {
        public TblGeneralRedNedenYeriController(IGenericRepository<TblGeneralRedNedenYeri> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
