using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIslemKilitRepository : EfGenericRepository<TblGeneralIslemKilit>
    {
        public EfTblGeneralIslemKilitRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
