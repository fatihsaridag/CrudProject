using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedDurumRepository : EfGenericRepository<TblGeneralRedDurum>
    {
        public EfTblGeneralRedDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
