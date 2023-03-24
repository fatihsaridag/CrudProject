using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIlceRepository : EfGenericRepository<TblGeneralIlce> , ITblGeneralIlceRepository
    {
        public EfTblGeneralIlceRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
