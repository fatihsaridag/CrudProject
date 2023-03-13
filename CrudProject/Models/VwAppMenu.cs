using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwAppMenu
    {
        public int? ApplicationId { get; set; }
        public int Id { get; set; }
        public int? Sira { get; set; }
        public int? NavigationId { get; set; }
        public int? Icon { get; set; }
        public int? MasterId { get; set; }
        public int? Name { get; set; }
        public int? SubUrl { get; set; }
        public int? FavoriId { get; set; }
        public int FavoriMi { get; set; }
        public int? YeniSekmedeAc { get; set; }
        public int? DisUrl { get; set; }
        public string AppGuid { get; set; } = null!;
    }
}
