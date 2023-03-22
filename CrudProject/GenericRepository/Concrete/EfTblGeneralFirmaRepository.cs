using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralFirmaRepository : EfGenericRepository<TblGeneralFirma>
    {
        public EfTblGeneralFirmaRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
