using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralBelgeDurumlariController : BaseController<TblGeneralBelgeDurumlari>
    {
        public TblGeneralBelgeDurumlariController(IGenericRepository<TblGeneralBelgeDurumlari> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
