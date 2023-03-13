using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralRedNedenYetkiRepository : EfGenericRepository<TblGeneralRedNedenYetki>, ITblGeneralRedNedenYetkiRepository
    {
        public EfTblGeneralRedNedenYetkiRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
