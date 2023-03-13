using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblSocialLink
    {
        public TblSocialLink()
        {
            TblSocialFeedLinks = new HashSet<TblSocialFeedLink>();
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
        public string Tanim { get; set; } = null!;
        public string? KisaTanim { get; set; }
        public string Link { get; set; } = null!;
        public long? CariId { get; set; }

        public virtual ICollection<TblSocialFeedLink> TblSocialFeedLinks { get; set; }
    }
}
