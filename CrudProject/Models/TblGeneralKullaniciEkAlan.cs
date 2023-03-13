using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralKullaniciEkAlan
    {
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
        public Guid Guid { get; set; }
        public int Yil { get; set; }
        public long ModulId { get; set; }
        public long ApplicationId { get; set; }
        public string Baslik { get; set; } = null!;
        public int KullTnmSahaDegerTipId { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }

        public virtual TblGeneralApplication Application { get; set; } = null!;
        public virtual TblGeneralModul Modul { get; set; } = null!;
    }
}
