using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralLidosElusTipRepository : EfGenericRepository<TblGeneralLidosElusTip>, ITblGeneralLidosElusTipRepository
    {
        public EfTblGeneralLidosElusTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
