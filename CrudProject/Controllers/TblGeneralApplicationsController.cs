using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using CrudProject.Models;
using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.RepositoryManager.Abstract;

namespace CrudProject.Controllers
{
    [Route("api/[controller]/[action]")]
    public class TblGeneralApplicationsController : BaseController<TblGeneralApplication> , IBaseController<TblGeneralApplication>
    {


        public TblGeneralApplicationsController(IGenericRepository<TblGeneralApplication> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }




        //public IActionResult Post(TblGeneralApplication entity)
        //{
        //    if (entity != null)
        //    {
        //        _repositoryManager.TblGeneralApplication.Create(entity);
        //        _repositoryManager.Save();
        //        return Json(true);
        //    }
        //    return Json(false);

        //}

        //public IActionResult Put(TblGeneralApplication entity)
        //{
        //    if (entity != null)
        //    {
        //        _repositoryManager.TblGeneralApplication.Update(entity);
        //        _repositoryManager.Save();
        //        return Json(true);
        //    }
        //    return Json(false);

        //}




    }
}