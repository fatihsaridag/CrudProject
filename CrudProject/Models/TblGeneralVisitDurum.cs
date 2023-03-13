using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralVisitDurum
    {
        public int DurumTipi { get; set; }
        public string Aciklama { get; set; } = null!;
    }
}
