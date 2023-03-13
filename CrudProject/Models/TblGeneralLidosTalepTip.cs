using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralLidosTalepTip
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
        public string Kod { get; set; } = null!;
        public string Ad { get; set; } = null!;
        public string RenkCode { get; set; } = null!;
        public bool? NumuneListesineDusur { get; set; }
        public bool? TartimdaUrunSecilsin { get; set; }
        public bool? MudiZorunluOlmasin { get; set; }

        public virtual TblGeneralFirma Firma { get; set; } = null!;
        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblGeneralSube Sube { get; set; } = null!;
    }
}
