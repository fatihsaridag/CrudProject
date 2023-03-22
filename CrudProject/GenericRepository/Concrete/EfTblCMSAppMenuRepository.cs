using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblCMSAppMenuRepository : EfGenericRepository<TblCmsappMenu> , ITblCMSAppMenuRepository
    {
        public EfTblCMSAppMenuRepository(OctaPullContext context) : base(context)
        {

        }
    }
}
