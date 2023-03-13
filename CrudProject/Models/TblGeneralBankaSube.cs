using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralBankaSube
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
        public long BankaId { get; set; }
        public string Kodu { get; set; } = null!;
        public long IlId { get; set; }
        public long IlceId { get; set; }
        public string Adi { get; set; } = null!;
        public string Adres { get; set; } = null!;
        public string Telefon { get; set; } = null!;
        public string Faks { get; set; } = null!;
        public string? GenelKodu { get; set; }
        public string? Erpkodu { get; set; }

        public virtual TblGeneralBanka Banka { get; set; } = null!;
        public virtual TblGeneralIl Il { get; set; } = null!;
        public virtual TblGeneralIlce IlNavigation { get; set; } = null!;
    }
}
