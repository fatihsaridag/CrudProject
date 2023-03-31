using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralGondSekliRepository : EfGenericRepository<TblGeneralGondSekli> , ITblGeneralGondSekliRepository
    {
        public EfTblGeneralGondSekliRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
