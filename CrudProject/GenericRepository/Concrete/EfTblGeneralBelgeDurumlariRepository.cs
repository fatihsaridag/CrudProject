using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBelgeDurumlariRepository : EfGenericRepository<TblGeneralBelgeDurumlari> , ITblGeneralBelgeDurumlariRepository
    {
        public EfTblGeneralBelgeDurumlariRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
