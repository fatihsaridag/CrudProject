using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralLidosDurumRepository : EfGenericRepository<TblGeneralLidosDurum>, ITblGeneralLidosDurumRepository
    {
        public EfTblGeneralLidosDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
