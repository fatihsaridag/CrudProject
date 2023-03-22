using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralOnayDurumRepository : EfGenericRepository<TblGeneralOnayDurum>
    {
        public EfTblGeneralOnayDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
