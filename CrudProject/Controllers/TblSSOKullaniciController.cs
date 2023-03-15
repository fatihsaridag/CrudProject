using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSOKullaniciController : BaseController<TblSsokullanici>, IBaseController<TblSsokullanici>
    {
        public TblSSOKullaniciController(IGenericRepository<TblSsokullanici> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
