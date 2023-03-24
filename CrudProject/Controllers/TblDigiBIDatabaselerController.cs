using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblDigiBIDatabaselerController : BaseController<TblDigiBidatabaseler>
    {
        public TblDigiBIDatabaselerController(IGenericRepository<TblDigiBidatabaseler> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
