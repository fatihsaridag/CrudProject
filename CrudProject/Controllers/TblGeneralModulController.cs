using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralModulController : BaseController<TblGeneralModul>
    {
        public TblGeneralModulController(IGenericRepository<TblGeneralModul> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
