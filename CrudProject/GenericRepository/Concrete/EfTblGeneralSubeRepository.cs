using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralSubeRepository : EfGenericRepository<TblGeneralSube>
    {
        public EfTblGeneralSubeRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
