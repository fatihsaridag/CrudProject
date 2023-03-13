using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBnkHarTipRepository : EfGenericRepository<TblGeneralBnkHarTip>, ITblGeneralBnkHarTipRepository
    {
        public EfTblGeneralBnkHarTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
