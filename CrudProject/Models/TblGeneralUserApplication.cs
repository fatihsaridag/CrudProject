using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralUserApplication
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
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public int Yil { get; set; }
        public long ApplicationId { get; set; }
        public long KullaniciId { get; set; }

        public virtual TblGeneralApplication Application { get; set; } = null!;
        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblSsokullanici Kullanici { get; set; } = null!;
        public virtual TblGeneralFirma TblGeneralFirma { get; set; } = null!;
        public virtual TblGeneralSube TblGeneralSube { get; set; } = null!;
        public virtual TblGeneralSubeKullanici TblGeneralSubeKullanici { get; set; } = null!;
    }
}
