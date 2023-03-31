using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBnkEftDurumRepository : EfGenericRepository<TblGeneralBnkEftDurum>
    {
        public EfTblGeneralBnkEftDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
