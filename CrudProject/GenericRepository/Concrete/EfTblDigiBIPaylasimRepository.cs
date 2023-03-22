using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblDigiBIPaylasimRepository : EfGenericRepository<TblDigiBipaylasim>
    {
        public EfTblDigiBIPaylasimRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
