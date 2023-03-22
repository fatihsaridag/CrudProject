using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblCmsVersionRepository : EfGenericRepository<TblCmsVersion>
    {
        public EfTblCmsVersionRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
