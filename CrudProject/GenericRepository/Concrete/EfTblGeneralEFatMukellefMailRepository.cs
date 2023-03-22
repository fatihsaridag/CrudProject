using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralEFatMukellefMailRepository : EfGenericRepository<TblGeneralEfatMukellef>
    {
        public EfTblGeneralEFatMukellefMailRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
