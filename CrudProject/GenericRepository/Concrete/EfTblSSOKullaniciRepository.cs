using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOKullaniciRepository : EfGenericRepository<TblSsokullanici> , ITblSSOKullaniciRepository
    {
        public EfTblSSOKullaniciRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
