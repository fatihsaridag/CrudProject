using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBankaSubeRepository : EfGenericRepository<TblGeneralBankaSube>
    {
        public EfTblGeneralBankaSubeRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
