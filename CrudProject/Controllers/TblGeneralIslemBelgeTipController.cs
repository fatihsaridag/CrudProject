using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIslemBelgeTipController : BaseController<TblGeneralIslemBelgeTip>, IBaseController<TblGeneralIslemBelgeTip>
    {
        public TblGeneralIslemBelgeTipController(IGenericRepository<TblGeneralIslemBelgeTip> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
