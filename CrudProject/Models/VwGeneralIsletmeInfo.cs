using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwGeneralIsletmeInfo
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public string Adi { get; set; } = null!;
        public string VergiKimlikNo { get; set; } = null!;
        public string IsletmeUrlOnEk { get; set; } = null!;
        public long IslemeId { get; set; }
        public string IsletmeAdi { get; set; } = null!;
        public long FirmaId { get; set; }
        public string FirmaAdi { get; set; } = null!;
        public long SubeId { get; set; }
        public string SubeAdi { get; set; } = null!;
        public int? IsletmeUygulamaSayisi { get; set; }
    }
}
