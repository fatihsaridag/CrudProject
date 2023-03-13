using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralFirma
    {
        public TblGeneralFirma()
        {
            TblDigiBidatabaselers = new HashSet<TblDigiBidatabaseler>();
            TblDigiBidosyaSistemis = new HashSet<TblDigiBidosyaSistemi>();
            TblDigiBifavoriDosyalars = new HashSet<TblDigiBifavoriDosyalar>();
            TblDigiBipaylasims = new HashSet<TblDigiBipaylasim>();
            TblFileDosyaSistemis = new HashSet<TblFileDosyaSistemi>();
            TblFileFavoriDosyalars = new HashSet<TblFileFavoriDosyalar>();
            TblGeneralFavorilers = new HashSet<TblGeneralFavoriler>();
            TblGeneralIslemSeriTanimlamas = new HashSet<TblGeneralIslemSeriTanimlama>();
            TblGeneralLidosDurums = new HashSet<TblGeneralLidosDurum>();
            TblGeneralLidosTalepTips = new HashSet<TblGeneralLidosTalepTip>();
            TblGeneralRedNedenYeris = new HashSet<TblGeneralRedNedenYeri>();
            TblGeneralRedNedenYetkis = new HashSet<TblGeneralRedNedenYetki>();
            TblGeneralRedNedenis = new HashSet<TblGeneralRedNedeni>();
            TblGeneralRedYeris = new HashSet<TblGeneralRedYeri>();
            TblGeneralRehberColumns = new HashSet<TblGeneralRehberColumn>();
            TblGeneralRehberViews = new HashSet<TblGeneralRehberView>();
            TblGeneralRehbers = new HashSet<TblGeneralRehber>();
            TblGeneralSubeKullanicis = new HashSet<TblGeneralSubeKullanici>();
            TblGeneralSubes = new HashSet<TblGeneralSube>();
            TblGeneralUserApplications = new HashSet<TblGeneralUserApplication>();
            TblOptions = new HashSet<TblOption>();
            TblSocialFeedKisis = new HashSet<TblSocialFeedKisi>();
            TblSocialFeedLinks = new HashSet<TblSocialFeedLink>();
            TblSocialFeeds = new HashSet<TblSocialFeed>();
            TblSsodavetDetays = new HashSet<TblSsodavetDetay>();
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
        public long IsletmeId { get; set; }
        public int FirmaKod { get; set; }
        public string Adi { get; set; } = null!;
        public string VergiKimlikNo { get; set; } = null!;
        public string? VergiDairesi { get; set; }
        public string? MersisNo { get; set; }
        public string? TicariSicilNo { get; set; }
        public string? WebSiteAdres { get; set; }
        public string? Email { get; set; }
        public bool AcikAdresMi { get; set; }
        public string? Adres { get; set; }
        public long? UlkeId { get; set; }
        public long? IlId { get; set; }
        public long? IlceId { get; set; }
        public long? MahKoyId { get; set; }
        public string? KapiNo { get; set; }
        public string? DaireNo { get; set; }
        public string? TelNo { get; set; }
        public string? FaxNo { get; set; }
        public string? YeniAlan { get; set; }

        public virtual TblGeneralIsletme Isletme { get; set; } = null!;
        public virtual ICollection<TblDigiBidatabaseler> TblDigiBidatabaselers { get; set; }
        public virtual ICollection<TblDigiBidosyaSistemi> TblDigiBidosyaSistemis { get; set; }
        public virtual ICollection<TblDigiBifavoriDosyalar> TblDigiBifavoriDosyalars { get; set; }
        public virtual ICollection<TblDigiBipaylasim> TblDigiBipaylasims { get; set; }
        public virtual ICollection<TblFileDosyaSistemi> TblFileDosyaSistemis { get; set; }
        public virtual ICollection<TblFileFavoriDosyalar> TblFileFavoriDosyalars { get; set; }
        public virtual ICollection<TblGeneralFavoriler> TblGeneralFavorilers { get; set; }
        public virtual ICollection<TblGeneralIslemSeriTanimlama> TblGeneralIslemSeriTanimlamas { get; set; }
        public virtual ICollection<TblGeneralLidosDurum> TblGeneralLidosDurums { get; set; }
        public virtual ICollection<TblGeneralLidosTalepTip> TblGeneralLidosTalepTips { get; set; }
        public virtual ICollection<TblGeneralRedNedenYeri> TblGeneralRedNedenYeris { get; set; }
        public virtual ICollection<TblGeneralRedNedenYetki> TblGeneralRedNedenYetkis { get; set; }
        public virtual ICollection<TblGeneralRedNedeni> TblGeneralRedNedenis { get; set; }
        public virtual ICollection<TblGeneralRedYeri> TblGeneralRedYeris { get; set; }
        public virtual ICollection<TblGeneralRehberColumn> TblGeneralRehberColumns { get; set; }
        public virtual ICollection<TblGeneralRehberView> TblGeneralRehberViews { get; set; }
        public virtual ICollection<TblGeneralRehber> TblGeneralRehbers { get; set; }
        public virtual ICollection<TblGeneralSubeKullanici> TblGeneralSubeKullanicis { get; set; }
        public virtual ICollection<TblGeneralSube> TblGeneralSubes { get; set; }
        public virtual ICollection<TblGeneralUserApplication> TblGeneralUserApplications { get; set; }
        public virtual ICollection<TblOption> TblOptions { get; set; }
        public virtual ICollection<TblSocialFeedKisi> TblSocialFeedKisis { get; set; }
        public virtual ICollection<TblSocialFeedLink> TblSocialFeedLinks { get; set; }
        public virtual ICollection<TblSocialFeed> TblSocialFeeds { get; set; }
        public virtual ICollection<TblSsodavetDetay> TblSsodavetDetays { get; set; }
        public virtual ICollection<TblSsoyonlendirme> TblSsoyonlendirmes { get; set; }
    }
}
