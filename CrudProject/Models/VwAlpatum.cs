using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwAlpatum
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
        public long IsletmeId { get; set; }
        public int FirmaKod { get; set; }
        public string Adi { get; set; } = null!;
        public string VergiKimlikNo { get; set; } = null!;
        public string? VergiDairesi { get; set; }
        public string? MersisNo { get; set; }
        public string? TicariSicilNo { get; set; }
        public string? WebSiteAdres { get; set; }
        public string? Email { get; set; }
        public bool AcikAdresMi { get; set; }
        public string? Adres { get; set; }
        public long? UlkeId { get; set; }
        public long? IlId { get; set; }
        public long? IlceId { get; set; }
        public long? MahKoyId { get; set; }
        public string? KapiNo { get; set; }
        public string? DaireNo { get; set; }
        public string? TelNo { get; set; }
        public string? FaxNo { get; set; }
        public string? IsletmeAdi { get; set; }
        public string? UlkeAdi { get; set; }
        public string? IlAdi { get; set; }
        public string? IlceAdi { get; set; }
        public string? MahKoyAdi { get; set; }
    }
}
