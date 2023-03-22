using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralKullaniciEkAlanRepository : EfGenericRepository<TblGeneralKullaniciEkAlan>
    {
        public EfTblGeneralKullaniciEkAlanRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
