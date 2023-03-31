using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class HomeController : Controller
    {

        private readonly OctaPullContext _octaPullContext;

        public HomeController(OctaPullContext octaPullContext)
        {
            _octaPullContext = octaPullContext;
        }

        public IActionResult TblGeneralKulGrupEkran()
        {
            return View();
        }


        public IActionResult TblGeneralFavoriler()
        {
            return View();
        }


        public IActionResult TblSsoyonlendirme()
        {
            return View();
        }

        public IActionResult TblSsotoken()
        {
            return View();
        }

        public IActionResult TblSsokullaniciTipi()
        {
            return View();
        }

        public IActionResult TblSsokullanici()
        {
            return View();
        }

        public IActionResult TblSsoizin()
        {
            return View();
        }


        public IActionResult TblSsohost()
        {
            return View();
        }


        public IActionResult TblSsodavetDetay()
        {
            return View();
        }

        public IActionResult TblSsodavet()
        {
            return View();
        }

        public IActionResult TblSocialLink()
        {
            return View();
        }


        public IActionResult TblSocialFeedTip()
        {
            return View();
        }

        public IActionResult TblSocialFeedLink()
        {
            return View();
        }

        public IActionResult TblSocialFeedKisi()
        {
            return View();
        }


        public IActionResult TblSocialFeed()
        {
            return View();
        }


        public IActionResult TblOption()
        {
            return View();
        }

        public IActionResult TblGeneralVisitDurum()
        {
            return View();
        }


        public IActionResult TblGeneralVergiDairesi()
        {
            return View();
        }

        public IActionResult TblGeneralUserApplication()
        {
            return View();
        }

        public IActionResult TblGeneralUlke()
        {
            return View();
        }


        public IActionResult TblGeneralSubeKullanici()
        {
            return View();
        }


        public IActionResult TblGeneralSube()
        {
            return View();
        }


        public IActionResult TblGeneralRehberView()
        {
            return View();
        }

        public IActionResult TblGeneralRehberColumn()
        {
            return View();
        }

        public IActionResult TblGeneralRehber()
        {
            return View();
        }

        public IActionResult TblGeneralRedYeri()
        {
            return View();
        }

        public IActionResult TblGeneralRedNedenYetki()
        {
            return View();
        }

        public IActionResult TblGeneralRedNedenYeri()
        {
            return View();
        }

        public IActionResult TblGeneralRedNedeni()
        {
            return View();
        }

        public IActionResult TblGeneralRedDurumYetki()
        {
            return View();
        }

        public IActionResult TblGeneralRedDurum()
        {
            return View();
        }


        public IActionResult TblGeneralParaBirimi()
        {
            return View();
        }


        public IActionResult TblGeneralOnayDurum()
        {
            return View();
        }

        public IActionResult TblGeneralModul()
        {
            return View();
        }

        public IActionResult TblGeneralLidosTalepTip()
        {
            return View();
        }

        public IActionResult TblGeneralLidosElusTip()
        {
            return View();
        }

        public IActionResult TblGeneralLidosDurum()
        {
            return View();
        }


        public IActionResult TblGeneralKullaniciGrupTanim()
        {
            return View();
        }

        public IActionResult TblGeneralKullaniciEkAlan()
        {
            return View();
        }


        public IActionResult TblGeneralKoy()
        {
            return View();
        }


        public IActionResult TblGeneralIsletmeApplication()
        {
            return View();
        }


        public IActionResult TblGeneralIsletme()
        {
            return View();
        }

        public IActionResult TblGeneralIslemTipi()
        {
            return View();
        }

        public IActionResult TblGeneralIslemSeriTanimlama()
        {
            return View();
        }


        public IActionResult TblGeneralIslemSeri()
        {
            return View();
        }

        public IActionResult TblGeneralIslemKilit()
        {
          
            return View();
        }

        public IActionResult TblGeneralIslemBelgeTip()
        {
            return View();
        }

        public IActionResult TblGeneralIntegration()
        {
            return View();
        }


        public IActionResult TblGeneralIlce()
        {
            return View();
        }

        public IActionResult TblGeneralIl()
        {
            return View();
        }

        public IActionResult TblGeneralGun()
        {
            return View();
        }



        public IActionResult TblGeneralGrupKullanici()
        {
            return View();
        }

        public IActionResult TblGeneralGondSekli()
        {
            return View();
        }


        public IActionResult TblGeneralFirma()
        {
           

            return View();
        }

     


        public IActionResult TblGeneralEfatMukellefMail()
        {
          
            return View();
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
            return View();
        }

        public IActionResult TblGeneralBanka()
        {
            return View();
        }

        public IActionResult TblCMSAppMenu()
        {

            return View();
        }


         public IActionResult TblCMSAppNavigation()
         {
            return View();
         }


        public IActionResult TblCmsnavYetki()
        {
            return View();

        }

        public IActionResult TblFileFavoriDosyalar()
        {
            return View();
        }


        public IActionResult TblGeneralBankaSube()
        {
            return View();
        }

        public IActionResult TblGeneralBelgeDurumlari()
        {

            return View();
        }


        public IActionResult TblGeneralBnkBelgeDurum()
        {

            return View();
        }

        public IActionResult TblGeneralBnkEftDurum()
        {
            return View();
        }

        public IActionResult TblGeneralBnkHarDurum()
        {
            
            return View();
        }

        public IActionResult TblGeneralBnkHarKynk()
        {
            return View();
        }

        public IActionResult TblGeneralBnkHarTip()
        {
            return View();
        }

        public IActionResult TblGeneralDil()
        {
            return View();
        }

        public IActionResult TblGeneralEevrakDurumlari()
        {

            return View();
        }

        public IActionResult TblGeneralEfatMukellef()
        {
            return View();
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