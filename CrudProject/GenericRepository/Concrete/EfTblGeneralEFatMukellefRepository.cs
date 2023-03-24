using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralEFatMukellefRepository : EfGenericRepository<TblGeneralEfatMukellef> , ITblGeneralEFatMukellefRepository
    {
        public EfTblGeneralEFatMukellefRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
