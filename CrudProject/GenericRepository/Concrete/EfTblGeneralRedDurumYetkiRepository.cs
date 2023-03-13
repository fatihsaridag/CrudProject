using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedDurumYetkiRepository : EfGenericRepository<TblGeneralRedDurum>, ITblGeneralRedDurumRepository
    {
        public EfTblGeneralRedDurumYetkiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
