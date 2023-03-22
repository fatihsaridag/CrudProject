using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIsletmeController : BaseController<TblGeneralIsletme>
    {
        public TblGeneralIsletmeController(IGenericRepository<TblGeneralIsletme> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
