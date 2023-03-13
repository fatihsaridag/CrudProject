using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralLidosTalepTipRepository : EfGenericRepository<TblGeneralLidosTalepTip>, ITblGeneralLidosTalepTipRepository
    {
        public EfTblGeneralLidosTalepTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
