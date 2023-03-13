using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblDigiBIDatabaselerRepository : EfGenericRepository<TblDigiBidatabaseler>, ITblDigiBIDatabaselerRepository
    {
        public EfTblDigiBIDatabaselerRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
