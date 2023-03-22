using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralModulRepository : EfGenericRepository<TblGeneralModul>
    {
        public EfTblGeneralModulRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
