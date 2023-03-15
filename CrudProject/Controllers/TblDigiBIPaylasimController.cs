using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblDigiBIPaylasimController : BaseController<TblDigiBipaylasim>, IBaseController<TblDigiBipaylasim>
    {
        public TblDigiBIPaylasimController(IGenericRepository<TblDigiBipaylasim> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
