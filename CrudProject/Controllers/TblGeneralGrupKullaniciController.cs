using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralGrupKullaniciController : BaseController<TblGeneralGrupKullanici>
    {
        public TblGeneralGrupKullaniciController(IGenericRepository<TblGeneralGrupKullanici> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
