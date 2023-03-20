using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;
using CrudProject.ViewModels.TblCmsAppMenuViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace CrudProject.Controllers
{
    public class TblCMSAppMenuController :  BaseController<TblCmsappMenu>, IBaseController<TblCmsappMenu>
    {
        private readonly IRepositoryManager _repositoryManager;


        public TblCMSAppMenuController(IRepositoryManager repositoryManager,IGenericRepository<TblCmsappMenu> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
            _repositoryManager = repositoryManager;
        }

    }
}
