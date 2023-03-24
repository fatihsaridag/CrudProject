using CrudProject.Models;

namespace CrudProject.ViewModels
{
    public class TblCmsAppMenuViewModel
    {
        public IEnumerable<TblCmsappMenu> TblCmsappMenues { get; set; }
        public IEnumerable<TblCmsappNavigation> TblCmsappNavigations { get; set; }
    }
}
