using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralFavorilerController : BaseController<TblGeneralFavoriler>, IBaseController<TblGeneralFavoriler>
    {
        public TblGeneralFavorilerController(IGenericRepository<TblGeneralFavoriler> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
