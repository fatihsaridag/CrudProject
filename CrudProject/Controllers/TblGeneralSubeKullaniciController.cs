using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralSubeKullaniciController : BaseController<TblGeneralSubeKullanici>, IBaseController<TblGeneralSubeKullanici>
    {
        public TblGeneralSubeKullaniciController(IGenericRepository<TblGeneralSubeKullanici> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
