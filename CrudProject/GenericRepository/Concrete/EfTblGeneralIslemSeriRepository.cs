using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIslemSeriRepository : EfGenericRepository<TblGeneralIslemSeri>
    {
        public EfTblGeneralIslemSeriRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
