using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSocialLinkController : BaseController<TblSocialLink>
    {
        public TblSocialLinkController(IGenericRepository<TblSocialLink> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
