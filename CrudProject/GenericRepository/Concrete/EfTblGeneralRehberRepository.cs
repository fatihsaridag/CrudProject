using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRehberRepository : EfGenericRepository<TblGeneralRehber>, ITblGeneralRehberRepository
    {
        public EfTblGeneralRehberRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
