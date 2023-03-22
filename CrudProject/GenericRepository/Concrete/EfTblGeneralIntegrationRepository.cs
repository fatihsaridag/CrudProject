using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIntegrationRepository : EfGenericRepository<TblGeneralIntegration>
    {
        public EfTblGeneralIntegrationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
