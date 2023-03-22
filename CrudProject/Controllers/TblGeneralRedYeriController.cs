using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRedYeriController : BaseController<TblGeneralRedYeri>
    {
        public TblGeneralRedYeriController(IGenericRepository<TblGeneralRedYeri> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
