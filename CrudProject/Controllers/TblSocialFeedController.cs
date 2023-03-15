﻿using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSocialFeedController : BaseController<TblSocialFeed>, IBaseController<TblSocialFeed>
    {
        public TblSocialFeedController(IGenericRepository<TblSocialFeed> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}