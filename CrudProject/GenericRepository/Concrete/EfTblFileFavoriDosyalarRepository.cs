using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblFileFavoriDosyalarRepository : EfGenericRepository<TblFileFavoriDosyalar> , ITblFileFavoriDosyalarRepository
    {
        public EfTblFileFavoriDosyalarRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
