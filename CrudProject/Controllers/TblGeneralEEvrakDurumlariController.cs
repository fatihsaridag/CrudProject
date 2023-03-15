using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralEEvrakDurumlariController : BaseController<TblGeneralEevrakDurumlari>, IBaseController<TblGeneralEevrakDurumlari>
    {
        public TblGeneralEEvrakDurumlariController(IGenericRepository<TblGeneralEevrakDurumlari> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
