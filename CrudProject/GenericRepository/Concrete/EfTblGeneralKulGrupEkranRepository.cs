using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralKulGrupEkranRepository : EfGenericRepository<TblGeneralKulGrupEkran>
    {
        public EfTblGeneralKulGrupEkranRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
