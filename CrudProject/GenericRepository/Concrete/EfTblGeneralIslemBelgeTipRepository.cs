using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIslemBelgeTipRepository : EfGenericRepository<TblGeneralIslemBelgeTip>
    {
        public EfTblGeneralIslemBelgeTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
