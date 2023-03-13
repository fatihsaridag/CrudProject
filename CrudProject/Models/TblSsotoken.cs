using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblSsotoken
    {
        public long Id { get; set; }
        public bool Silindi { get; set; }
        public long Revizyon { get; set; }
        public DateTime OlusturmaTarih { get; set; }
        public DateTime? DegisiklikTarih { get; set; }
        public long OlusturanId { get; set; }
        public long? DegistirenId { get; set; }
        public Guid Guid { get; set; }
        public bool Aktif { get; set; }
        public bool Onaylandi { get; set; }
        public long UserId { get; set; }
        public Guid RequestId { get; set; }
        public Guid AuthToken { get; set; }
        public Guid AccessToken { get; set; }
        public DateTime IssuedOn { get; set; }
        public DateTime ExpiresOn { get; set; }
        public bool IsAutoLoginToken { get; set; }
        public string AuthCode { get; set; } = null!;
        public bool Killed { get; set; }
        public string? KillMsg { get; set; }
        public string? Source { get; set; }
        public DateTime LastOperationDate { get; set; }

        public virtual TblSsokullanici User { get; set; } = null!;
    }
}
