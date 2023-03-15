using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblSSOIzinController : BaseController<TblSsoizin>, IBaseController<TblSsoizin>
    {
        public TblSSOIzinController(IGenericRepository<TblSsoizin> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
