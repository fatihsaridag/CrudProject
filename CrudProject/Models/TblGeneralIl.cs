using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralIl
    {
        public TblGeneralIl()
        {
            TblGeneralBankaSubes = new HashSet<TblGeneralBankaSube>();
            TblGeneralIlces = new HashSet<TblGeneralIlce>();
            TblGeneralSubes = new HashSet<TblGeneralSube>();
        }

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
        public long UlkeId { get; set; }
        public string Kod { get; set; } = null!;
        public string Adi { get; set; } = null!;
        public string? TelKodu { get; set; }
        public string? PlakaKodu { get; set; }
        public string? MernisKodu { get; set; }
        public double? Latitude { get; set; }
        public double? Longtitude { get; set; }

        public virtual TblGeneralUlke Ulke { get; set; } = null!;
        public virtual ICollection<TblGeneralBankaSube> TblGeneralBankaSubes { get; set; }
        public virtual ICollection<TblGeneralIlce> TblGeneralIlces { get; set; }
        public virtual ICollection<TblGeneralSube> TblGeneralSubes { get; set; }
    }
}
