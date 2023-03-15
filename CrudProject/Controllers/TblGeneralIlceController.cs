using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIlceController : BaseController<TblGeneralIlce>, IBaseController<TblGeneralIlce>
    {
        public TblGeneralIlceController(IGenericRepository<TblGeneralIlce> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
