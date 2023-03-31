using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBnkHarKynkRepository : EfGenericRepository<TblGeneralBnkHarKynk> 
    {
        public EfTblGeneralBnkHarKynkRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
