using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwUserApplication
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
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public int Yil { get; set; }
        public long ApplicationId { get; set; }
        public long KullaniciId { get; set; }
        public long UserAppId { get; set; }
        public string? Ad { get; set; }
        public string? Soyad { get; set; }
        public string? Eposta { get; set; }
        public string? Application { get; set; }
        public string? Description { get; set; }
        public string? Path { get; set; }
        public string? IconHtml { get; set; }
        public string? BaseUrl { get; set; }
        public bool? SystemApp { get; set; }
        public int? Sira { get; set; }
    }
}
