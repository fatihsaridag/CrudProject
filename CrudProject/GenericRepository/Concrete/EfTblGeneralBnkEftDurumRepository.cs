using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBnkEftDurumRepository : EfGenericRepository<TblGeneralBnkBelgeDurum>
    {
        public EfTblGeneralBnkEftDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
