using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOTokenRepository : EfGenericRepository<TblSsotoken>
    {
        public EfTblSSOTokenRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
