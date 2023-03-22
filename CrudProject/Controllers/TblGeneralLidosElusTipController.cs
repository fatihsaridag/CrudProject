using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralLidosElusTipController : BaseController<TblGeneralLidosElusTip>
    {
        public TblGeneralLidosElusTipController(IGenericRepository<TblGeneralLidosElusTip> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
