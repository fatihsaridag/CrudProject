using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralLidosElusTipRepository : EfGenericRepository<TblGeneralLidosElusTip>
    {
        public EfTblGeneralLidosElusTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
