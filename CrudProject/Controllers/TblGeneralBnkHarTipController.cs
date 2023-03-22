using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralBnkHarTipController : BaseController<TblGeneralBnkHarTip>
    {
        public TblGeneralBnkHarTipController(IGenericRepository<TblGeneralBnkHarTip> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
