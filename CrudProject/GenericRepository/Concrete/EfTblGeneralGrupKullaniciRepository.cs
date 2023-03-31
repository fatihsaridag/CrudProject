using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralGrupKullaniciRepository : EfGenericRepository<TblGeneralGrupKullanici>
    {
        public EfTblGeneralGrupKullaniciRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
