using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralBelgeDurumlari
    {
        public long Id { get; set; }
        public int DurumId { get; set; }
        public long IslemTip { get; set; }
        public string BelgeDurumu { get; set; } = null!;

        public virtual TblGeneralIslemTipi IslemTipNavigation { get; set; } = null!;
    }
}
