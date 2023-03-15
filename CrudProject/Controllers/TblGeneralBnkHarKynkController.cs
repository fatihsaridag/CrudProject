using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralBnkHarKynkController : BaseController<TblGeneralBnkHarKynk>, IBaseController<TblGeneralBnkHarKynk>
    {
        public TblGeneralBnkHarKynkController(IGenericRepository<TblGeneralBnkHarKynk> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
