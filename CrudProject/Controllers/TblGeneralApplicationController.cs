using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralApplicationController : BaseController<TblGeneralApplication>, IBaseController<TblGeneralApplication>
    {
        public TblGeneralApplicationController(IGenericRepository<TblGeneralApplication> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
