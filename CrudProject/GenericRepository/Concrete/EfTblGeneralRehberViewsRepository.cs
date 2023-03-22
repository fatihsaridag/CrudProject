using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRehberViewsRepository : EfGenericRepository<TblGeneralRehberView>
    {
        public EfTblGeneralRehberViewsRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
