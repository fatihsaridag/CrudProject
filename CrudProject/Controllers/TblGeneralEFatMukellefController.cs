using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralEFatMukellefController : BaseController<TblGeneralEfatMukellef>, IBaseController<TblGeneralEfatMukellef>
    {
        public TblGeneralEFatMukellefController(IGenericRepository<TblGeneralEfatMukellef> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
