using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralRedNedenYeri
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long IsletmeId { get; set; }
        public long SubeId { get; set; }
        public long FirmaId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public int Yil { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public long RedNedenId { get; set; }
        public long YerId { get; set; }

        public virtual TblGeneralFirma Firma { get; set; } = null!;
        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblGeneralRedNedeni RedNeden { get; set; } = null!;
        public virtual TblGeneralSube Sube { get; set; } = null!;
        public virtual TblGeneralRedYeri Yer { get; set; } = null!;
    }
}
