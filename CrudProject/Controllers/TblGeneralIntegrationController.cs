using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIntegrationController : BaseController<TblGeneralIntegration>, IBaseController<TblGeneralIntegration>
    {
        public TblGeneralIntegrationController(IGenericRepository<TblGeneralIntegration> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
