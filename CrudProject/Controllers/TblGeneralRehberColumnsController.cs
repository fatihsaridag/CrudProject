using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralRehberColumnsController : BaseController<TblGeneralRehberColumn>
    {
        public TblGeneralRehberColumnsController(IGenericRepository<TblGeneralRehberColumn> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
