using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralUlke
    {
        public TblGeneralUlke()
        {
            TblGeneralIls = new HashSet<TblGeneralIl>();
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
        public string Kod { get; set; } = null!;
        public string KisaKod { get; set; } = null!;
        public string Adi { get; set; } = null!;
        public string UlkeTelKodu { get; set; } = null!;
        public long ParaBirimId { get; set; }

        public virtual TblGeneralParaBirimi ParaBirim { get; set; } = null!;
        public virtual ICollection<TblGeneralIl> TblGeneralIls { get; set; }
        public virtual ICollection<TblGeneralSube> TblGeneralSubes { get; set; }
    }
}
