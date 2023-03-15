using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralBnkEftDurumController : BaseController<TblGeneralBnkEftDurum>, IBaseController<TblGeneralBnkEftDurum>
    {
        public TblGeneralBnkEftDurumController(IGenericRepository<TblGeneralBnkEftDurum> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
