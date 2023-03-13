using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralOnayDurum
    {
        public long DurumId { get; set; }
        public string OnayDurumu { get; set; } = null!;
    }
}
