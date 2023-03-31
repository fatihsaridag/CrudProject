using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblCMSAppNavigationRepository : EfGenericRepository<TblCmsappNavigation>
    {
        public EfTblCMSAppNavigationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
