using CrudProject.Models;

namespace CrudProject.ViewModels
{
    public class TblGeneralFavorilerViewModel
    {
        public IEnumerable<TblGeneralFavoriler> TblGeneralFavorilers { get; set; }
        public IEnumerable<TblGeneralIsletme> TblGeneralIsletmes { get; set; }
        public IEnumerable<TblGeneralFirma> TblGeneralFirmas { get; set; }
        public IEnumerable<TblGeneralSube> TblGeneralSubes { get; set; }
        public IEnumerable<TblGeneralSubeKullanici> TblGeneralSubeKullanici { get; set; }

    }
}
