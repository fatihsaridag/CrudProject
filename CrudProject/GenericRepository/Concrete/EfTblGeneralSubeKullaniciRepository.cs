using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralSubeKullaniciRepository : EfGenericRepository<TblGeneralSubeKullanici>
    {
        public EfTblGeneralSubeKullaniciRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
