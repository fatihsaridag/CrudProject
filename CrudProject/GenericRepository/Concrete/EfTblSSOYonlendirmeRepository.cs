using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSSOYonlendirmeRepository : EfGenericRepository<TblSsoyonlendirme>
    {
        public EfTblSSOYonlendirmeRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
