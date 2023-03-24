using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralSubeKullaniciRepository : EfGenericRepository<TblGeneralSubeKullanici> , ITblGeneralSubeKullaniciRepository
    {
        public EfTblGeneralSubeKullaniciRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
