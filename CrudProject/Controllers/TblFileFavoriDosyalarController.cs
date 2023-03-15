using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblFileFavoriDosyalarController : BaseController<TblFileFavoriDosyalar>, IBaseController<TblFileFavoriDosyalar>
    {
        public TblFileFavoriDosyalarController(IGenericRepository<TblFileFavoriDosyalar> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
