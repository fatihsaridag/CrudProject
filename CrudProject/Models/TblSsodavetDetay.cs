﻿using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblSsodavetDetay
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
        public long MasterId { get; set; }
        public long IsletmeId { get; set; }
        public long FirmaId { get; set; }
        public long SubeId { get; set; }
        public bool AdminMi { get; set; }
        public int Yil { get; set; }

        public virtual TblGeneralFirma Firma { get; set; } = null!;
        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblSsodavet Master { get; set; } = null!;
        public virtual TblGeneralSube Sube { get; set; } = null!;
    }
}
