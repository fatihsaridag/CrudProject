using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSocialFeedRepository : EfGenericRepository<TblSocialFeedKisi>
    {
        public EfTblSocialFeedRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
