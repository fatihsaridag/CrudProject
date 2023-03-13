using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblOptionsRepository : EfGenericRepository<TblOption>, ITblOptionsRepository
    {
        public EfTblOptionsRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
