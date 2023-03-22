using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralOdemeTipRepository : EfGenericRepository<TblGeneralOdemeTip>
    {
        public EfTblGeneralOdemeTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
