using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralModul
    {
        public TblGeneralModul()
        {
            TblGeneralKullaniciEkAlans = new HashSet<TblGeneralKullaniciEkAlan>();
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
        public Guid Guid { get; set; }
        public int Yil { get; set; }
        public string Adi { get; set; } = null!;
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }

        public virtual ICollection<TblGeneralKullaniciEkAlan> TblGeneralKullaniciEkAlans { get; set; }
    }
}
