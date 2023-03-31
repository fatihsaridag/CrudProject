using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralFavorilerRepository : EfGenericRepository<TblGeneralFavoriler>
    {
        public EfTblGeneralFavorilerRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
