using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblFileDosyaSistemi
    {
        public TblFileDosyaSistemi()
        {
            InverseUstDosya = new HashSet<TblFileDosyaSistemi>();
            TblFileFavoriDosyalars = new HashSet<TblFileFavoriDosyalar>();
        }

        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long IsletmeId { get; set; }
        public long FirmaId { get; set; }
        public long SubeId { get; set; }
        public long OlusturanId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public long? DegistirenId { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public Guid Guid { get; set; }
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }
        public int Yil { get; set; }
        public long? UstDosyaId { get; set; }
        public string Ad { get; set; } = null!;
        public string? Aciklama { get; set; }
        public int Tip { get; set; }
        public string Yol { get; set; } = null!;
        public long Boyut { get; set; }
        public string? Modul { get; set; }

        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblSsokullanici Olusturan { get; set; } = null!;
        public virtual TblGeneralFirma TblGeneralFirma { get; set; } = null!;
        public virtual TblGeneralSube TblGeneralSube { get; set; } = null!;
        public virtual TblFileDosyaSistemi? UstDosya { get; set; }
        public virtual ICollection<TblFileDosyaSistemi> InverseUstDosya { get; set; }
        public virtual ICollection<TblFileFavoriDosyalar> TblFileFavoriDosyalars { get; set; }
    }
}
