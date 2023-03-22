using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedDurumYetkiRepository : EfGenericRepository<TblGeneralRedDurum>
    {
        public EfTblGeneralRedDurumYetkiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
