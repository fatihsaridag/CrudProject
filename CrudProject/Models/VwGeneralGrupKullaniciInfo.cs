using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwGeneralGrupKullaniciInfo
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long OlusturanId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public long? DegistirenId { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public long IsletmeId { get; set; }
        public long FirmaId { get; set; }
        public long KullaniciId { get; set; }
        public long GrupId { get; set; }
        public string? Ad { get; set; }
        public string? SoyAd { get; set; }
        public string? AdSoyad { get; set; }
        public string? KisaAd { get; set; }
        public string? Email { get; set; }
        public string? ProfilResmi { get; set; }
    }
}
