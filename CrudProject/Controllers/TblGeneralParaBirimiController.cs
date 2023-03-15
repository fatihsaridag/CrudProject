using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralParaBirimiController : BaseController<TblGeneralParaBirimi>, IBaseController<TblGeneralParaBirimi>
    {
        public TblGeneralParaBirimiController(IGenericRepository<TblGeneralParaBirimi> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
