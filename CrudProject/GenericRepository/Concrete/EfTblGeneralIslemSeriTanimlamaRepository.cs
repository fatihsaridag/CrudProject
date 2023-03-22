using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIslemSeriTanimlamaRepository : EfGenericRepository<TblGeneralIslemSeriTanimlama>
    {
        public EfTblGeneralIslemSeriTanimlamaRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
