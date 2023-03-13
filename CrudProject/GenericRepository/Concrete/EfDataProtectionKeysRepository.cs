using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfDataProtectionKeysRepository : EfGenericRepository<DataProtectionKey>, IDataProtectionKeysRepository
    {
        public EfDataProtectionKeysRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
