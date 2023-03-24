using CrudProject.Models;

namespace CrudProject.ViewModels
{
    public class TblFileFavoriDosyalarViewModel
    {
         public IEnumerable<TblFileFavoriDosyalar> TblFileFavoriDosyalar { get; set; }
        public IEnumerable<TblFileDosyaSistemi> TblFileDosyaSsistemi { get; set; }
        public IEnumerable<TblGeneralFirma> TblGeneralFirma { get; set; }
        public IEnumerable<TblGeneralSube> TblGeneralSube { get; set; }
        public IEnumerable<TblSsokullanici> TblSsokullanici { get; set; }
        public IEnumerable<TblGeneralIsletme> TblGeneralIsletme { get; set; }

    }
}
