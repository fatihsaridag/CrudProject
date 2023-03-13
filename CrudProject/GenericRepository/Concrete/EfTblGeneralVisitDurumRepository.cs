using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralVisitDurumRepository : EfGenericRepository<TblGeneralVisitDurum>, ITblGeneralVisitDurumRepository
    {
        public EfTblGeneralVisitDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
