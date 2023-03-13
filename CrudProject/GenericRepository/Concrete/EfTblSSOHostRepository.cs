using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOHostRepository : EfGenericRepository<TblSsohost>, ITblSSOHostRepository
    {
        public EfTblSSOHostRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
