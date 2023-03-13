﻿using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralGunRepository : EfGenericRepository<TblGeneralGun>, ITblGeneralGunRepository
    {
        public EfTblGeneralGunRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
