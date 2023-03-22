using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralUserApplicationRepository : EfGenericRepository<TblGeneralUserApplication>
    {
        public EfTblGeneralUserApplicationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
