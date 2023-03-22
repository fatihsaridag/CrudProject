using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedNedenYeriRepository : EfGenericRepository<TblGeneralRedNedenYeri>
    {
        public EfTblGeneralRedNedenYeriRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
