using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRedDurumController : BaseController<TblGeneralRedDurum>
    {
        public TblGeneralRedDurumController(IGenericRepository<TblGeneralRedDurum> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
