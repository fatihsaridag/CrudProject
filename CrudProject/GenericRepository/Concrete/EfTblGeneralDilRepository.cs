using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralDilRepository : EfGenericRepository<TblGeneralDil>
    {
        public EfTblGeneralDilRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
