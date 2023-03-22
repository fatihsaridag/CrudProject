using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSOHostController : BaseController<TblSsohost>
    {
        public TblSSOHostController(IGenericRepository<TblSsohost> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
