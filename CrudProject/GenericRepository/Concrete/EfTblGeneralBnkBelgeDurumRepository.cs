using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBnkBelgeDurumRepository : EfGenericRepository<TblGeneralBnkBelgeDurum> , ITblGeneralBnkBelgeDurumRepository
    {
        public EfTblGeneralBnkBelgeDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
