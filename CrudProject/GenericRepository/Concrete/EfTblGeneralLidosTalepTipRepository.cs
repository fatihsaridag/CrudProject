using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralLidosTalepTipRepository : EfGenericRepository<TblGeneralLidosTalepTip> 
    {
        public EfTblGeneralLidosTalepTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
