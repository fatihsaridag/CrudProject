using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralDilRepository : EfGenericRepository<TblGeneralDil> , ITblGeneralDilRepository
    {
        public EfTblGeneralDilRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
