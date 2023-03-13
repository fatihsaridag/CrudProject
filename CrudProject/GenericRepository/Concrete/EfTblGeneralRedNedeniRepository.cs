using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedNedeniRepository : EfGenericRepository<TblGeneralRedNedeni>, ITblGeneralRedNedeniRepository
    {
        public EfTblGeneralRedNedeniRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
