using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSocialFeedRepository : EfGenericRepository<TblSocialFeedKisi>, ITblSocialFeedKisiRepository
    {
        public EfTblSocialFeedRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
