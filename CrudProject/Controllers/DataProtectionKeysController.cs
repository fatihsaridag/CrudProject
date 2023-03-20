using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using CrudProject.ViewModels.TblCmsAppMenuViewModels;
using Mapster;
using Microsoft.AspNetCore.Mvc;

namespace CrudProject.Controllers
{
    public class DataProtectionKeysController :BaseController<DataProtectionKey>, IBaseController<DataProtectionKey>
    {
        public DataProtectionKeysController(IGenericRepository<DataProtectionKey> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}
