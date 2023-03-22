using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralOdemeTipController : BaseController<TblGeneralOdemeTip>
    {
        public TblGeneralOdemeTipController(IGenericRepository<TblGeneralOdemeTip> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
