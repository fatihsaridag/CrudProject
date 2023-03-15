using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralVergiDairesiController : BaseController<TblGeneralVergiDairesi>, IBaseController<TblGeneralVergiDairesi>
    {
        public TblGeneralVergiDairesiController(IGenericRepository<TblGeneralVergiDairesi> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
