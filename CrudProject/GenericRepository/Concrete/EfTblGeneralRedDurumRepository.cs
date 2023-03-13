using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedDurumRepository : EfGenericRepository<TblGeneralRedDurum>, ITblGeneralRedDurumRepository
    {
        public EfTblGeneralRedDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
