using Microsoft.AspNetCore.Mvc.Rendering;

namespace CrudProject.ViewModels.TblCmsAppMenuViewModels
{
    public class TblCmsAppMenuCreateViewModel
    {
        public string SelectedNavigation { get; set; }

        public List<SelectListItem> NavigationSelectList { get; set; }
    }
}
