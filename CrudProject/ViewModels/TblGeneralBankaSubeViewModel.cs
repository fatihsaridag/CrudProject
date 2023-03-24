using CrudProject.Models;

namespace CrudProject.ViewModels
{
    public class TblGeneralBankaSubeViewModel
    {
        public IEnumerable<TblGeneralBankaSube> TblGeneralBankaSubes{ get; set; }
        public IEnumerable<TblGeneralIl> TblGeneralIls { get; set; }
        public IEnumerable<TblGeneralIlce> TblGeneralIlces { get; set; }
        public IEnumerable<TblGeneralBanka> TblGeneralBankas { get; set; }
    }
}
