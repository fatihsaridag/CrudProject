using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrudProject.Models
{

    [Table("TblCmsappMenu")]
    public partial class TblCmsappMenu
    {
        public TblCmsappMenu()
        {
            InverseMaster = new HashSet<TblCmsappMenu>();
        }

        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public Guid Guid { get; set; }
        public bool? Aktif { get; set; }
        public bool? Onaylandi { get; set; }
        public long ApplicationId { get; set; }
        public int Sira { get; set; }
        public string Name { get; set; } = null!;
        public long NavigationId { get; set; }
        public string? Icon { get; set; }
        public long? MasterId { get; set; }
        public bool YeniSekmedeAc { get; set; }
        public bool DisUrl { get; set; }

        public virtual TblCmsappMenu? Master { get; set; }
        public virtual TblCmsappNavigation Navigation { get; set; } = null!;
        public virtual ICollection<TblCmsappMenu> InverseMaster { get; set; }

    }
}
