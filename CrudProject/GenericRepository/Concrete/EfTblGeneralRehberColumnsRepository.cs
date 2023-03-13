using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRehberColumnsRepository : EfGenericRepository<TblGeneralRehberColumn>, ITblGeneralRehberColumnsRepository
    {
        public EfTblGeneralRehberColumnsRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
