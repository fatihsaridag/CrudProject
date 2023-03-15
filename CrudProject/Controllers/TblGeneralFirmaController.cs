using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralFirmaController : BaseController<TblGeneralFirma>, IBaseController<TblGeneralFirma>
    {
        public TblGeneralFirmaController(IGenericRepository<TblGeneralFirma> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
