using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIntegrationRepository : EfGenericRepository<TblGeneralIntegration>, ITblGeneralIntegrationRepository
    {
        public EfTblGeneralIntegrationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
