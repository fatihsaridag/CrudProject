using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralLidosDurumRepository : EfGenericRepository<TblGeneralLidosDurum>
    {
        public EfTblGeneralLidosDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
