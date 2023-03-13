using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwGeneralSubeKulInfo
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
        public long KullaniciId { get; set; }
        public bool Admin { get; set; }
        public bool Approved { get; set; }
        public DateTime DavetTarihi { get; set; }
        public DateTime? DavetOnayTarihi { get; set; }
        public string? Isletme { get; set; }
        public string? Firma { get; set; }
        public string? Sube { get; set; }
    }
}
