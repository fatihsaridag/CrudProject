using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralIslemSeri
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long? IsletmeId { get; set; }
        public long? FirmaId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public long IslemTipiId { get; set; }
        public string Seri { get; set; } = null!;
        public string No { get; set; } = null!;

        public virtual TblGeneralIslemTipi IslemTipi { get; set; } = null!;
    }
}
