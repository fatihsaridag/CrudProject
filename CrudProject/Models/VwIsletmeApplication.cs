using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class VwIsletmeApplication
    {
        public long Id { get; set; }
        public long IsletmeId { get; set; }
        public long ApplicationId { get; set; }
        public string? Application { get; set; }
    }
}
