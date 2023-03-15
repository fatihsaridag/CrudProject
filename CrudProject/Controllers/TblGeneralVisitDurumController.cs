using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralVisitDurumController : BaseController<TblGeneralVisitDurum>, IBaseController<TblGeneralVisitDurum>
    {
        public TblGeneralVisitDurumController(IGenericRepository<TblGeneralVisitDurum> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
