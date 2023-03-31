using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblFileDosyaSistemiRepository : EfGenericRepository<TblFileDosyaSistemi>
    {
        public EfTblFileDosyaSistemiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
