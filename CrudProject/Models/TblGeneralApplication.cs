using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralApplication
    {
        public TblGeneralApplication()
        {
            TblGeneralIslemKilits = new HashSet<TblGeneralIslemKilit>();
            TblGeneralIsletmeApplications = new HashSet<TblGeneralIsletmeApplication>();
            TblGeneralKullaniciEkAlans = new HashSet<TblGeneralKullaniciEkAlan>();
            TblGeneralUserApplications = new HashSet<TblGeneralUserApplication>();
            TblSsoyonlendirmes = new HashSet<TblSsoyonlendirme>();
        }

        public long Id { get; set; }
        public bool Silindi { get; set; } //+
        public long Revizyon { get; set; }  //+
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }  //+
        public bool Onaylandi { get; set; }  //+
        public int Sira { get; set; }  //+
        public string Application { get; set; } = null!;  //+
        public string? Description { get; set; }  //+
        public string? Path { get; set; }  //+
        public string? IconHtml { get; set; }  //+
        public string? BaseUrl { get; set; }      //+
        public bool SystemApp { get; set; }
        public bool? ParametreAktif { get; set; }  //+
        public string? BaseApiOnEk { get; set; }  //+
        public bool DisariAcik { get; set; }

        public virtual ICollection<TblGeneralIslemKilit> TblGeneralIslemKilits { get; set; }
        public virtual ICollection<TblGeneralIsletmeApplication> TblGeneralIsletmeApplications { get; set; }
        public virtual ICollection<TblGeneralKullaniciEkAlan> TblGeneralKullaniciEkAlans { get; set; }
        public virtual ICollection<TblGeneralUserApplication> TblGeneralUserApplications { get; set; }
        public virtual ICollection<TblSsoyonlendirme> TblSsoyonlendirmes { get; set; }
    }
}
