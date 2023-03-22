using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSocialFeedLinkRepository : EfGenericRepository<TblSocialFeedLink>
    {
        public EfTblSocialFeedLinkRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
