using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSODavetRepository : EfGenericRepository<TblSsodavet>
    {
        public EfTblSSODavetRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
