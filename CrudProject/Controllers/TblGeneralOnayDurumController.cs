using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralOnayDurumController : BaseController<TblGeneralOnayDurum>, IBaseController<TblGeneralOnayDurum>
    {
        public TblGeneralOnayDurumController(IGenericRepository<TblGeneralOnayDurum> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
