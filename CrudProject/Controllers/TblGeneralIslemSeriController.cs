using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIslemSeriController : BaseController<TblGeneralIslemSeri>
    {
        public TblGeneralIslemSeriController(IGenericRepository<TblGeneralIslemSeri> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
