using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBelgeDurumlariRepository : EfGenericRepository<TblGeneralBelgeDurumlari>
    {
        public EfTblGeneralBelgeDurumlariRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
