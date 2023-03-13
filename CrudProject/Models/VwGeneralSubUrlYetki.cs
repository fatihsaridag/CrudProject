using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwGeneralSubUrlYetki
    {
        public int Id { get; set; }
        public int Silindi { get; set; }
        public int Revizyon { get; set; }
        public int IsletmeId { get; set; }
        public int FirmaId { get; set; }
        public int SubeId { get; set; }
        public int? OlusturanId { get; set; }
        public int? OlusturmaTarih { get; set; }
        public int? DegistirenId { get; set; }
        public int? DegisiklikTarih { get; set; }
        public int? Guid { get; set; }
        public int? Aktif { get; set; }
        public int? Onaylandi { get; set; }
        public int? Yil { get; set; }
        public int? KullaniciId { get; set; }
        public int? KulGrupId { get; set; }
        public int? NavigationId { get; set; }
        public int? GrupKulId { get; set; }
        public int? Name { get; set; }
        public int? SubUrl { get; set; }
        public int? AppGuid { get; set; }
        public int? OrtKulId { get; set; }
    }
}
