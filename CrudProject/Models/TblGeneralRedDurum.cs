﻿using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralRedDurum
    {
        public TblGeneralRedDurum()
        {
            TblGeneralRedDurumYetkis = new HashSet<TblGeneralRedDurumYetki>();
        }

        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public long IsletmeId { get; set; }
        public long FirmaId { get; set; }
        public long SubeId { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public int Yil { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public string Kod { get; set; } = null!;
        public string Ad { get; set; } = null!;

        public virtual ICollection<TblGeneralRedDurumYetki> TblGeneralRedDurumYetkis { get; set; }
    }
}
