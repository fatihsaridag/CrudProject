using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIslemTipiRepository : EfGenericRepository<TblGeneralIslemTipi>, ITblGeneralIslemTipiRepository
    {
        public EfTblGeneralIslemTipiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
