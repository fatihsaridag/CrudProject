using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralEFatMukellefMailRepository : EfGenericRepository<TblGeneralEfatMukellefMail> , ITblGeneralEFatMukellefMailRepository
    {
        public EfTblGeneralEFatMukellefMailRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
