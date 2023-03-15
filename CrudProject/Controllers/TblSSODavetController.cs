using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSODavetController : BaseController<TblSocialLink>, IBaseController<TblSocialLink>
    {
        public TblSSODavetController(IGenericRepository<TblSocialLink> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
