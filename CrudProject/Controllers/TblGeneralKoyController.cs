using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralKoyController : BaseController<TblGeneralKoy>
    {
        public TblGeneralKoyController(IGenericRepository<TblGeneralKoy> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
