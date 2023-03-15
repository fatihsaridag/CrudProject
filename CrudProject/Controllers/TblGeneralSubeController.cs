using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralSubeController : BaseController<TblGeneralSube>, IBaseController<TblGeneralSube>
    {
        public TblGeneralSubeController(IGenericRepository<TblGeneralSube> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
