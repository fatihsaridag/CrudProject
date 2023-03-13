using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblSsoyonlendirme
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
        public long KullaniciId { get; set; }
        public long? IsletmeNo { get; set; }
        public long? FirmaNo { get; set; }
        public long? SubeNo { get; set; }
        public long? ApplicationId { get; set; }
        public string IsletmeUrlOnEk { get; set; } = null!;

        public virtual TblGeneralApplication? Application { get; set; }
        public virtual TblGeneralIsletme? IsletmeNoNavigation { get; set; }
        public virtual TblSsokullanici Kullanici { get; set; } = null!;
        public virtual TblGeneralFirma? TblGeneralFirma { get; set; }
        public virtual TblGeneralSube? TblGeneralSube { get; set; }
    }
}
