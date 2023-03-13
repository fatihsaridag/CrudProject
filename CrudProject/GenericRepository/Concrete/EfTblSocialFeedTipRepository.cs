﻿using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblSocialFeedTipRepository : EfGenericRepository<TblSocialFeedTip>, ITblSocialFeedTipRepository
    {
        public EfTblSocialFeedTipRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
