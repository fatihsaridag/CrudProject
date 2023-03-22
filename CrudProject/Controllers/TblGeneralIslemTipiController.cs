using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIslemTipiController : BaseController<TblGeneralIslemTipi>
    {
        public TblGeneralIslemTipiController(IGenericRepository<TblGeneralIslemTipi> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
