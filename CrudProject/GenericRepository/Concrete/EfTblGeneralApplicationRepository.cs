using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralApplicationRepository : EfGenericRepository<TblGeneralApplication> , ITblGeneralApplicationRepository
    {
        public EfTblGeneralApplicationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
