using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIlRepository : EfGenericRepository<TblGeneralIl> 
    {
        public EfTblGeneralIlRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
