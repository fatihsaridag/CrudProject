using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralIlce
    {
        public TblGeneralIlce()
        {
            TblGeneralBankaSubes = new HashSet<TblGeneralBankaSube>();
            TblGeneralKoys = new HashSet<TblGeneralKoy>();
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
        public long IlId { get; set; }
        public string Kod { get; set; } = null!;
        public string Adi { get; set; } = null!;
        public string? MernisKodu { get; set; }

        public virtual TblGeneralIl Il { get; set; } = null!;
        public virtual ICollection<TblGeneralBankaSube> TblGeneralBankaSubes { get; set; }
        public virtual ICollection<TblGeneralKoy> TblGeneralKoys { get; set; }
        public virtual ICollection<TblGeneralSube> TblGeneralSubes { get; set; }
    }
}
