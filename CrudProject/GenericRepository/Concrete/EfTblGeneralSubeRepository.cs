using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralSubeRepository : EfGenericRepository<TblGeneralSube> , ITblGeneralSubeRepository
    {
        public EfTblGeneralSubeRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
