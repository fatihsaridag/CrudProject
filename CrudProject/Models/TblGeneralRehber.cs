using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralRehber
    {
        public TblGeneralRehber()
        {
            TblGeneralRehberColumnTblGeneralRehberNavigations = new HashSet<TblGeneralRehberColumn>();
            TblGeneralRehberColumnTblGeneralRehbers = new HashSet<TblGeneralRehberColumn>();
            TblGeneralRehberViews = new HashSet<TblGeneralRehberView>();
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
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public string RehberKodu { get; set; } = null!;
        public string Aciklama { get; set; } = null!;
        public string? Adi { get; set; }
        public string Url { get; set; } = null!;
        public string? Data { get; set; }
        public int? RaporTip { get; set; }
        public long? ReportingRaporId { get; set; }
        public long? MenuId { get; set; }
        public int? IslemTipi { get; set; }
        public bool? SistemMi { get; set; }
        public Guid? UygulamaGuid { get; set; }
        public string? TabloAdi { get; set; }

        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual TblGeneralFirma TblGeneralFirma { get; set; } = null!;
        public virtual TblGeneralSube TblGeneralSube { get; set; } = null!;
        public virtual ICollection<TblGeneralRehberColumn> TblGeneralRehberColumnTblGeneralRehberNavigations { get; set; }
        public virtual ICollection<TblGeneralRehberColumn> TblGeneralRehberColumnTblGeneralRehbers { get; set; }
        public virtual ICollection<TblGeneralRehberView> TblGeneralRehberViews { get; set; }
    }
}
