using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralKoyRepository : EfGenericRepository<TblGeneralKoy> , ITblGeneralKoyRepository
    {
        public EfTblGeneralKoyRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
