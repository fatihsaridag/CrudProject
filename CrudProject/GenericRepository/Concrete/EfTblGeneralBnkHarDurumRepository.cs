﻿using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;

namespace CrudProject.GenericRepository.Concrete
{
    public class EfTblGeneralBnkHarDurumRepository : EfGenericRepository<TblGeneralBnkHarDurum>
    {
        public EfTblGeneralBnkHarDurumRepository(OctaPullContext context) : base(context)
        {
        }
    }
}
