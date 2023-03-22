using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralKulGrupEkranController : BaseController<TblGeneralKulGrupEkran>
    {
        public TblGeneralKulGrupEkranController(IGenericRepository<TblGeneralKulGrupEkran> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
