using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralKullaniciGrupTanimRepository : EfGenericRepository<TblGeneralKullaniciGrupTanim>
    {
        public EfTblGeneralKullaniciGrupTanimRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
