using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralLidosDurumController : BaseController<TblGeneralLidosDurum>, IBaseController<TblGeneralLidosDurum>
    {
        public TblGeneralLidosDurumController(IGenericRepository<TblGeneralLidosDurum> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
