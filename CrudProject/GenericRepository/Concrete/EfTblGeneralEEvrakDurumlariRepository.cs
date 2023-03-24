using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralEEvrakDurumlariRepository : EfGenericRepository<TblGeneralEevrakDurumlari> , ITblGeneralEEvrakDurumlariRepository
    {
        public EfTblGeneralEEvrakDurumlariRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
