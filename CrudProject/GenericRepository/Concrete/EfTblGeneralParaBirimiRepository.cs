using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralParaBirimiRepository : EfGenericRepository<TblGeneralParaBirimi>
    {
        public EfTblGeneralParaBirimiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
