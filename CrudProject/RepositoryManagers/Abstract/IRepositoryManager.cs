using CrudProject.GenericRepository.Abstract;

namespace CrudProject.RepositoryManager.Abstract
{
    public interface IRepositoryManager
    {
        IDataProtectionKeysRepository DataProtectionKeys { get; }
        ITblCMSAppMenuRepository TblCMSAppMenus { get; }
        ITblCMSAppNavigationRepository TblCmsAppNavigationRepository { get; }
        void Save();
    }
}
