using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralIslemTipi
    {
        public TblGeneralIslemTipi()
        {
            TblGeneralBelgeDurumlaris = new HashSet<TblGeneralBelgeDurumlari>();
            TblGeneralIslemSeriTanimlamas = new HashSet<TblGeneralIslemSeriTanimlama>();
            TblGeneralIslemSeris = new HashSet<TblGeneralIslemSeri>();
        }

        public long IslemTipiId { get; set; }
        public string IslemTipi { get; set; } = null!;
        public bool IslemSeriGoster { get; set; }

        public virtual ICollection<TblGeneralBelgeDurumlari> TblGeneralBelgeDurumlaris { get; set; }
        public virtual ICollection<TblGeneralIslemSeriTanimlama> TblGeneralIslemSeriTanimlamas { get; set; }
        public virtual ICollection<TblGeneralIslemSeri> TblGeneralIslemSeris { get; set; }
    }
}
