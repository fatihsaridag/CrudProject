using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOKullaniciRepository : EfGenericRepository<TblSsokullanici>
    {
        public EfTblSSOKullaniciRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
