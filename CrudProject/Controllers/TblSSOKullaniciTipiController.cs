using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSOKullaniciTipiController : BaseController<TblSsokullaniciTipi>, IBaseController<TblSsokullaniciTipi>
    {
        public TblSSOKullaniciTipiController(IGenericRepository<TblSsokullaniciTipi> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
