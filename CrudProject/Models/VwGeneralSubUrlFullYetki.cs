using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwGeneralSubUrlFullYetki
    {
        public long Id { get; set; }
        public bool? Silindi { get; set; }
        public long? Revizyon { get; set; }
        public int IsletmeId { get; set; }
        public int FirmaId { get; set; }
        public int SubeId { get; set; }
        public long? OlusturanId { get; set; }
        public DateTime? OlusturmaTarih { get; set; }
        public long? DegistirenId { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public Guid? Guid { get; set; }
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }
        public int? Yil { get; set; }
        public int KullaniciId { get; set; }
        public int KulGrupId { get; set; }
        public long NavigationId { get; set; }
        public int GrupKulId { get; set; }
        public string Name { get; set; } = null!;
        public string SubUrl { get; set; } = null!;
        public Guid? AppGuid { get; set; }
        public int OrtKulId { get; set; }
        public bool? Okuma { get; set; }
        public bool? Ekleme { get; set; }
        public bool? Degistirme { get; set; }
        public bool? Silme { get; set; }
    }
}
