using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralBanka
    {
        public TblGeneralBanka()
        {
            TblGeneralBankaSubes = new HashSet<TblGeneralBankaSube>();
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
        public string Kodu { get; set; } = null!;
        public string Adi { get; set; } = null!;
        public string? GenelKodu { get; set; }
        public int Tip { get; set; }
        public string? Erpkodu { get; set; }

        public virtual ICollection<TblGeneralBankaSube> TblGeneralBankaSubes { get; set; }
    }
}
