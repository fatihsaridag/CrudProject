using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIslemKilitController : BaseController<TblGeneralIslemKilit>, IBaseController<TblGeneralIslemKilit>
    {
        public TblGeneralIslemKilitController(IGenericRepository<TblGeneralIslemKilit> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
