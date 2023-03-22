using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRedDurumYetkiController : BaseController<TblGeneralRedDurumYetki>
    {
        public TblGeneralRedDurumYetkiController(IGenericRepository<TblGeneralRedDurumYetki> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
