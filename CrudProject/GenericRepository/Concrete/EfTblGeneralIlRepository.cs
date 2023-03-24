using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIlRepository : EfGenericRepository<TblGeneralIl> , ITblGeneralIlRepository
    {
        public EfTblGeneralIlRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
