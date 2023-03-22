using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIsletmeApplicationController : BaseController<TblGeneralIsletmeApplication>
    {
        public TblGeneralIsletmeApplicationController(IGenericRepository<TblGeneralIsletmeApplication> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
