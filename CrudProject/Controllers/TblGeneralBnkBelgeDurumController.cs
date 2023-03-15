using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralBnkBelgeDurumController : BaseController<TblGeneralBnkBelgeDurum>, IBaseController<TblGeneralBnkBelgeDurum>
    {
        public TblGeneralBnkBelgeDurumController(IGenericRepository<TblGeneralBnkBelgeDurum> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
