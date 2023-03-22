using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblDigiBIDosyaSistemiRepository : EfGenericRepository<TblDigiBidosyaSistemi>
    {
        public EfTblDigiBIDosyaSistemiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
