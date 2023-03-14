using CrudProject.GenericRepository;
using CrudProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class DataProtectionKeysController : BaseController<DataProtectionKey>, IBaseController<DataProtectionKey>
    {
        public DataProtectionKeysController(IGenericRepository<DataProtectionKey> genericRepository) : base(genericRepository)
        {
        }



    }
}
