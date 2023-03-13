using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralEevrakDurumlari
    {
        public long Id { get; set; }
        public int DurumId { get; set; }
        public string BelgeDurumu { get; set; } = null!;
    }
}
