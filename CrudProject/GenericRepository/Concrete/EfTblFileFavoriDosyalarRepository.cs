using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblFileFavoriDosyalarRepository : EfGenericRepository<TblFileFavoriDosyalar>
    {
        public EfTblFileFavoriDosyalarRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
