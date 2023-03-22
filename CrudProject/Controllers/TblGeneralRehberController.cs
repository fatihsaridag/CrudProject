using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRehberController : BaseController<TblGeneralRehber>
    { 
        public TblGeneralRehberController(IGenericRepository<TblGeneralRehber> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
