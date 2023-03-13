using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOIzinRepository : EfGenericRepository<TblSsoizin>, ITblSSOIzinRepository
    {
        public EfTblSSOIzinRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
