using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblDigiBipaylasim
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long OlusturanId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public long? DegistirenId { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long IsletmeId { get; set; }
        public long SubeId { get; set; }
        public long FirmaId { get; set; }
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }
        public Guid Guid { get; set; }
        public int Yil { get; set; }
        public long DosyaId { get; set; }
        public long UserId { get; set; }
        public string? PaylasimTipi { get; set; }

        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblGeneralFirma TblGeneralFirma { get; set; } = null!;
        public virtual TblGeneralSube TblGeneralSube { get; set; } = null!;
    }
}
