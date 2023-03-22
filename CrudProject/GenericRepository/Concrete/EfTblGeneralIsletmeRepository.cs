using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIsletmeRepository : EfGenericRepository<TblGeneralIsletme>
    {
        public EfTblGeneralIsletmeRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
