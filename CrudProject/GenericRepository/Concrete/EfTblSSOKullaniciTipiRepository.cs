using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOKullaniciTipiRepository : EfGenericRepository<TblSsokullaniciTipi>
    {
        public EfTblSSOKullaniciTipiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
