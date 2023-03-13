using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblDigiBidatabaseDosyalar
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long SubeKodu { get; set; }
        public long OlusturanId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public long? DegistirenId { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public Guid Guid { get; set; }
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }
        public int Yil { get; set; }
        public long DatabaseId { get; set; }
        public long DosyaId { get; set; }
        public long FirmaKodu { get; set; }
        public long IsletmeKodu { get; set; }
    }
}
