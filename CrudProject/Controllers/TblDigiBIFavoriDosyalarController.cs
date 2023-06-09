﻿using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblDigiBIFavoriDosyalarController : BaseController<TblDigiBifavoriDosyalar>
    {
        public TblDigiBIFavoriDosyalarController(IGenericRepository<TblDigiBifavoriDosyalar> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
