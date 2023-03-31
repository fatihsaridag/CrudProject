using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.Extensions.Caching.Memory;
using System.Net.Http.Formatting;

namespace CrudProject.Controllers.GenericBaseController
{

    public class BaseController<TEntity> : Controller, IBaseController<TEntity> where TEntity : class
    {

        private readonly IGenericRepository<TEntity> _genericRepository;
        private readonly OctaPullContext _context;
        

        public BaseController(IGenericRepository<TEntity> genericRepository,OctaPullContext context)
        {
            _genericRepository = genericRepository;
            _context = context;
        }


        public  IActionResult Post(TEntity entity)
        {
                _genericRepository.Create(entity);
                _context.SaveChanges();
                return Json(true);

        }

        public IActionResult Delete(long id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity != null)
            {
                _genericRepository.Delete(entity);
                _context.SaveChanges();
                return Json(true);
            }
            return Json(false);

        }

        public IActionResult Get()
        {
            var entities = _genericRepository.GetAll();
            return Json(entities);
        }

        public IActionResult GetEntityById(int id)
        {
            var entity = _genericRepository.GetById(id);
            if (entity is null)
            {
                return Json(false);
            }
            return Json(entity);
        }

        public IActionResult Put(TEntity entity)
        {

            _genericRepository.Update(entity);
            _context.SaveChanges();
            return Json(true);
        }



        public IActionResult IsletmeLookup()
        {
            var lookup = from i in _context.TblGeneralIsletmes
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }

        public IActionResult FirmaLookup()
        {
            var lookup = from i in _context.TblGeneralFirmas
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }

        public IActionResult SubeLookup()
        {
            var lookup = from i in _context.TblGeneralSubes
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }


        public IActionResult ModulLookup()
        {
            var lookup = from i in _context.TblGeneralModuls
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }

        public IActionResult GeneralApplicationLookup()
        {
            var lookup = from i in _context.TblGeneralApplications
                         orderby i.Application
                         select new
                         {
                             Value = i.Id,
                             Text = i.Application
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralRedDurumLookup()
        {
            var lookup = from i in _context.TblGeneralRedDurums
                         orderby i.Ad
                         select new
                         {
                             Value = i.Id,
                             Text = i.Ad
                         };
            return Json(lookup);
        }

        public IActionResult TblGeneralRedNedeniLookup()
        {
            var lookup = from i in _context.TblGeneralRedNedenis
                         orderby i.Ad
                         select new
                         {
                             Value = i.Id,
                             Text = i.Ad
                         };
            return Json(lookup);
        }

        public IActionResult TblGeneralRedYeriLookup()
        {
            var lookup = from i in _context.TblGeneralRedYeris
                         orderby i.Ad
                         select new
                         {
                             Value = i.Id,
                             Text = i.Ad
                         };
            return Json(lookup);
        }


        public IActionResult TbLCmsAppMenuLookup()
        {
            var lookup = from i in _context.TblCmsappMenus
                         orderby i.Name
                         select new
                         {
                             Value = i.Id,
                             Text = i.Name
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralRehberLookup()
        {
            var lookup = from i in _context.TblGeneralRehbers
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralUlkesLookup()
        {
            var lookup = from i in _context.TblGeneralUlkes
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralIlsLookup()
        {
            var lookup = from i in _context.TblGeneralIls
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralIlcesLookup()
        {
            var lookup = from i in _context.TblGeneralIlces
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralKoysLookup()
        {
            var lookup = from i in _context.TblGeneralKoys
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }

        public IActionResult TblSsoKullaniciLookup()
        {
            var lookup = from i in _context.TblSsokullanicis
                         orderby i.Name
                         select new
                         {
                             Value = i.Id,
                             Text = i.Name
                         };
            return Json(lookup);
        }



        public IActionResult TblGeneralParaBirimiLookup()
        {
            var lookup = from i in _context.TblGeneralParaBirimis
                         orderby i.KisaAdi
                         select new
                         {
                             Value = i.Id,
                             Text = i.KisaAdi
                         };
            return Json(lookup);
        }


        public IActionResult TblSocialFeedTipLookup()
        {
            var lookup = from i in _context.TblSocialFeedTips
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }

        public IActionResult TblSocialFeedLookup()
        {
            var lookup = from i in _context.TblSocialFeedTips
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }


        public IActionResult TblSocialLinkLookup()
        {
            var lookup = from i in _context.TblSocialLinks
                         orderby i.KisaTanim
                         select new
                         {
                             Value = i.Id,
                             Text = i.KisaTanim
                         };
            return Json(lookup);
        }

        public IActionResult TblSsodavetLookup()
        {
            var lookup = from i in _context.TblSsodavets
                         orderby i.Email
                         select new
                         {
                             Value = i.Id,
                             Text = i.Email
                         };
            return Json(lookup);
        }



        public IActionResult TblSsokullaniciTipiLookup()
        {
            var lookup = from i in _context.TblSsokullaniciTipis
                         orderby i.Aciklama
                         select new
                         {
                             Value = i.Id,
                             Text = i.Aciklama
                         };
            return Json(lookup);
        }

        public IActionResult TblFileDosyaSsistemiLookup()
        {
            var lookup = from i in _context.TblFileDosyaSistemis
                         orderby i.Ad
                         select new
                         {
                             Value = i.Id,
                             Text = i.Ad
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralBankaLookup()
        {
            var lookup = from i in _context.TblGeneralBankas
                         orderby i.Adi
                         select new
                         {
                             Value = i.Id,
                             Text = i.Adi
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralNavigationLookup()
        {
            var lookup = from i in _context.TblCmsappNavigations
                         orderby i.Name
                         select new
                         {
                             Value = i.Id,
                             Text = i.Name
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralKullaniciGrupTanimLookup()
        {
            var lookup = from i in _context.TblGeneralKullaniciGrupTanims
                         orderby i.Kod
                         select new
                         {
                             Value = i.Id,
                             Text = i.Kod
                         };
            return Json(lookup);
        }


        public IActionResult TblGeneralIslemTipiLookup()
        {
            var lookup = from i in _context.TblGeneralIslemTipis
                         orderby i.IslemTipi
                         select new
                         {
                             Value = i.IslemTipiId,
                             Text = i.IslemTipi
                         };
            return Json(lookup);
        }

        public IActionResult TblGeneralEFatMukellefLookup()
        {
            var lookup = from i in _context.TblGeneralEfatMukellefs
                         orderby i.Unvan
                         select new
                         {
                             Value = i.Id,
                             Text = i.Unvan
                         };
            return Json(lookup);
        }



        public IActionResult TblDigiBIDatabaselerLookup()
        {
            var lookup = from i in _context.TblDigiBidatabaselers
                         orderby i.DatabaseName
                         select new
                         {
                             Value = i.Id,
                             Text = i.DatabaseName
                         };
            return Json(lookup);
        }

        public IActionResult TblDigiBIDosyaSistemiLookup()
        {
            var lookup = from i in _context.TblDigiBidosyaSistemis
                         orderby i.Ad
                         select new
                         {
                             Value = i.Id,
                             Text = i.Ad
                         };
            return Json(lookup);
        }

    }
}
