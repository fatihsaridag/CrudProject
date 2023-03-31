using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblFileDosyaSistemiController : BaseController<TblFileDosyaSistemiController>
    {
        public TblFileDosyaSistemiController(IGenericRepository<TblFileDosyaSistemiController> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
