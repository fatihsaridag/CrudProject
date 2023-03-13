using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIslemSeriRepository : EfGenericRepository<TblGeneralIslemSeri>, ITblGeneralIslemSeriRepository
    {
        public EfTblGeneralIslemSeriRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
