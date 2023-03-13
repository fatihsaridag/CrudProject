using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralUserApplicationRepository : EfGenericRepository<TblGeneralUserApplication>, ITblGeneralUserApplicationRepository
    {
        public EfTblGeneralUserApplicationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
