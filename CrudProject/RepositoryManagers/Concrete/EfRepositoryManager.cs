using CrudProject.GenericRepository.Abstract;
using CrudProject.GenericRepository.Concrete;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;

namespace CrudProject.RepositoryManager.Concrete
{
    public class EfRepositoryManager : IRepositoryManager
    {
        private readonly OctaPullContext _context;
        private EfDataProtectionKeysRepository _dataProtectionKeysRepository;
        private EfTblCMSAppMenuRepository _tblCmsAppMenuRepository;
        private EfTblCMSAppNavigationRepository _tblCmsAppNavigationRepository;
        private EfTblGeneralApplicationRepository _tblGeneralApplicationRepository;
        private EfTblCMSNavYetkiRepository _tblCmsNavYetkiRepository;
        private EfTblFileFavoriDosyalarRepository _tblFileFavoriDosyalarRepository;
        private EfTblFileDosyaSistemiRepository _tblFileDosyaSistemiRepository;
        private EfTblGeneralIsletmeRepository _tblGeneralIsletmeRepository;
        private EfTblGeneralFirmaRepository _tblGeneralFirmaRepository;
        private EfTblGeneralSubeRepository _tblGeneralSubeRepository;
        private EfTblSSOKullaniciRepository _tblSSOKullaniciRepository;
        private EfTblGeneralBankaRepository _tblGeneralBankaRepository;
        private EfTblGeneralBankaSubeRepository _tblGeneralBankaSubeRepository;
        private EfTblGeneralIlRepository _tblGeneralIlRepository;
        private EfTblGeneralIlceRepository _tblGeneralIlceRepository;
        private EfTblGeneralBelgeDurumlariRepository _tblGeneralBelgeDurumlariRepository;
        private EfTblGeneralIslemTipiRepository _tblGeneralIslemTipi;
        private EfTblGeneralBnkBelgeDurumRepository _tblGeneralBnkBelgeDurum;
        private EfTblGeneralBnkEftDurumRepository _tblGeneralBnkEftDurum;
        private EfTblGeneralBnkHarDurumRepository _tblGeneralBnkHarDurumRepository;
        private EfTblGeneralBnkHarKynkRepository _tblGeneralBnkHarKynkRepository;
        private EfTblGeneralBnkHarTipRepository _TblGeneralBnkHarTipRepository;
        private EfTblGeneralDilRepository _tblGeneralDilRepository;
        private EfTblGeneralEEvrakDurumlariRepository _tblGeneralEvrakDurumlariRepository;
        private EfTblGeneralEFatMukellefRepository _tblGeneralEFatMukellefRepository;
        private EfTblGeneralEFatMukellefMailRepository _tblGeneralEfatMukellefMailRepository;
        private EfTblGeneralFavorilerRepository _tblGeneralFavorilerRepository;
        private EfTblGeneralSubeKullaniciRepository _tblGeneralSubeKullaniciRepository;
        private EfTblGeneralUlkeRepository _tblGeneralUlkeRepository;
        private EfTblGeneralKoyRepository _tblGeneralKoyRepository;

        public EfRepositoryManager(OctaPullContext context)
        {
            _context = context;
        }


        public IDataProtectionKeysRepository DataProtectionKeys => _dataProtectionKeysRepository ?? new EfDataProtectionKeysRepository(_context);

        public ITblCMSAppMenuRepository TblCMSAppMenus => _tblCmsAppMenuRepository ?? new EfTblCMSAppMenuRepository(_context);

        public ITblCMSAppNavigationRepository TblCmsAppNavigationRepository => _tblCmsAppNavigationRepository ?? new EfTblCMSAppNavigationRepository(_context);

        public ITblGeneralApplicationRepository TblGeneralApplication=> _tblGeneralApplicationRepository ?? new EfTblGeneralApplicationRepository(_context);

        public ITblCMSNavYetkiRepository TblCMSNavYetki => _tblCmsNavYetkiRepository ?? new EfTblCMSNavYetkiRepository(_context);

        public ITblFileFavoriDosyalarRepository TblFileFavoriDosyalar => _tblFileFavoriDosyalarRepository ?? new EfTblFileFavoriDosyalarRepository(_context);

        public ITblFileDosyaSistemiRepository TblFileDosyaSistemi => _tblFileDosyaSistemiRepository ?? new EfTblFileDosyaSistemiRepository(_context);

        public ITblGeneralIsletmeRepository TblGeneralIsletme => _tblGeneralIsletmeRepository ?? new EfTblGeneralIsletmeRepository(_context);

        public ITblGeneralFirmaRepository TblGeneralFirma => _tblGeneralFirmaRepository ?? new EfTblGeneralFirmaRepository(_context);

        public ITblGeneralSubeRepository TblGeneralSube => _tblGeneralSubeRepository ?? new EfTblGeneralSubeRepository(_context);

        public ITblSSOKullaniciRepository TblSSOKullanici => _tblSSOKullaniciRepository ?? new EfTblSSOKullaniciRepository(_context);

        public ITblGeneralIsletmeRepository TblGeneralIsletmeRepository => _tblGeneralIsletmeRepository ?? new EfTblGeneralIsletmeRepository(_context);

        public ITblGeneralBankaRepository TblGeneralBankaRepository => _tblGeneralBankaRepository ?? new EfTblGeneralBankaRepository(_context);

        public ITblGeneralBankaSubeRepository TblGeneralBankaSube => _tblGeneralBankaSubeRepository ?? new EfTblGeneralBankaSubeRepository(_context);

        public ITblGeneralIlRepository TblGeneralIl => _tblGeneralIlRepository ?? new EfTblGeneralIlRepository(_context);

        public ITblGeneralIlceRepository TblGeneralIlce => _tblGeneralIlceRepository ?? new EfTblGeneralIlceRepository(_context);

        public ITblGeneralBelgeDurumlariRepository TblGeneralBelgeDurumlari => _tblGeneralBelgeDurumlariRepository ?? new EfTblGeneralBelgeDurumlariRepository(_context);

        public ITblGeneralIslemTipiRepository TblGeneralIslemTipiRepository => _tblGeneralIslemTipi ?? new EfTblGeneralIslemTipiRepository(_context);

        public ITblGeneralBnkBelgeDurumRepository TblGeneralBnkBelgeDurumRepository => _tblGeneralBnkBelgeDurum ?? new EfTblGeneralBnkBelgeDurumRepository(_context);

        public ITblGeneralBnkEftDurumRepository TblGeneralBnkEftDurumRepository => _tblGeneralBnkEftDurum ?? new EfTblGeneralBnkEftDurumRepository(_context);

        public ITblGeneralBnkHarDurumRepository TblGeneralBnkHarDurum => _tblGeneralBnkHarDurumRepository ?? new EfTblGeneralBnkHarDurumRepository(_context);

        public ITblGeneralBnkHarKynkRepository TblGeneralBnkHarKynkRepository => _tblGeneralBnkHarKynkRepository ?? new EfTblGeneralBnkHarKynkRepository(_context);

        public ITblGeneralBnkHarTipRepository TblGeneralBnkHarTipRepository => _TblGeneralBnkHarTipRepository ?? new EfTblGeneralBnkHarTipRepository(_context);

        public ITblGeneralDilRepository TblGeneralDilRepository => _tblGeneralDilRepository ?? new EfTblGeneralDilRepository(_context);

        public ITblGeneralEEvrakDurumlariRepository TblGeneralEEvrakDurumlariRepository => _tblGeneralEvrakDurumlariRepository ?? new EfTblGeneralEEvrakDurumlariRepository(_context);

        public ITblGeneralEFatMukellefRepository tblGeneralEFatMukellefRepository => _tblGeneralEFatMukellefRepository ?? new EfTblGeneralEFatMukellefRepository(_context);

        public ITblGeneralEFatMukellefMailRepository tblGeneralEFatMukellefMailRepository => _tblGeneralEfatMukellefMailRepository ?? new EfTblGeneralEFatMukellefMailRepository(_context);

        public ITblGeneralFavorilerRepository tblGeneralFavorilerRepository => _tblGeneralFavorilerRepository ?? new EfTblGeneralFavorilerRepository(_context);

        public ITblGeneralSubeKullaniciRepository tblGeneralSubeKullaniciRepository => _tblGeneralSubeKullaniciRepository ?? new EfTblGeneralSubeKullaniciRepository(_context);

        public ITblGeneralUlkeRepository tblGeneralUlkeRepository => _tblGeneralUlkeRepository ?? new EfTblGeneralUlkeRepository(_context);

        public ITblGeneralKoyRepository tblGeneralKoyRepository => _tblGeneralKoyRepository ?? new EfTblGeneralKoyRepository(_context);

        public void Save()
        {
            _context.SaveChanges();
        }
    }
}
