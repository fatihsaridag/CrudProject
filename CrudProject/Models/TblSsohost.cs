using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblSsohost
    {
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
        public string Host { get; set; } = null!;
        public long IsletmeId { get; set; }
        public string ParamObject { get; set; } = null!;
        public int Yil { get; set; }
        public long FirmaId { get; set; }
        public long SubeId { get; set; }

        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
    }
}
