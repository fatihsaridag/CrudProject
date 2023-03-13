using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSODavetDetayRepository : EfGenericRepository<TblSsodavetDetay>, ITblSSODavetDetayRepository
    {
        public EfTblSSODavetDetayRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
