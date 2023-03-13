using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIlceRepository : EfGenericRepository<TblGeneralIlce>, IGenericRepository<TblGeneralIlce>
    {
        public EfTblGeneralIlceRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
