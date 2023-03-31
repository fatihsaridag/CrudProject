using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralEFatMukellefRepository : EfGenericRepository<TblGeneralEfatMukellef> 
    {
        public EfTblGeneralEFatMukellefRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
