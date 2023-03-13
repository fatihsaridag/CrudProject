using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralFirmaRepository : EfGenericRepository<TblGeneralFirma>, ITblGeneralFirmaRepository
    {
        public EfTblGeneralFirmaRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
