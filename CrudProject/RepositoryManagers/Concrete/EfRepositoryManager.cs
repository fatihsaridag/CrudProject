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

        public EfRepositoryManager(OctaPullContext context)
        {
            _context = context;
        }


        public IDataProtectionKeysRepository DataProtectionKeys => _dataProtectionKeysRepository ?? new EfDataProtectionKeysRepository(_context);

        public void Save()
        {
            _context.SaveChanges();
        }
    }
}
