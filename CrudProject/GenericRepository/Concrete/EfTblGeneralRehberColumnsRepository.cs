using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRehberColumnsRepository : EfGenericRepository<TblGeneralRehberColumn>
    {
        public EfTblGeneralRehberColumnsRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
