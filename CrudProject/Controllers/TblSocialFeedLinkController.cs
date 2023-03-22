using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSocialFeedLinkController : BaseController<TblSocialFeedLink>
    {
        public TblSocialFeedLinkController(IGenericRepository<TblSocialFeedLink> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
