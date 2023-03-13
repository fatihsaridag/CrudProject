using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOTokenRepository : EfGenericRepository<TblSsotoken>, ITblSSOTokenRepository
    {
        public EfTblSSOTokenRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
