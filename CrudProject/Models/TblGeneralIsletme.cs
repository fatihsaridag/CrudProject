using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralIsletme
    {
        public TblGeneralIsletme()
        {
            TblDigiBidatabaselers = new HashSet<TblDigiBidatabaseler>();
            TblDigiBidosyaSistemis = new HashSet<TblDigiBidosyaSistemi>();
            TblDigiBifavoriDosyalars = new HashSet<TblDigiBifavoriDosyalar>();
            TblDigiBipaylasims = new HashSet<TblDigiBipaylasim>();
            TblFileDosyaSistemis = new HashSet<TblFileDosyaSistemi>();
            TblFileFavoriDosyalars = new HashSet<TblFileFavoriDosyalar>();
            TblGeneralFavorilers = new HashSet<TblGeneralFavoriler>();
            TblGeneralFirmas = new HashSet<TblGeneralFirma>();
            TblGeneralIslemSeriTanimlamas = new HashSet<TblGeneralIslemSeriTanimlama>();
            TblGeneralIsletmeApplications = new HashSet<TblGeneralIsletmeApplication>();
            TblGeneralLidosDurums = new HashSet<TblGeneralLidosDurum>();
            TblGeneralLidosElusTips = new HashSet<TblGeneralLidosElusTip>();
            TblGeneralLidosTalepTips = new HashSet<TblGeneralLidosTalepTip>();
            TblGeneralRedNedenYeris = new HashSet<TblGeneralRedNedenYeri>();
            TblGeneralRedNedenYetkis = new HashSet<TblGeneralRedNedenYetki>();
            TblGeneralRedNedenis = new HashSet<TblGeneralRedNedeni>();
            TblGeneralRedYeris = new HashSet<TblGeneralRedYeri>();
            TblGeneralRehberColumns = new HashSet<TblGeneralRehberColumn>();
            TblGeneralRehberViews = new HashSet<TblGeneralRehberView>();
            TblGeneralRehbers = new HashSet<TblGeneralRehber>();
            TblGeneralSubeKullanicis = new HashSet<TblGeneralSubeKullanici>();
            TblGeneralUserApplications = new HashSet<TblGeneralUserApplication>();
            TblOptions = new HashSet<TblOption>();
            TblSocialFeedKisis = new HashSet<TblSocialFeedKisi>();
            TblSocialFeedLinks = new HashSet<TblSocialFeedLink>();
            TblSocialFeeds = new HashSet<TblSocialFeed>();
            TblSsodavetDetays = new HashSet<TblSsodavetDetay>();
            TblSsohosts = new HashSet<TblSsohost>();
            TblSsoyonlendirmes = new HashSet<TblSsoyonlendirme>();
        }

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
        public string Adi { get; set; } = null!;
        public string VergiKimlikNo { get; set; } = null!;
        public string IsletmeUrlOnEk { get; set; } = null!;

        public virtual ICollection<TblDigiBidatabaseler> TblDigiBidatabaselers { get; set; }
        public virtual ICollection<TblDigiBidosyaSistemi> TblDigiBidosyaSistemis { get; set; }
        public virtual ICollection<TblDigiBifavoriDosyalar> TblDigiBifavoriDosyalars { get; set; }
        public virtual ICollection<TblDigiBipaylasim> TblDigiBipaylasims { get; set; }
        public virtual ICollection<TblFileDosyaSistemi> TblFileDosyaSistemis { get; set; }
        public virtual ICollection<TblFileFavoriDosyalar> TblFileFavoriDosyalars { get; set; }
        public virtual ICollection<TblGeneralFavoriler> TblGeneralFavorilers { get; set; }
        public virtual ICollection<TblGeneralFirma> TblGeneralFirmas { get; set; }
        public virtual ICollection<TblGeneralIslemSeriTanimlama> TblGeneralIslemSeriTanimlamas { get; set; }
        public virtual ICollection<TblGeneralIsletmeApplication> TblGeneralIsletmeApplications { get; set; }
        public virtual ICollection<TblGeneralLidosDurum> TblGeneralLidosDurums { get; set; }
        public virtual ICollection<TblGeneralLidosElusTip> TblGeneralLidosElusTips { get; set; }
        public virtual ICollection<TblGeneralLidosTalepTip> TblGeneralLidosTalepTips { get; set; }
        public virtual ICollection<TblGeneralRedNedenYeri> TblGeneralRedNedenYeris { get; set; }
        public virtual ICollection<TblGeneralRedNedenYetki> TblGeneralRedNedenYetkis { get; set; }
        public virtual ICollection<TblGeneralRedNedeni> TblGeneralRedNedenis { get; set; }
        public virtual ICollection<TblGeneralRedYeri> TblGeneralRedYeris { get; set; }
        public virtual ICollection<TblGeneralRehberColumn> TblGeneralRehberColumns { get; set; }
        public virtual ICollection<TblGeneralRehberView> TblGeneralRehberViews { get; set; }
        public virtual ICollection<TblGeneralRehber> TblGeneralRehbers { get; set; }
        public virtual ICollection<TblGeneralSubeKullanici> TblGeneralSubeKullanicis { get; set; }
        public virtual ICollection<TblGeneralUserApplication> TblGeneralUserApplications { get; set; }
        public virtual ICollection<TblOption> TblOptions { get; set; }
        public virtual ICollection<TblSocialFeedKisi> TblSocialFeedKisis { get; set; }
        public virtual ICollection<TblSocialFeedLink> TblSocialFeedLinks { get; set; }
        public virtual ICollection<TblSocialFeed> TblSocialFeeds { get; set; }
        public virtual ICollection<TblSsodavetDetay> TblSsodavetDetays { get; set; }
        public virtual ICollection<TblSsohost> TblSsohosts { get; set; }
        public virtual ICollection<TblSsoyonlendirme> TblSsoyonlendirmes { get; set; }
    }
}
