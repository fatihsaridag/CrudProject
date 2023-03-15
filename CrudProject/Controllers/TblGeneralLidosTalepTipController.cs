using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralLidosTalepTipController : BaseController<TblGeneralLidosTalepTip>, IBaseController<TblGeneralLidosTalepTip>
    {
        public TblGeneralLidosTalepTipController(IGenericRepository<TblGeneralLidosTalepTip> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
