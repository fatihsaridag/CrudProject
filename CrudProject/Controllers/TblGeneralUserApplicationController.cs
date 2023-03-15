using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralUserApplicationController : BaseController<TblGeneralUserApplication>, IBaseController<TblGeneralUserApplication>
    {
        public TblGeneralUserApplicationController(IGenericRepository<TblGeneralUserApplication> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
