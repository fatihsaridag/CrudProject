using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.RepositoryManager.Abstract
{
    public interface IRepositoryManager
    {
        IDataProtectionKeysRepository DataProtectionKeys { get; }
        ITblCMSAppMenuRepository TblCMSAppMenus { get; }
        ITblCMSAppNavigationRepository TblCmsAppNavigationRepository { get; }
        ITblGeneralApplicationRepository TblGeneralApplication { get; }
        ITblCMSNavYetkiRepository TblCMSNavYetki { get; }
        ITblFileFavoriDosyalarRepository TblFileFavoriDosyalar { get; }
        ITblFileDosyaSistemiRepository TblFileDosyaSistemi { get; }
        ITblGeneralIsletmeRepository TblGeneralIsletme { get; }
        ITblGeneralFirmaRepository TblGeneralFirma { get; }
        ITblGeneralSubeRepository TblGeneralSube{ get; }
        ITblSSOKullaniciRepository TblSSOKullanici { get; }
        ITblGeneralIsletmeRepository TblGeneralIsletmeRepository { get; }
        ITblGeneralBankaRepository TblGeneralBankaRepository { get; }
        ITblGeneralBankaSubeRepository TblGeneralBankaSube { get; }
        ITblGeneralIlRepository TblGeneralIl { get; }
        ITblGeneralIlceRepository TblGeneralIlce { get; }
        ITblGeneralBelgeDurumlariRepository TblGeneralBelgeDurumlari { get; }
        ITblGeneralIslemTipiRepository TblGeneralIslemTipiRepository { get; }
        ITblGeneralBnkBelgeDurumRepository TblGeneralBnkBelgeDurumRepository { get; }
        ITblGeneralBnkEftDurumRepository TblGeneralBnkEftDurumRepository { get; }
        ITblGeneralBnkHarDurumRepository TblGeneralBnkHarDurum { get; }
        ITblGeneralBnkHarKynkRepository TblGeneralBnkHarKynkRepository { get; }
        ITblGeneralBnkHarTipRepository TblGeneralBnkHarTipRepository { get; }
        ITblGeneralDilRepository TblGeneralDilRepository { get; }
        ITblGeneralEEvrakDurumlariRepository TblGeneralEEvrakDurumlariRepository { get; }
        ITblGeneralEFatMukellefRepository tblGeneralEFatMukellefRepository { get; }
        ITblGeneralEFatMukellefMailRepository tblGeneralEFatMukellefMailRepository { get; }
        ITblGeneralFavorilerRepository tblGeneralFavorilerRepository { get; }   
        ITblGeneralSubeKullaniciRepository tblGeneralSubeKullaniciRepository{ get; }   
        ITblGeneralUlkeRepository tblGeneralUlkeRepository { get; }
        ITblGeneralKoyRepository tblGeneralKoyRepository { get; }
        void Save();
    }
}
