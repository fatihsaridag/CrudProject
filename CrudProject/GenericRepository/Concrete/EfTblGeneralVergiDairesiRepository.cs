using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralVergiDairesiRepository : EfGenericRepository<TblGeneralVergiDairesi>
    {
        public EfTblGeneralVergiDairesiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
    