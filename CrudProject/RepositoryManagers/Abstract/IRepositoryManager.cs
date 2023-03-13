using CrudProject.GenericRepository.Abstract;

namespace CrudProject.RepositoryManager.Abstract
{
    public interface IRepositoryManager
    {
        IDataProtectionKeysRepository DataProtectionKeys { get; }
        void Save();
    }
}
