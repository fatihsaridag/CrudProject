using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOHostRepository : EfGenericRepository<TblSsohost>
    {
        public EfTblSSOHostRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
