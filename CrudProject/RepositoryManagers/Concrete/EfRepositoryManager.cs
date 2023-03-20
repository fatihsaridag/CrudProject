using CrudProject.GenericRepository.Abstract;
using CrudProject.GenericRepository.Concrete;
using CrudProject.Models;
using CrudProject.RepositoryManager.Abstract;

namespace CrudProject.RepositoryManager.Concrete
{
    public class EfRepositoryManager : IRepositoryManager
    {
        private readonly OctaPullContext _context;
        private EfDataProtectionKeysRepository _dataProtectionKeysRepository;
        private EfTblCMSAppMenuRepository _tblCmsAppMenuRepository;
        private EfTblCMSAppNavigationRepository _tblCmsAppNavigationRepository;


        public EfRepositoryManager(OctaPullContext context)
        {
            _context = context;
        }


        public IDataProtectionKeysRepository DataProtectionKeys => _dataProtectionKeysRepository ?? new EfDataProtectionKeysRepository(_context);

        public ITblCMSAppMenuRepository TblCMSAppMenus => _tblCmsAppMenuRepository ?? new EfTblCMSAppMenuRepository(_context);

        public ITblCMSAppNavigationRepository TblCmsAppNavigationRepository => _tblCmsAppNavigationRepository ?? new EfTblCMSAppNavigationRepository(_context);

        public void Save()
        {
            _context.SaveChanges();
        }
    }
}
