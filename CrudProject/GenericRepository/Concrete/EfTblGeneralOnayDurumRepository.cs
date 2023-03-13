using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralOnayDurumRepository : EfGenericRepository<TblGeneralOnayDurum>, ITblGeneralOnayDurumRepository
    {
        public EfTblGeneralOnayDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
