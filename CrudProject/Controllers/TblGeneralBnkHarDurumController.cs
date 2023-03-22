using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralBnkHarDurumController : BaseController<TblGeneralBnkHarDurum>
    {
        public TblGeneralBnkHarDurumController(IGenericRepository<TblGeneralBnkHarDurum> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
