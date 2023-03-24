using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblFileDosyaSistemi : BaseController<TblFileDosyaSistemi>, IBaseController<TblFileDosyaSistemi>
    {
        public TblFileDosyaSistemi(IGenericRepository<TblFileDosyaSistemi> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
