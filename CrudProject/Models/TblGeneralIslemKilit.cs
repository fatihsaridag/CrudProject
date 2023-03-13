using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralIslemKilit
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long OlusturanId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public long? DegistirenId { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public Guid Guid { get; set; }
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }
        public string? IslemAdi { get; set; }
        public string? IslemKod { get; set; }
        public DateTime? KilitTarih { get; set; }
        public long AppId { get; set; }

        public virtual TblGeneralApplication App { get; set; } = null!;
    }
}
