using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblOptionsRepository : EfGenericRepository<TblOption>
    {
        public EfTblOptionsRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
