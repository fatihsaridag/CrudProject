using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralRehberView
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long IsletmeId { get; set; }
        public long FirmaId { get; set; }
        public long SubeId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public Guid Guid { get; set; }
        public int Yil { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public long RehberId { get; set; }
        public string Adi { get; set; } = null!;
        public string Aciklama { get; set; } = null!;
        public string Tip { get; set; } = null!;
        public int? Sira { get; set; }

        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblGeneralFirma TblGeneralFirma { get; set; } = null!;
        public virtual TblGeneralRehber TblGeneralRehber { get; set; } = null!;
        public virtual TblGeneralSube TblGeneralSube { get; set; } = null!;
    }
}
