using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralVergiDairesiRepository : EfGenericRepository<TblGeneralVergiDairesi>, ITblGeneralVergiDairesiRepository
    {
        public EfTblGeneralVergiDairesiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
