using CrudProject.Models;

namespace CrudProject.ViewModels
{
    public class TblGeneralFirmaViewModel
    {
        public IEnumerable<TblGeneralFirma> TblGeneralFirma { get; set; }
        public IEnumerable<TblGeneralIsletme> TblGeneralIsletme { get; set; }
        public IEnumerable<TblGeneralUlke> TblGeneralUlke { get; set; }
        public IEnumerable<TblGeneralIl> TblGeneralIl { get; set; }
        public IEnumerable<TblGeneralIlce> TblGeneralIlce { get; set; }
        public IEnumerable<TblGeneralKoy> TblGeneralKoy { get; set; }
    }
}
