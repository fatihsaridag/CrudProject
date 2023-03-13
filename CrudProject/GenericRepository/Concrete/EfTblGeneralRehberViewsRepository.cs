using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRehberViewsRepository : EfGenericRepository<TblGeneralRehberView>, ITblGeneralRehberViewsRepository
    {
        public EfTblGeneralRehberViewsRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
