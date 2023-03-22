using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblDigiBIDatabaselerRepository : EfGenericRepository<TblDigiBidatabaseler>
    {
        public EfTblDigiBIDatabaselerRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
