using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class TblGeneralEFatMukellefMailController : BaseController<TblGeneralEfatMukellefMail>
    {
        public TblGeneralEFatMukellefMailController(IGenericRepository<TblGeneralEfatMukellefMail> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
