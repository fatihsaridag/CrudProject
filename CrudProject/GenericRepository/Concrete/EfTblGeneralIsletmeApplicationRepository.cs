﻿using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralIsletmeApplicationRepository : EfGenericRepository<TblGeneralIsletmeApplication>
    {
        public EfTblGeneralIsletmeApplicationRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
