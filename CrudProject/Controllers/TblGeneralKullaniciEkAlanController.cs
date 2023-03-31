using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralKullaniciEkAlanController : BaseController<TblGeneralKullaniciEkAlan>
    {
   
        public TblGeneralKullaniciEkAlanController(IGenericRepository<TblGeneralKullaniciEkAlan> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        
        }






    }
}
