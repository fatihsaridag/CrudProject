using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRedNedeniController : BaseController<TblGeneralRedNedeni>
    {
        public TblGeneralRedNedeniController(IGenericRepository<TblGeneralRedNedeni> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
