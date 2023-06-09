﻿using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSocialFeedKisiController : BaseController<TblSocialFeedKisi>
    {
        public TblSocialFeedKisiController(IGenericRepository<TblSocialFeedKisi> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
