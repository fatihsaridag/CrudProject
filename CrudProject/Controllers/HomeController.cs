using CrudProject.GenericRepository;
using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using CrudProject.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace CrudProject.Controllers
{
    public class HomeController : Controller
    {

        private readonly IRepositoryManager _repositoryManager;

        public HomeController(IRepositoryManager repositoryManager)
        {
            _repositoryManager= repositoryManager;
        }
        

        public IActionResult TblGeneralFirma()
        {
            var tblGeneralFirma = _repositoryManager.TblGeneralFirma.GetAll();
            var tblGeneralIsletme = _repositoryManager.TblGeneralIsletme.GetAll();
            var tblGeneralUlke = _repositoryManager.tblGeneralUlkeRepository.GetAll();
            var tblGeneralIl = _repositoryManager.TblGeneralIl.GetAll();
            var tblGeneralIlce = _repositoryManager.TblGeneralIlce.GetAll();
            var tblGeneralKoy = _repositoryManager.tblGeneralKoyRepository.GetAll();


            TblGeneralFirmaViewModel tblGeneralFirmaViewModel = new TblGeneralFirmaViewModel
            {
                TblGeneralFirma = tblGeneralFirma,
                TblGeneralIsletme = tblGeneralIsletme,
                TblGeneralIl= tblGeneralIl,
                TblGeneralIlce= tblGeneralIlce,
                TblGeneralKoy = tblGeneralKoy,
                TblGeneralUlke= tblGeneralUlke,
            };

            return View(tblGeneralFirmaViewModel);
        }

        public IActionResult TblGeneralFavoriler()
        {

            var tblGeneralFavoriler = _repositoryManager.tblGeneralFavorilerRepository.GetAll();
            var tblGeneralIsletme = _repositoryManager.TblGeneralIsletme.GetAll();
            var tblGeneralSube = _repositoryManager.TblGeneralSube.GetAll();
            var tblGeneralSubeKullanici = _repositoryManager.tblGeneralSubeKullaniciRepository.GetAll();

            TblGeneralFavorilerViewModel tblGeneralFavorilerViewModel = new TblGeneralFavorilerViewModel
            {
                TblGeneralFavorilers= tblGeneralFavoriler,
                TblGeneralIsletmes= tblGeneralIsletme,
                TblGeneralSubes = tblGeneralSube,
                TblGeneralSubeKullanici =tblGeneralSubeKullanici
            };

            return View(tblGeneralFavorilerViewModel);
        }


        public IActionResult TblGeneralEfatMukellefMail()
        {
            var tblGeneralEfatMukellefMail = _repositoryManager.tblGeneralEFatMukellefMailRepository.GetAll();
            var tblGeneralEfatMukellef = _repositoryManager.tblGeneralEFatMukellefRepository.GetAll();
            TblGeneralEfatMukellefMailViewModel tblGeneralEfatMukellefMailViewModel = new();
            tblGeneralEfatMukellefMailViewModel.TblGeneralEfatMukellef = tblGeneralEfatMukellef;
            tblGeneralEfatMukellefMailViewModel.TblGeneralEfatMukellefMail = tblGeneralEfatMukellefMail;

            return View(tblGeneralEfatMukellefMailViewModel);
        }


        public IActionResult Index()
        {
            return View();
        }

        public IActionResult DataProtectionKeys()
        {
            return View();
        }

        public IActionResult TblGeneralApplications()
        {
            var datas = _repositoryManager.TblGeneralApplication.GetAll();
            return View(datas);
        }

        public IActionResult TblGeneralBanka()
        {
            var datas = _repositoryManager.TblGeneralBankaRepository.GetAll();
            return View(datas);
        }

        public IActionResult TblCMSAppMenu()
        {
            var tblCmsAppMenuViewModel = new TblCmsAppMenuViewModel();
            var datas = _repositoryManager.TblCMSAppMenus.GetAll();
            var navigation = _repositoryManager.TblCmsAppNavigationRepository.GetAll();

            tblCmsAppMenuViewModel.TblCmsappMenues = datas;
            tblCmsAppMenuViewModel.TblCmsappNavigations = navigation;

            return View(tblCmsAppMenuViewModel);
        }


         public IActionResult TblCMSAppNavigation()
         {
            return View();
         }


        public IActionResult TblCmsnavYetki()
        {
            var TblCMSNavYetkiViewModel = new TblCMSNavYetkiViewModel();
            var  tblCmsNavYetkis =  _repositoryManager.TblCMSNavYetki.GetAll();
            var  navigations =  _repositoryManager.TblCmsAppNavigationRepository.GetAll();

            TblCMSNavYetkiViewModel.TblCmsnavYetkis = tblCmsNavYetkis;
            TblCMSNavYetkiViewModel.TblCmsappNavigations = navigations;
            return View(TblCMSNavYetkiViewModel);

        }

        public IActionResult TblFileFavoriDosyalar()
        {
            var TblFileFavoriDosyalarViewModel = new TblFileFavoriDosyalarViewModel();

            var TblFavoriFile = _repositoryManager.TblFileFavoriDosyalar.GetAll();

            var TblFileDosyaSistemi = _repositoryManager.TblFileDosyaSistemi.GetAll();
            var TblGeneralFirma = _repositoryManager.TblGeneralFirma.GetAll();
            var TblGeneralSube = _repositoryManager.TblGeneralSube.GetAll();
            var TblSsokullanici = _repositoryManager.TblSSOKullanici.GetAll();
            var TblGeneralIsletme = _repositoryManager.TblGeneralIsletme.GetAll();

            TblFileFavoriDosyalarViewModel.TblFileFavoriDosyalar = TblFavoriFile;
            TblFileFavoriDosyalarViewModel.TblFileDosyaSsistemi = TblFileDosyaSistemi;
            TblFileFavoriDosyalarViewModel.TblGeneralFirma = TblGeneralFirma;
            TblFileFavoriDosyalarViewModel.TblGeneralSube = TblGeneralSube;
            TblFileFavoriDosyalarViewModel.TblSsokullanici = TblSsokullanici;
            TblFileFavoriDosyalarViewModel.TblGeneralIsletme = TblGeneralIsletme;

            return View(TblFileFavoriDosyalarViewModel);
        }


        public IActionResult TblGeneralBankaSube()
        {
            TblGeneralBankaSubeViewModel tblGeneralBankaSubeViewModel = new();
            var tblGeneralBankaSube = _repositoryManager.TblGeneralBankaSube.GetAll();
            var tblGeneralIl = _repositoryManager.TblGeneralIl.GetAll();
            var tblGeneralIlce = _repositoryManager.TblGeneralIlce.GetAll();
            var tblGeneralBanka = _repositoryManager.TblGeneralBankaRepository.GetAll();

            tblGeneralBankaSubeViewModel.TblGeneralIls = tblGeneralIl;
            tblGeneralBankaSubeViewModel.TblGeneralIlces = tblGeneralIlce;
            tblGeneralBankaSubeViewModel.TblGeneralIlces = tblGeneralIlce;
            tblGeneralBankaSubeViewModel.TblGeneralBankas = tblGeneralBanka;

            return View(tblGeneralBankaSubeViewModel);
        }

        public IActionResult TblGeneralBelgeDurumlari()
        {
            TblGeneralBelgeDurumlariViewModel tblGeneralBelgeDurumlariViewModel = new();

            var tblGeneralBelgeDurumlari = _repositoryManager.TblGeneralBelgeDurumlari.GetAll();
           var tblGeneralIslemTipi = _repositoryManager.TblGeneralIslemTipiRepository.GetAll();


            tblGeneralBelgeDurumlariViewModel.TblGeneralBelgeDurumlari = tblGeneralBelgeDurumlari;
            tblGeneralBelgeDurumlariViewModel.TblGeneralIslemTipi = tblGeneralIslemTipi;

            return View(tblGeneralBelgeDurumlariViewModel);
        }


        public IActionResult TblGeneralBnkBelgeDurum()
        {
            var tblGeneralBnkBelgeDurum = _repositoryManager.TblGeneralBnkBelgeDurumRepository.GetAll();

            return View(tblGeneralBnkBelgeDurum);
        }

        public IActionResult TblGeneralBnkEftDurum()
        {
            var tblGeneralBnkEftDurum = _repositoryManager.TblGeneralBnkEftDurumRepository.GetAll();
            return View(tblGeneralBnkEftDurum);
        }

        public IActionResult TblGeneralBnkHarDurum()
        {
            var tblGeneralBnkHarDurum = _repositoryManager.TblGeneralBnkHarDurum.GetAll();
            
            return View(tblGeneralBnkHarDurum);
        }

        public IActionResult TblGeneralBnkHarKynk()
        {
            var tblGeneralBnkHarKaynak = _repositoryManager.TblGeneralBnkHarKynkRepository.GetAll();
            return View(tblGeneralBnkHarKaynak);
        }

        public IActionResult TblGeneralBnkHarTip()
        {
            var tblGeneralBnkHarTip = _repositoryManager.TblGeneralBnkHarTipRepository.GetAll();
            return View(tblGeneralBnkHarTip);
        }

        public IActionResult TblGeneralDil()
        {
            var TblGeneralDils = _repositoryManager.TblGeneralDilRepository.GetAll();
            return View(TblGeneralDils);
        }

        public IActionResult TblGeneralEevrakDurumlari()
        {
            var tblGeneralEvrakDurumlari = _repositoryManager.TblGeneralEEvrakDurumlariRepository.GetAll();

            return View(tblGeneralEvrakDurumlari);
        }

        public IActionResult TblGeneralEfatMukellef()
        {
            var tblGeneralEfatMukellef = _repositoryManager.tblGeneralEFatMukellefRepository.GetAll();
            return View(tblGeneralEfatMukellef);
        }


        public IActionResult TblCmsVersion()
        {
            return View();
        }

        public IActionResult TblDigiBIDatabaseDosyalar()
        {
            return View();
        }

        public IActionResult TblDigiBIDatabaseler()
        {
            return View();
        }

        public IActionResult TblDigiBIDosyaSistemi()
        {
            return View();
        }

        public IActionResult TblDigiBIFavoriDosyalar()
        {
            return View();
        }

        public IActionResult TblDigiBIPaylasim()
        {
            return View();
        }

        public IActionResult TblFileDosyaSistemi()
        {
            return View();
        }

 

    }
}