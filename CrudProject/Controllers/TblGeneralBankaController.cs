using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralBankaController : BaseController<TblGeneralBanka>, IBaseController<TblGeneralBanka>
    {
        public TblGeneralBankaController(IGenericRepository<TblGeneralBanka> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
