using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblSsokullanici
    {
        public TblSsokullanici()
        {
            TblFileDosyaSistemis = new HashSet<TblFileDosyaSistemi>();
            TblFileFavoriDosyalars = new HashSet<TblFileFavoriDosyalar>();
            TblGeneralFavorilers = new HashSet<TblGeneralFavoriler>();
            TblGeneralGrupKullanicis = new HashSet<TblGeneralGrupKullanici>();
            TblGeneralSubeKullanicis = new HashSet<TblGeneralSubeKullanici>();
            TblGeneralUserApplications = new HashSet<TblGeneralUserApplication>();
            TblSocialFeedKisis = new HashSet<TblSocialFeedKisi>();
            TblSsoizins = new HashSet<TblSsoizin>();
            TblSsotokens = new HashSet<TblSsotoken>();
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
        public string UserName { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string Name { get; set; } = null!;
        public string SurName { get; set; } = null!;
        public string? Email { get; set; }
        public bool Active { get; set; }
        public bool IsAdmin { get; set; }
        public bool IsSuperAdmin { get; set; }
        public bool Approved { get; set; }
        public DateTime? PasswordExpireDate { get; set; }
        public bool IsNewPassword { get; set; }
        public string? TimeZone { get; set; }
        public long? KullaniciTipId { get; set; }
        public string? ProfilResmi { get; set; }
        public string? Telefon { get; set; }
        public string AuthType { get; set; } = null!;
        public DateTime? DogumGunu { get; set; }

        public virtual TblSsokullaniciTipi? KullaniciTip { get; set; }
        public virtual ICollection<TblFileDosyaSistemi> TblFileDosyaSistemis { get; set; }
        public virtual ICollection<TblFileFavoriDosyalar> TblFileFavoriDosyalars { get; set; }
        public virtual ICollection<TblGeneralFavoriler> TblGeneralFavorilers { get; set; }
        public virtual ICollection<TblGeneralGrupKullanici> TblGeneralGrupKullanicis { get; set; }
        public virtual ICollection<TblGeneralSubeKullanici> TblGeneralSubeKullanicis { get; set; }
        public virtual ICollection<TblGeneralUserApplication> TblGeneralUserApplications { get; set; }
        public virtual ICollection<TblSocialFeedKisi> TblSocialFeedKisis { get; set; }
        public virtual ICollection<TblSsoizin> TblSsoizins { get; set; }
        public virtual ICollection<TblSsotoken> TblSsotokens { get; set; }
        public virtual ICollection<TblSsoyonlendirme> TblSsoyonlendirmes { get; set; }
    }
}
