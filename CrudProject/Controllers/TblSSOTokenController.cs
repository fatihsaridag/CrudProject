using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSOTokenController : BaseController<TblSsotoken>
    {
        public TblSSOTokenController(IGenericRepository<TblSsotoken> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
