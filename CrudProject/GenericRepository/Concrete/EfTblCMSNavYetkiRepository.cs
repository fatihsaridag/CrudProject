using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblCMSNavYetkiRepository : EfGenericRepository<TblCmsnavYetki>
    {
        public EfTblCMSNavYetkiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
    