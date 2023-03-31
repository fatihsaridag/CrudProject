using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;

namespace CrudProject.Controllers
{
    public class TblSSODavetController : BaseController<TblSsodavet> 
    {
        public TblSSODavetController(IGenericRepository<TblSsodavet> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
