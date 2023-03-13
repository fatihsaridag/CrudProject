using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwGeneralRedNedenYetkiDurumInfo
    {
        public long DurumId { get; set; }
        public string DurumAd { get; set; } = null!;
        public long RedNedenId { get; set; }
        public string NedenAd { get; set; } = null!;
        public long YerId { get; set; }
        public string YerAd { get; set; } = null!;
        public Guid Guid { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long IsletmeId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public long FirmaId { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long SubeId { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public int Yil { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public long Id { get; set; }
    }
}
