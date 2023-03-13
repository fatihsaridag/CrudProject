using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblSocialFeedTip
    {
        public TblSocialFeedTip()
        {
            TblSocialFeeds = new HashSet<TblSocialFeed>();
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
        public string Adi { get; set; } = null!;
        public string Aciklama { get; set; } = null!;

        public virtual ICollection<TblSocialFeed> TblSocialFeeds { get; set; }
    }
}
