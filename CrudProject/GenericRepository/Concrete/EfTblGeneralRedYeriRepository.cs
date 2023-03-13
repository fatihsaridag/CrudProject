using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedYeriRepository : EfGenericRepository<TblGeneralRedYeri>, ITblGeneralRedYeriRepository
    {
        public EfTblGeneralRedYeriRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
