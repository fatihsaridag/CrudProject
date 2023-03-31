using MessagePack;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrudProject.Models
{
    public partial class TblGeneralGondSekli
    {
        public long GonderimSekliId { get; set; }
        public string? GonderimSekli { get; set; }
    }
}
