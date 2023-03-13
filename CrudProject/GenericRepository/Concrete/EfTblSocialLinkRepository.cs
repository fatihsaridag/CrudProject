using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSocialLinkRepository : EfGenericRepository<TblSocialLink>, ITblSocialLinkRepository
    {
        public EfTblSocialLinkRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
