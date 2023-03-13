using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblDigiBIDosyaSistemiRepository : EfGenericRepository<TblDigiBidosyaSistemi>, ITblDigiBIDosyaSistemiRepository
    {
        public EfTblDigiBIDosyaSistemiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
