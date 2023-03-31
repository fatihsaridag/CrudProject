using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralApplicationRepository : EfGenericRepository<TblGeneralApplication>     
    {
        public EfTblGeneralApplicationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
