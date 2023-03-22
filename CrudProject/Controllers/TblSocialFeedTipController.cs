using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSocialFeedTipController : BaseController<TblSocialFeedTip>
    {
        public TblSocialFeedTipController(IGenericRepository<TblSocialFeedTip> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
