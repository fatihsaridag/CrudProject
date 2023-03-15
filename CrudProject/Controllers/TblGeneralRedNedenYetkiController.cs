using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRedNedenYetkiController : BaseController<TblGeneralRedNedenYetki>, IBaseController<TblGeneralRedNedenYetki>
    {
        public TblGeneralRedNedenYetkiController(IGenericRepository<TblGeneralRedNedenYetki> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
