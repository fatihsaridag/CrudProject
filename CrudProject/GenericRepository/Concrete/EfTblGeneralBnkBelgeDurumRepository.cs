using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBnkBelgeDurumRepository : EfGenericRepository<TblGeneralBnkBelgeDurum>
    {
        public EfTblGeneralBnkBelgeDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
