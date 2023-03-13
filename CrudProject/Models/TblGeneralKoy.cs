using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralKoy
    {
        public TblGeneralKoy()
        {
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
        public long IlceId { get; set; }
        public string Kodu { get; set; } = null!;
        public string Adi { get; set; } = null!;
        public string? MernisKodu { get; set; }

        public virtual TblGeneralIlce Ilce { get; set; } = null!;
        public virtual ICollection<TblGeneralSube> TblGeneralSubes { get; set; }
    }
}
