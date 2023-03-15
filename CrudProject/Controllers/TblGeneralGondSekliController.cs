using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralGondSekliController : BaseController<TblGeneralGondSekli>, IBaseController<TblGeneralGondSekli>
    {
        public TblGeneralGondSekliController(IGenericRepository<TblGeneralGondSekli> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
