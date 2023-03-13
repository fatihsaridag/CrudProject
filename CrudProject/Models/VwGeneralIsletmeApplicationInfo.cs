using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwGeneralIsletmeApplicationInfo
    {
        public string Application { get; set; } = null!;
        public string? BaseApiOnEk { get; set; }
        public long IsletmeId { get; set; }
    }
}
