using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIlController : BaseController<TblGeneralIl>
    {
        public TblGeneralIlController(IGenericRepository<TblGeneralIl> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
