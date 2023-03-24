using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblFileDosyaSistemiRepository : EfGenericRepository<TblFileDosyaSistemi> , ITblFileDosyaSistemiRepository
    {
        public EfTblFileDosyaSistemiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
