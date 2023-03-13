using System;
using System.Collections.Generic;

namespace CrudProject.Models
{
    public partial class TblGeneralEfatMukellef
    {
        public TblGeneralEfatMukellef()
        {
            TblGeneralEfatMukellefMails = new HashSet<TblGeneralEfatMukellefMail>();
        }

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
        public string Vkn { get; set; } = null!;
        public string Unvan { get; set; } = null!;
        public int Tip { get; set; }
        public DateTime Tarih { get; set; }
        public string? Erpkodu { get; set; }

        public virtual ICollection<TblGeneralEfatMukellefMail> TblGeneralEfatMukellefMails { get; set; }
    }
}
