using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralParaBirimiRepository : EfGenericRepository<TblGeneralParaBirimi>, ITblGeneralParaBirimiRepository
    {
        public EfTblGeneralParaBirimiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
