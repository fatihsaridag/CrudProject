using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblDigiBIFavoriDosyalarRepository : EfGenericRepository<TblDigiBifavoriDosyalar>, ITblDigiBIFavoriDosyalarRepository
    {
        public EfTblDigiBIFavoriDosyalarRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
