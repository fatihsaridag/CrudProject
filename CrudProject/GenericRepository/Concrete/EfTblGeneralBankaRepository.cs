using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBankaRepository : EfGenericRepository<TblGeneralBanka> , ITblGeneralBankaRepository
    {
        public EfTblGeneralBankaRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
