using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSOYonlendirmeController : BaseController<TblSsoyonlendirme>  
    {
        public TblSSOYonlendirmeController(IGenericRepository<TblSsoyonlendirme> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
