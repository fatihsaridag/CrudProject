using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralUlkeRepository : EfGenericRepository<TblGeneralUlke> 
    {
        public EfTblGeneralUlkeRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
