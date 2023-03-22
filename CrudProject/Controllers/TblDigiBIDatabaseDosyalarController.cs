using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblDigiBIDatabaseDosyalarController : BaseController<TblDigiBidatabaseDosyalar>
    {
        public TblDigiBIDatabaseDosyalarController(IGenericRepository<TblDigiBidatabaseDosyalar> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
