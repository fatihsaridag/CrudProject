using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralKullaniciGrupTanimController : BaseController<TblGeneralKullaniciGrupTanim>, IBaseController<TblGeneralKullaniciGrupTanim>
    {
        public TblGeneralKullaniciGrupTanimController(IGenericRepository<TblGeneralKullaniciGrupTanim> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
