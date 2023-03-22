using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralIslemSeriTanimlamaController : BaseController<TblGeneralIslemSeriTanimlama>
    {
        public TblGeneralIslemSeriTanimlamaController(IGenericRepository<TblGeneralIslemSeriTanimlama> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
