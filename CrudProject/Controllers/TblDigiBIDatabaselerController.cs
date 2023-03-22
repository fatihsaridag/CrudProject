using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblDigiBIPaylasimmController : BaseController<TblDigiBipaylasim>
    {
        public TblDigiBIPaylasimmController(IGenericRepository<TblDigiBipaylasim> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
