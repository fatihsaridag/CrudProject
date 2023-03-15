using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralDilController : BaseController<TblGeneralDil>, IBaseController<TblGeneralDil>
    {
        public TblGeneralDilController(IGenericRepository<TblGeneralDil> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
