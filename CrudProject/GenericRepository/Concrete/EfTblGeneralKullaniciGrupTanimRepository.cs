using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralKullaniciGrupTanimRepository : EfGenericRepository<TblGeneralKullaniciGrupTanim>, ITblGeneralKullaniciGrupTanimRepository
    {
        public EfTblGeneralKullaniciGrupTanimRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
