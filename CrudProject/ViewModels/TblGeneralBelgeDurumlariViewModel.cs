using CrudProject.Models;

namespace CrudProject.ViewModels
{
    public class TblGeneralBelgeDurumlariViewModel
    {
        public IEnumerable<TblGeneralBelgeDurumlari> TblGeneralBelgeDurumlari { get; set; }
        public IEnumerable<TblGeneralIslemTipi> TblGeneralIslemTipi { get; set; }
    }
}
