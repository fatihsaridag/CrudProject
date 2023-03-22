using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblDigiBIDatabaseDosyalarRepository : EfGenericRepository<TblDigiBidatabaseDosyalar>
    {
        public EfTblDigiBIDatabaseDosyalarRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
