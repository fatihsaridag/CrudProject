using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwFeed
    {
        public long? Id { get; set; }
        public bool? Silindi { get; set; }
        public long? Revizyon { get; set; }
        public long? IsletmeId { get; set; }
        public long? FirmaId { get; set; }
        public long? SubeId { get; set; }
        public DateTime? OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long? OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public Guid? Guid { get; set; }
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }
        public int? Yil { get; set; }
        public long? FeedId { get; set; }
        public long? KisiId { get; set; }
        public bool? GorulduMu { get; set; }
        public int? Tipi { get; set; }
        public string? ResimLink { get; set; }
        public long TipId { get; set; }
        public string? Text { get; set; }
        public string? TipAdi { get; set; }
        public string? TipAciklama { get; set; }
        public string? Link { get; set; }
        public string? AdSoyad { get; set; }
        public DateTime Tarih { get; set; }
        public long? CariId { get; set; }
        public long? UserId { get; set; }
    }
}
