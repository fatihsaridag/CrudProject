using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralEFatMukellefMailRepository : EfGenericRepository<TblGeneralEfatMukellefMail> 
    {
        public EfTblGeneralEFatMukellefMailRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
