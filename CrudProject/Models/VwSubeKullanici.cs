using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwSubeKullanici
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long OlusturanId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long? DegistirenId { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public int Yil { get; set; }
        public long IsletmeId { get; set; }
        public long FirmaId { get; set; }
        public int FirmaKod { get; set; }
        public long SubeId { get; set; }
        public int SubeKod { get; set; }
        public long KullaniciId { get; set; }
        public string? Ad { get; set; }
        public string? Soyad { get; set; }
        public string? Eposta { get; set; }
        public string? AdSoyad { get; set; }
        public bool Admin { get; set; }
        public bool Approved { get; set; }
    }
}
