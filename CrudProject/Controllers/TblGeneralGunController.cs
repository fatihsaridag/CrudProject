using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralGunController : BaseController<TblGeneralGun>
    {
        public TblGeneralGunController(IGenericRepository<TblGeneralGun> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
