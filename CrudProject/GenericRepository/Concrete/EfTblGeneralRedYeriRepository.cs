using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedYeriRepository : EfGenericRepository<TblGeneralRedYeri>
    {
        public EfTblGeneralRedYeriRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
