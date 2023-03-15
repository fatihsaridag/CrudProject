using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSODavetDetayController : BaseController<TblSsodavetDetay>, IBaseController<TblSsodavetDetay>
    {
        public TblSSODavetDetayController(IGenericRepository<TblSsodavetDetay> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
