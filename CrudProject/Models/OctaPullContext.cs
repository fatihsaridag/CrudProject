using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Caching.Memory;

namespace CrudProject.Models
{
    public partial class OctaPullContext : DbContext
    {
        public OctaPullContext(DbContextOptions<OctaPullContext> options)
            : base(options)
        {
        }

        public virtual DbSet<DataProtectionKey> DataProtectionKeys { get; set; } = null!;
        public virtual DbSet<TblCmsVersion> TblCmsVersions { get; set; } = null!;
        public virtual DbSet<TblCmsappMenu> TblCmsappMenus { get; set; } = null!;
        public virtual DbSet<TblCmsappNavigation> TblCmsappNavigations { get; set; } = null!;
        public virtual DbSet<TblCmsnavYetki> TblCmsnavYetkis { get; set; } = null!;
        public virtual DbSet<TblDigiBidatabaseDosyalar> TblDigiBidatabaseDosyalars { get; set; } = null!;
        public virtual DbSet<TblDigiBidatabaseler> TblDigiBidatabaselers { get; set; } = null!;
        public virtual DbSet<TblDigiBidosyaSistemi> TblDigiBidosyaSistemis { get; set; } = null!;
        public virtual DbSet<TblDigiBifavoriDosyalar> TblDigiBifavoriDosyalars { get; set; } = null!;
        public virtual DbSet<TblDigiBipaylasim> TblDigiBipaylasims { get; set; } = null!;
        public virtual DbSet<TblFileDosyaSistemi> TblFileDosyaSistemis { get; set; } = null!;
        public virtual DbSet<TblFileFavoriDosyalar> TblFileFavoriDosyalars { get; set; } = null!;
        public virtual DbSet<TblGeneralApplication> TblGeneralApplications { get; set; } = null!;
        public virtual DbSet<TblGeneralBanka> TblGeneralBankas { get; set; } = null!;
        public virtual DbSet<TblGeneralBankaSube> TblGeneralBankaSubes { get; set; } = null!;
        public virtual DbSet<TblGeneralBelgeDurumlari> TblGeneralBelgeDurumlaris { get; set; } = null!;
        public virtual DbSet<TblGeneralBnkBelgeDurum> TblGeneralBnkBelgeDurums { get; set; } = null!;
        public virtual DbSet<TblGeneralBnkEftDurum> TblGeneralBnkEftDurums { get; set; } = null!;
        public virtual DbSet<TblGeneralBnkHarDurum> TblGeneralBnkHarDurums { get; set; } = null!;
        public virtual DbSet<TblGeneralBnkHarKynk> TblGeneralBnkHarKynks { get; set; } = null!;
        public virtual DbSet<TblGeneralBnkHarTip> TblGeneralBnkHarTips { get; set; } = null!;
        public virtual DbSet<TblGeneralDil> TblGeneralDils { get; set; } = null!;
        public virtual DbSet<TblGeneralEevrakDurumlari> TblGeneralEevrakDurumlaris { get; set; } = null!;
        public virtual DbSet<TblGeneralEfatMukellef> TblGeneralEfatMukellefs { get; set; } = null!;
        public virtual DbSet<TblGeneralEfatMukellefMail> TblGeneralEfatMukellefMails { get; set; } = null!;
        public virtual DbSet<TblGeneralFavoriler> TblGeneralFavorilers { get; set; } = null!;
        public virtual DbSet<TblGeneralFirma> TblGeneralFirmas { get; set; } = null!;
        public virtual DbSet<TblGeneralGondSekli> TblGeneralGondSeklis { get; set; } = null!;
        public virtual DbSet<TblGeneralGrupKullanici> TblGeneralGrupKullanicis { get; set; } = null!;
        public virtual DbSet<TblGeneralGun> TblGeneralGuns { get; set; } = null!;
        public virtual DbSet<TblGeneralIl> TblGeneralIls { get; set; } = null!;
        public virtual DbSet<TblGeneralIlce> TblGeneralIlces { get; set; } = null!;
        public virtual DbSet<TblGeneralIntegration> TblGeneralIntegrations { get; set; } = null!;
        public virtual DbSet<TblGeneralIslemBelgeTip> TblGeneralIslemBelgeTips { get; set; } = null!;
        public virtual DbSet<TblGeneralIslemKilit> TblGeneralIslemKilits { get; set; } = null!;
        public virtual DbSet<TblGeneralIslemSeri> TblGeneralIslemSeris { get; set; } = null!;
        public virtual DbSet<TblGeneralIslemSeriTanimlama> TblGeneralIslemSeriTanimlamas { get; set; } = null!;
        public virtual DbSet<TblGeneralIslemTipi> TblGeneralIslemTipis { get; set; } = null!;
        public virtual DbSet<TblGeneralIsletme> TblGeneralIsletmes { get; set; } = null!;
        public virtual DbSet<TblGeneralIsletmeApplication> TblGeneralIsletmeApplications { get; set; } = null!;
        public virtual DbSet<TblGeneralKoy> TblGeneralKoys { get; set; } = null!;
        public virtual DbSet<TblGeneralKulGrupEkran> TblGeneralKulGrupEkrans { get; set; } = null!;
        public virtual DbSet<TblGeneralKullaniciEkAlan> TblGeneralKullaniciEkAlans { get; set; } = null!;
        public virtual DbSet<TblGeneralKullaniciGrupTanim> TblGeneralKullaniciGrupTanims { get; set; } = null!;
        public virtual DbSet<TblGeneralLidosDurum> TblGeneralLidosDurums { get; set; } = null!;
        public virtual DbSet<TblGeneralLidosElusTip> TblGeneralLidosElusTips { get; set; } = null!;
        public virtual DbSet<TblGeneralLidosTalepTip> TblGeneralLidosTalepTips { get; set; } = null!;
        public virtual DbSet<TblGeneralModul> TblGeneralModuls { get; set; } = null!;
        public virtual DbSet<TblGeneralOdemeTip> TblGeneralOdemeTips { get; set; } = null!;
        public virtual DbSet<TblGeneralOnayDurum> TblGeneralOnayDurums { get; set; } = null!;
        public virtual DbSet<TblGeneralParaBirimi> TblGeneralParaBirimis { get; set; } = null!;
        public virtual DbSet<TblGeneralRedDurum> TblGeneralRedDurums { get; set; } = null!;
        public virtual DbSet<TblGeneralRedDurumYetki> TblGeneralRedDurumYetkis { get; set; } = null!;
        public virtual DbSet<TblGeneralRedNedenYeri> TblGeneralRedNedenYeris { get; set; } = null!;
        public virtual DbSet<TblGeneralRedNedenYetki> TblGeneralRedNedenYetkis { get; set; } = null!;
        public virtual DbSet<TblGeneralRedNedeni> TblGeneralRedNedenis { get; set; } = null!;
        public virtual DbSet<TblGeneralRedYeri> TblGeneralRedYeris { get; set; } = null!;
        public virtual DbSet<TblGeneralRehber> TblGeneralRehbers { get; set; } = null!;
        public virtual DbSet<TblGeneralRehberColumn> TblGeneralRehberColumns { get; set; } = null!;
        public virtual DbSet<TblGeneralRehberView> TblGeneralRehberViews { get; set; } = null!;
        public virtual DbSet<TblGeneralSube> TblGeneralSubes { get; set; } = null!;
        public virtual DbSet<TblGeneralSubeKullanici> TblGeneralSubeKullanicis { get; set; } = null!;
        public virtual DbSet<TblGeneralUlke> TblGeneralUlkes { get; set; } = null!;
        public virtual DbSet<TblGeneralUserApplication> TblGeneralUserApplications { get; set; } = null!;
        public virtual DbSet<TblGeneralVergiDairesi> TblGeneralVergiDairesis { get; set; } = null!;
        public virtual DbSet<TblGeneralVisitDurum> TblGeneralVisitDurums { get; set; } = null!;
        public virtual DbSet<TblOption> TblOptions { get; set; } = null!;
        public virtual DbSet<TblSocialFeed> TblSocialFeeds { get; set; } = null!;
        public virtual DbSet<TblSocialFeedKisi> TblSocialFeedKisis { get; set; } = null!;
        public virtual DbSet<TblSocialFeedLink> TblSocialFeedLinks { get; set; } = null!;
        public virtual DbSet<TblSocialFeedTip> TblSocialFeedTips { get; set; } = null!;
        public virtual DbSet<TblSocialLink> TblSocialLinks { get; set; } = null!;
        public virtual DbSet<TblSsodavet> TblSsodavets { get; set; } = null!;
        public virtual DbSet<TblSsodavetDetay> TblSsodavetDetays { get; set; } = null!;
        public virtual DbSet<TblSsohost> TblSsohosts { get; set; } = null!;
        public virtual DbSet<TblSsoizin> TblSsoizins { get; set; } = null!;
        public virtual DbSet<TblSsokullanici> TblSsokullanicis { get; set; } = null!;
        public virtual DbSet<TblSsokullaniciTipi> TblSsokullaniciTipis { get; set; } = null!;
        public virtual DbSet<TblSsotoken> TblSsotokens { get; set; } = null!;
        public virtual DbSet<TblSsoyonlendirme> TblSsoyonlendirmes { get; set; } = null!;
        public virtual DbSet<VwAlpatum> VwAlpata { get; set; } = null!;
        public virtual DbSet<VwAppMenu> VwAppMenus { get; set; } = null!;
        public virtual DbSet<VwFavorilerInfo> VwFavorilerInfos { get; set; } = null!;
        public virtual DbSet<VwFeed> VwFeeds { get; set; } = null!;
        public virtual DbSet<VwGeneralFirmInfo> VwGeneralFirmInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralGrupKullanici> VwGeneralGrupKullanicis { get; set; } = null!;
        public virtual DbSet<VwGeneralGrupKullaniciInfo> VwGeneralGrupKullaniciInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralIsletmeApplicationInfo> VwGeneralIsletmeApplicationInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralIsletmeInfo> VwGeneralIsletmeInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralPasifKulanici> VwGeneralPasifKulanicis { get; set; } = null!;
        public virtual DbSet<VwGeneralRedDurumYetkiGenel> VwGeneralRedDurumYetkiGenels { get; set; } = null!;
        public virtual DbSet<VwGeneralRedNedenYeriInfo> VwGeneralRedNedenYeriInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralRedNedenYetkiDurumInfo> VwGeneralRedNedenYetkiDurumInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralRedNedenYetkiInfo> VwGeneralRedNedenYetkiInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralRedNedeniGenel> VwGeneralRedNedeniGenels { get; set; } = null!;
        public virtual DbSet<VwGeneralSubUrlFullYetki> VwGeneralSubUrlFullYetkis { get; set; } = null!;
        public virtual DbSet<VwGeneralSubUrlYetki> VwGeneralSubUrlYetkis { get; set; } = null!;
        public virtual DbSet<VwGeneralSubeInfo> VwGeneralSubeInfos { get; set; } = null!;
        public virtual DbSet<VwGeneralSubeKulInfo> VwGeneralSubeKulInfos { get; set; } = null!;
        public virtual DbSet<VwIsletmeApplication> VwIsletmeApplications { get; set; } = null!;
        public virtual DbSet<VwKullaniciEkAlan> VwKullaniciEkAlans { get; set; } = null!;
        public virtual DbSet<VwSubeKullanici> VwSubeKullanicis { get; set; } = null!;
        public virtual DbSet<VwUserApplication> VwUserApplications { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=OctaPull;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TblCmsVersion>(entity =>
            {
                entity.ToTable("TblCmsVersion");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Link).HasMaxLength(150);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Version).HasMaxLength(50);
            });

            modelBuilder.Entity<TblCmsappMenu>(entity =>
            {
                entity.ToTable("TblCMSAppMenu");

                entity.HasIndex(e => new { e.ApplicationId, e.Sira, e.MasterId }, "UK_TblCMSAppMenu_App_Sira_Master")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblCMSAppMenu_Guid")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Icon).HasMaxLength(250);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Master)
                    .WithMany(p => p.InverseMaster)
                    .HasForeignKey(d => d.MasterId)
                    .HasConstraintName("FK_TblCMSAppMenu_TblCMSAppMenu");

                entity.HasOne(d => d.Navigation)
                    .WithMany(p => p.TblCmsappMenus)
                    .HasForeignKey(d => d.NavigationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblCMSAppMenu_TblCMSAppNavigation");
            });

            modelBuilder.Entity<TblCmsappNavigation>(entity =>
            {
                entity.ToTable("TblCMSAppNavigation");

                entity.HasIndex(e => e.Guid, "UK_TblCMSAppNavigation_Guid")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Description).HasMaxLength(500);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.SubUrl)
                    .HasMaxLength(150)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TblCmsnavYetki>(entity =>
            {
                entity.ToTable("TblCMSNavYetki");
            });

            modelBuilder.Entity<TblDigiBidatabaseDosyalar>(entity =>
            {
                entity.ToTable("TblDigiBIDatabaseDosyalar");

                entity.HasIndex(e => e.Guid, "UK_TblDigiBIDatabaseDosyalar_Guid")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");
            });

            modelBuilder.Entity<TblDigiBidatabaseler>(entity =>
            {
                entity.ToTable("TblDigiBIDatabaseler");

                entity.HasIndex(e => e.Guid, "UK_TblDigiBIDatabaseler_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.Id }, "UK_TblDigiBIDatabaseler_Isletme_Id")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.BaglantiAdi).HasMaxLength(500);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblDigiBidatabaselers)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIDatabaseler_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblDigiBidatabaselers)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIDatabaseler_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblDigiBidatabaselers)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIDatabaseler_TblGeneralFirma");
            });

            modelBuilder.Entity<TblDigiBidosyaSistemi>(entity =>
            {
                entity.ToTable("TblDigiBIDosyaSistemi");

                entity.HasIndex(e => e.Guid, "UK_TblDigiBIDosyaSistemi_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.Id }, "UK_TblDigiBIDosyaSistemi_Isletme_Id")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblDigiBidosyaSistemis)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIDosyaSistemi_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblDigiBidosyaSistemis)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIDosyaSistemi_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblDigiBidosyaSistemis)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIDosyaSistemi_TblGeneralFirma");
            });

            modelBuilder.Entity<TblDigiBifavoriDosyalar>(entity =>
            {
                entity.ToTable("TblDigiBIFavoriDosyalar");

                entity.HasIndex(e => e.Guid, "UK_TblDigiBIFavoriDosyalar_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.Id }, "UK_TblDigiBIFavoriDosyalar_Isletme_Id")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblDigiBifavoriDosyalars)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIFavoriDosyalar_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblDigiBifavoriDosyalars)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIFavoriDosyalar_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblDigiBifavoriDosyalars)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIFavoriDosyalar_TblGeneralFirma");
            });

            modelBuilder.Entity<TblDigiBipaylasim>(entity =>
            {
                entity.ToTable("TblDigiBIPaylasim");

                entity.HasIndex(e => e.Guid, "UK_TblDigiBIPaylasim_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.Id }, "UK_TblDigiBIPaylasim_Isletme_Id")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblDigiBipaylasims)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIPaylasim_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblDigiBipaylasims)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIPaylasim_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblDigiBipaylasims)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblDigiBIPaylasim_TblGeneralFirma");
            });

            modelBuilder.Entity<TblFileDosyaSistemi>(entity =>
            {
                entity.ToTable("TblFileDosyaSistemi");

                entity.HasIndex(e => new { e.UstDosyaId, e.Aciklama }, "UK_TblFileDosyaSistemi_Aciklama")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblFileDosyaSistemi_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.Id }, "UK_TblFileDosyaSistemi_Isletme_Id")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(250);

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Modul).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblFileDosyaSistemis)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileDosyaSistemi_TblGeneralIsletme");

                entity.HasOne(d => d.Olusturan)
                    .WithMany(p => p.TblFileDosyaSistemis)
                    .HasForeignKey(d => d.OlusturanId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileDosyaSistemi_TblSSOKullanici");

                entity.HasOne(d => d.UstDosya)
                    .WithMany(p => p.InverseUstDosya)
                    .HasForeignKey(d => d.UstDosyaId)
                    .HasConstraintName("FK_TblFileDosyaSistemi_TblFileDosyaSistemi");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblFileDosyaSistemis)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileDosyaSistemi_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblFileDosyaSistemis)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileDosyaSistemi_TblGeneralFirma");
            });

            modelBuilder.Entity<TblFileFavoriDosyalar>(entity =>
            {
                entity.ToTable("TblFileFavoriDosyalar");

                entity.HasIndex(e => new { e.DosyaId, e.UserId }, "UK_TblFileFavoriDosyalar_Dosya_User")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblFileFavoriDosyalar_Guid")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Dosya)
                    .WithMany(p => p.TblFileFavoriDosyalars)
                    .HasForeignKey(d => d.DosyaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileFavoriDosyalar_TblFileDosyaSistemi");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblFileFavoriDosyalars)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileFavoriDosyalar_TblGeneralIsletme");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.TblFileFavoriDosyalars)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileFavoriDosyalar_TblSSOKullanici");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblFileFavoriDosyalars)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileFavoriDosyalar_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblFileFavoriDosyalars)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblFileFavoriDosyalar_TblGeneralFirma");
            });

            modelBuilder.Entity<TblGeneralApplication>(entity =>
            {
                entity.ToTable("TblGeneralApplication");

                entity.HasIndex(e => e.Application, "UK_TblGeneralApplication_App")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblGeneralApplication_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.Sira, "UK_TblGeneralApplication_Sira")
                    .IsUnique();

                entity.Property(e => e.Application).HasMaxLength(50);

                entity.Property(e => e.BaseApiOnEk).HasMaxLength(250);

                entity.Property(e => e.BaseUrl).HasMaxLength(500);

                entity.Property(e => e.Description).HasMaxLength(500);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.IconHtml)
                    .HasMaxLength(500)
                    .HasDefaultValueSql("(N'<i class=\"far fa-compass\"></i>')");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.ParametreAktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Path)
                    .HasMaxLength(150)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TblGeneralBanka>(entity =>
            {
                entity.ToTable("TblGeneralBanka");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralBanka_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.Kodu, "UK_TblGeneralBanka_Kodu")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Erpkodu)
                    .HasMaxLength(50)
                    .HasColumnName("ERPKodu");

                entity.Property(e => e.GenelKodu).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kodu).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<TblGeneralBankaSube>(entity =>
            {
                entity.ToTable("TblGeneralBankaSube");

                entity.HasIndex(e => new { e.BankaId, e.Id }, "UK_TblGeneralBankaSube_Banka_Id")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblGeneralBankaSube_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.Kodu, "UK_TblGeneralBankaSube_Kodu")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Adres).HasMaxLength(500);

                entity.Property(e => e.Erpkodu)
                    .HasMaxLength(50)
                    .HasColumnName("ERPKodu");

                entity.Property(e => e.Faks).HasMaxLength(50);

                entity.Property(e => e.GenelKodu).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kodu).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Telefon).HasMaxLength(50);

                entity.HasOne(d => d.Banka)
                    .WithMany(p => p.TblGeneralBankaSubes)
                    .HasForeignKey(d => d.BankaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralBankaSube_TblGeneralBanka");

                entity.HasOne(d => d.Il)
                    .WithMany(p => p.TblGeneralBankaSubes)
                    .HasForeignKey(d => d.IlId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralBankaSube_TblGeneralIl");

                entity.HasOne(d => d.IlNavigation)
                    .WithMany(p => p.TblGeneralBankaSubes)
                    .HasPrincipalKey(p => new { p.Id, p.IlId })
                    .HasForeignKey(d => new { d.IlceId, d.IlId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralBankaSube_TblGeneralIlce");
            });

            modelBuilder.Entity<TblGeneralBelgeDurumlari>(entity =>
            {
                entity.ToTable("TblGeneralBelgeDurumlari");

                entity.HasIndex(e => new { e.DurumId, e.IslemTip }, "UK_TblGeneralBelgeDurumlari_Durum_Islem")
                    .IsUnique();

                entity.Property(e => e.BelgeDurumu).HasMaxLength(50);

                entity.HasOne(d => d.IslemTipNavigation)
                    .WithMany(p => p.TblGeneralBelgeDurumlaris)
                    .HasForeignKey(d => d.IslemTip)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralBelgeDurumlari_TblGeneralIslemTipi");
            });

            modelBuilder.Entity<TblGeneralBnkBelgeDurum>(entity =>
            {
                entity.HasKey(e => e.DurumId)
                    .HasName("PK_TblGeneralBnkBelgeDurumlari");

                entity.ToTable("TblGeneralBnkBelgeDurum");

                entity.Property(e => e.DurumId).ValueGeneratedNever();

                entity.Property(e => e.BelgeDurumu).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralBnkEftDurum>(entity =>
            {
                entity.HasKey(e => e.DurumId);

                entity.ToTable("TblGeneralBnkEftDurum");

                entity.Property(e => e.DurumId).ValueGeneratedNever();

                entity.Property(e => e.HavaleEft).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralBnkHarDurum>(entity =>
            {
                entity.HasKey(e => e.TipId);

                entity.ToTable("TblGeneralBnkHarDurum");

                entity.Property(e => e.TipId).ValueGeneratedNever();

                entity.Property(e => e.HareketDurum).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralBnkHarKynk>(entity =>
            {
                entity.HasKey(e => e.KaynakTipId);

                entity.ToTable("TblGeneralBnkHarKynk");

                entity.Property(e => e.KaynakTipId).ValueGeneratedNever();

                entity.Property(e => e.Kaynak).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralBnkHarTip>(entity =>
            {
                entity.HasKey(e => e.TipId);

                entity.ToTable("TblGeneralBnkHarTip");

                entity.Property(e => e.TipId).ValueGeneratedNever();

                entity.Property(e => e.BankaHareket).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralDil>(entity =>
            {
                entity.ToTable("TblGeneralDil");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralDil_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.KisaKod, "UK_TblGeneralDil_KisaKod")
                    .IsUnique();

                entity.HasIndex(e => e.Kod, "UK_TblGeneralDil_Kod")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.KisaKod).HasMaxLength(50);

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.Lang).HasMaxLength(10);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<TblGeneralEevrakDurumlari>(entity =>
            {
                entity.ToTable("TblGeneralEEvrakDurumlari");

                entity.Property(e => e.BelgeDurumu).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralEfatMukellef>(entity =>
            {
                entity.ToTable("TblGeneralEFatMukellef");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralEFatMukellef_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.Vkn, "UK_TblGeneralEFatMukellef_Kodu")
                    .IsUnique();

                entity.Property(e => e.Erpkodu)
                    .HasMaxLength(50)
                    .HasColumnName("ERPKodu");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Unvan).HasMaxLength(250);

                entity.Property(e => e.Vkn)
                    .HasMaxLength(50)
                    .HasColumnName("VKN");
            });

            modelBuilder.Entity<TblGeneralEfatMukellefMail>(entity =>
            {
                entity.ToTable("TblGeneralEFatMukellefMail");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralEFatMukellefMail_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.MukellefId, e.EpostaAdres }, "UK_TblGeneralEFatMukellefMail_MukPosta")
                    .IsUnique();

                entity.Property(e => e.EpostaAdres).HasMaxLength(250);

                entity.Property(e => e.Erpkodu)
                    .HasMaxLength(50)
                    .HasColumnName("ERPKodu");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.Mukellef)
                    .WithMany(p => p.TblGeneralEfatMukellefMails)
                    .HasForeignKey(d => d.MukellefId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralEFatMukellefMail_TblGeneralEFatMukellef");
            });

            modelBuilder.Entity<TblGeneralFavoriler>(entity =>
            {
                entity.ToTable("TblGeneralFavoriler");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralFavoriler_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.KisiId, e.NavigationId }, "UK_TblGeneralFavoriler_IsletmeKisiId")
                    .IsUnique();

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralFavorilers)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralFavoriler_TblGeneralIsletme");

                entity.HasOne(d => d.Kisi)
                    .WithMany(p => p.TblGeneralFavorilers)
                    .HasForeignKey(d => d.KisiId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralFavoriler_TblSSOKullanici");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblGeneralFavorilers)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralFavoriler_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblGeneralFavorilers)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralFavoriler_TblGeneralFirma");

                entity.HasOne(d => d.TblGeneralSubeKullanici)
                    .WithMany(p => p.TblGeneralFavorilers)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.FirmaId, p.SubeId, p.KullaniciId })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId, d.SubeId, d.KisiId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralFavoriler_TblGeneralSubeKullanici");
            });

            modelBuilder.Entity<TblGeneralFirma>(entity =>
            {
                entity.ToTable("TblGeneralFirma");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralFirma_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.Adi }, "UK_TblGeneralFirma_Isletme_Adi")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.Id }, "UK_TblGeneralFirma_Isletme_Id")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaKod }, "UK_TblGeneralFirma_Isletme_Kod")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Adres).HasMaxLength(400);

                entity.Property(e => e.DaireNo).HasMaxLength(50);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.FaxNo).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.KapiNo).HasMaxLength(50);

                entity.Property(e => e.MersisNo).HasMaxLength(250);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.TelNo).HasMaxLength(50);

                entity.Property(e => e.TicariSicilNo).HasMaxLength(250);

                entity.Property(e => e.VergiDairesi).HasMaxLength(250);

                entity.Property(e => e.VergiKimlikNo).HasMaxLength(50);

                entity.Property(e => e.WebSiteAdres).HasMaxLength(250);

                entity.Property(e => e.YeniAlan)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralFirmas)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralFirma_TblGeneralIsletme");
            });

            modelBuilder.Entity<TblGeneralGondSekli>(entity =>
            {
                entity.HasKey(e => e.GonderimSekliId);

                entity.ToTable("TblGeneralGondSekli");

                entity.Property(e => e.GonderimSekliId).ValueGeneratedNever();

                entity.Property(e => e.GonderimSekli).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralGrupKullanici>(entity =>
            {
                entity.ToTable("TblGeneralGrupKullanici");

                entity.HasIndex(e => new { e.KullaniciId, e.GrupId }, "IX_TblGeneralGrupKullanici")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Grup)
                    .WithMany(p => p.TblGeneralGrupKullanicis)
                    .HasForeignKey(d => d.GrupId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralGrupKullanici_TblGeneralKullaniciGrupTanim");

                entity.HasOne(d => d.Kullanici)
                    .WithMany(p => p.TblGeneralGrupKullanicis)
                    .HasForeignKey(d => d.KullaniciId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralGrupKullanici_TblSSOKullanici");
            });

            modelBuilder.Entity<TblGeneralGun>(entity =>
            {
                entity.ToTable("TblGeneralGun");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");
            });

            modelBuilder.Entity<TblGeneralIl>(entity =>
            {
                entity.ToTable("TblGeneralIl");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralIl_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.Kod, "UK_TblGeneralIl_Kod")
                    .IsUnique();

                entity.HasIndex(e => new { e.UlkeId, e.Id }, "UK_TblGeneralIl_Ulke_Id")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(100);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(10);

                entity.Property(e => e.MernisKodu).HasMaxLength(10);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.PlakaKodu).HasMaxLength(10);

                entity.Property(e => e.TelKodu).HasMaxLength(10);

                entity.HasOne(d => d.Ulke)
                    .WithMany(p => p.TblGeneralIls)
                    .HasForeignKey(d => d.UlkeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIl_TblGeneralUlke");
            });

            modelBuilder.Entity<TblGeneralIlce>(entity =>
            {
                entity.ToTable("TblGeneralIlce");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralIlce_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.Id, e.IlId }, "UK_TblGeneralIlce_Il_Id")
                    .IsUnique();

                entity.HasIndex(e => new { e.IlId, e.Kod }, "UK_TblGeneralIlce_Il_Kod")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(100);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(10);

                entity.Property(e => e.MernisKodu).HasMaxLength(10);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.Il)
                    .WithMany(p => p.TblGeneralIlces)
                    .HasForeignKey(d => d.IlId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIlce_TblGeneralIl");
            });

            modelBuilder.Entity<TblGeneralIntegration>(entity =>
            {
                entity.ToTable("TblGeneralIntegration");

                entity.Property(e => e.VHareketTuru)
                    .HasMaxLength(250)
                    .HasColumnName("V_HareketTuru");

                entity.Property(e => e.VOzelKod)
                    .HasMaxLength(250)
                    .HasColumnName("V_OzelKod");

                entity.Property(e => e.VProjeKodu)
                    .HasMaxLength(250)
                    .HasColumnName("V_ProjeKodu");
            });

            modelBuilder.Entity<TblGeneralIslemBelgeTip>(entity =>
            {
                entity.HasKey(e => e.TipId);

                entity.ToTable("TblGeneralIslemBelgeTip");

                entity.Property(e => e.TipId).ValueGeneratedNever();

                entity.Property(e => e.TipAciklama).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralIslemKilit>(entity =>
            {
                entity.ToTable("TblGeneralIslemKilit");

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.IslemAdi).HasMaxLength(50);

                entity.Property(e => e.IslemKod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.HasOne(d => d.App)
                    .WithMany(p => p.TblGeneralIslemKilits)
                    .HasForeignKey(d => d.AppId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIslemKilit_TblGeneralApplication");
            });

            modelBuilder.Entity<TblGeneralIslemSeri>(entity =>
            {
                entity.ToTable("TblGeneralIslemSeri");

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.IslemTipiId }, "UK_TblGeneralIslemSeri_IslemTipiId")
                    .IsUnique();

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.No).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Seri).HasMaxLength(50);

                entity.HasOne(d => d.IslemTipi)
                    .WithMany(p => p.TblGeneralIslemSeris)
                    .HasForeignKey(d => d.IslemTipiId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIslemSeri_TblGeneralIslemSeri");
            });

            modelBuilder.Entity<TblGeneralIslemSeriTanimlama>(entity =>
            {
                entity.ToTable("TblGeneralIslemSeriTanimlama");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralIslemSeriTanimlama_Guid_Unique")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.IslemTipiId, e.IslemSerisi }, "UK_TblGeneralIslemSeriTanimlama_IslemSerisiIslemTipi_Unique")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.IslemSerisi).HasMaxLength(250);

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.HasOne(d => d.IslemTipi)
                    .WithMany(p => p.TblGeneralIslemSeriTanimlamas)
                    .HasForeignKey(d => d.IslemTipiId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIslemSeriTanimlama_TblGeneralIslemTipi");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralIslemSeriTanimlamas)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIslemSeriTanimlama_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblGeneralIslemSeriTanimlamas)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIslemSeriTanimlama_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblGeneralIslemSeriTanimlamas)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIslemSeriTanimlama_TblGeneralFirma");
            });

            modelBuilder.Entity<TblGeneralIslemTipi>(entity =>
            {
                entity.HasKey(e => e.IslemTipiId);

                entity.ToTable("TblGeneralIslemTipi");

                entity.HasIndex(e => e.IslemTipi, "UK_TblGeneralIslemTipi_Aciklama")
                    .IsUnique();

                entity.Property(e => e.IslemTipiId).ValueGeneratedNever();

                entity.Property(e => e.IslemTipi).HasMaxLength(50);
            });

            modelBuilder.Entity<TblGeneralIsletme>(entity =>
            {
                entity.ToTable("TblGeneralIsletme");

                entity.HasIndex(e => e.Adi, "UK_TblGeneralIsletme_Adi")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblGeneralIsletme_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.IsletmeUrlOnEk, "UK_TblGeneralIsletme_IsletmeUrlOnEk")
                    .IsUnique();

                entity.HasIndex(e => e.VergiKimlikNo, "UK_TblGeneralIsletme_VergiKimlikNo")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.IsletmeUrlOnEk).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.VergiKimlikNo).HasMaxLength(250);
            });

            modelBuilder.Entity<TblGeneralIsletmeApplication>(entity =>
            {
                entity.ToTable("TblGeneralIsletmeApplication");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralIsletmeApplication_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.ApplicationId }, "UK_TblGeneralIsletmeApplication_Isletme_App")
                    .IsUnique();

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.Application)
                    .WithMany(p => p.TblGeneralIsletmeApplications)
                    .HasForeignKey(d => d.ApplicationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIsletmeApplication_TblGeneralApplication");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralIsletmeApplications)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralIsletmeApplication_TblGeneralIsletme");
            });

            modelBuilder.Entity<TblGeneralKoy>(entity =>
            {
                entity.ToTable("TblGeneralKoy");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralKoy_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IlceId, e.Id }, "UK_TblGeneralKoy_Ilce_Id")
                    .IsUnique();

                entity.HasIndex(e => new { e.IlceId, e.Kodu }, "UK_TblGeneralKoy_Ilce_Kodu")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(1000);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kodu).HasMaxLength(10);

                entity.Property(e => e.MernisKodu).HasMaxLength(10);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.Ilce)
                    .WithMany(p => p.TblGeneralKoys)
                    .HasForeignKey(d => d.IlceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralKoy_TblGeneralIlce");
            });

            modelBuilder.Entity<TblGeneralKulGrupEkran>(entity =>
            {
                entity.ToTable("TblGeneralKulGrupEkran");

                entity.HasIndex(e => new { e.EkranId, e.GrupId }, "UK_TblGeneralKulGrupEkran_Grup_Ekran")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");
            });

            modelBuilder.Entity<TblGeneralKullaniciEkAlan>(entity =>
            {
                entity.ToTable("TblGeneralKullaniciEkAlan");

                entity.Property(e => e.Baslik).HasMaxLength(250);

                entity.HasOne(d => d.Application)
                    .WithMany(p => p.TblGeneralKullaniciEkAlans)
                    .HasForeignKey(d => d.ApplicationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralKullaniciEkAlan_TblGeneralApplication");

                entity.HasOne(d => d.Modul)
                    .WithMany(p => p.TblGeneralKullaniciEkAlans)
                    .HasForeignKey(d => d.ModulId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralKullaniciEkAlan_TblGeneralModul");
            });

            modelBuilder.Entity<TblGeneralKullaniciGrupTanim>(entity =>
            {
                entity.ToTable("TblGeneralKullaniciGrupTanim");

                entity.HasIndex(e => new { e.Kod, e.IsletmeId }, "UK_TblGeneralKullaniciGrupTanim_Isletme_Kod")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(250);

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");
            });

            modelBuilder.Entity<TblGeneralLidosDurum>(entity =>
            {
                entity.ToTable("TblGeneralLidosDurum");

                entity.HasIndex(e => e.Kod, "UK_TblGeneralLidosDurum_Kod")
                    .IsUnique();

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.RenkCode).HasMaxLength(50);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblGeneralLidosDurums)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosDurum_TblGeneralFirma");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralLidosDurums)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosDurum_TblGeneralIsletme");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblGeneralLidosDurums)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosDurum_TblGeneralSube");
            });

            modelBuilder.Entity<TblGeneralLidosElusTip>(entity =>
            {
                entity.ToTable("TblGeneralLidosElusTip");

                entity.HasIndex(e => e.Kod, "UK_TblGeneralLidosElusTip_Kod")
                    .IsUnique();

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralLidosElusTips)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosElusTip_TblGeneralIsletme");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblGeneralLidosElusTips)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosElusTip_TblGeneralSube");
            });

            modelBuilder.Entity<TblGeneralLidosTalepTip>(entity =>
            {
                entity.ToTable("TblGeneralLidosTalepTip");

                entity.HasIndex(e => e.Kod, "UK_TblGeneralLidosTalepTip_Kod")
                    .IsUnique();

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.RenkCode).HasMaxLength(50);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblGeneralLidosTalepTips)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosTalepTip_TblGeneralFirma");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralLidosTalepTips)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosTalepTip_TblGeneralIsletme");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblGeneralLidosTalepTips)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralLidosTalepTip_TblGeneralSube");
            });

            modelBuilder.Entity<TblGeneralModul>(entity =>
            {
                entity.ToTable("TblGeneralModul");

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");
            });

            modelBuilder.Entity<TblGeneralOdemeTip>(entity =>
            {
                entity.ToTable("TblGeneralOdemeTip");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralOdemeTip_Guid")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(250);

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");
            });

            modelBuilder.Entity<TblGeneralOnayDurum>(entity =>
            {
                entity.HasKey(e => e.DurumId);

                entity.ToTable("TblGeneralOnayDurum");

                entity.Property(e => e.DurumId).ValueGeneratedNever();

                entity.Property(e => e.OnayDurumu).HasMaxLength(100);
            });

            modelBuilder.Entity<TblGeneralParaBirimi>(entity =>
            {
                entity.ToTable("TblGeneralParaBirimi");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralParaBirimi_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.Kod, "UK_TblGeneralParaBirimi_Kod")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(150);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Icon).HasMaxLength(10);

                entity.Property(e => e.KisaAdi).HasMaxLength(10);

                entity.Property(e => e.Kisaltma).HasMaxLength(10);

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<TblGeneralRedDurum>(entity =>
            {
                entity.ToTable("TblGeneralRedDurum");

                entity.HasIndex(e => e.Kod, "UK_TblGeneralRedDurum_Kod")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");
            });

            modelBuilder.Entity<TblGeneralRedDurumYetki>(entity =>
            {
                entity.ToTable("TblGeneralRedDurumYetki");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Durum)
                    .WithMany(p => p.TblGeneralRedDurumYetkis)
                    .HasForeignKey(d => d.DurumId)
                    .HasConstraintName("FK_TblGeneralRedDurumYetki_TblGeneralRedDurum");

                entity.HasOne(d => d.NedenYetki)
                    .WithMany(p => p.TblGeneralRedDurumYetkis)
                    .HasForeignKey(d => d.NedenYetkiId)
                    .HasConstraintName("FK_TblGeneralRedDurumYetki_TblGeneralRedNedenYetki");
            });

            modelBuilder.Entity<TblGeneralRedNedenYeri>(entity =>
            {
                entity.ToTable("TblGeneralRedNedenYeri");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblGeneralRedNedenYeris)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYeri_TblGeneralFirma");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralRedNedenYeris)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYeri_TblGeneralIsletme");

                entity.HasOne(d => d.RedNeden)
                    .WithMany(p => p.TblGeneralRedNedenYeris)
                    .HasForeignKey(d => d.RedNedenId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYeri_TblGeneralRedNedeni");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblGeneralRedNedenYeris)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYeri_TblGeneralSube");

                entity.HasOne(d => d.Yer)
                    .WithMany(p => p.TblGeneralRedNedenYeris)
                    .HasForeignKey(d => d.YerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYeri_TblGeneralRedYeri");
            });

            modelBuilder.Entity<TblGeneralRedNedenYetki>(entity =>
            {
                entity.ToTable("TblGeneralRedNedenYetki");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblGeneralRedNedenYetkis)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYetki_TblGeneralFirma");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralRedNedenYetkis)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYetki_TblGeneralIsletme");

                entity.HasOne(d => d.RedNeden)
                    .WithMany(p => p.TblGeneralRedNedenYetkis)
                    .HasForeignKey(d => d.RedNedenId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYetki_TblGeneralRedNedeni");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblGeneralRedNedenYetkis)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedenYetki_TblGeneralSube");
            });

            modelBuilder.Entity<TblGeneralRedNedeni>(entity =>
            {
                entity.ToTable("TblGeneralRedNedeni");

                entity.HasIndex(e => e.Kod, "UK_TblGeneralRedNedeni_Kod")
                    .IsUnique();

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblGeneralRedNedenis)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedeni_TblGeneralFirma");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralRedNedenis)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedeni_TblGeneralIsletme");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblGeneralRedNedenis)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedNedeni_TblGeneralSube");
            });

            modelBuilder.Entity<TblGeneralRedYeri>(entity =>
            {
                entity.ToTable("TblGeneralRedYeri");

                entity.HasIndex(e => e.Kod, "UK_TblGeneralRedYeri_Kod")
                    .IsUnique();

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblGeneralRedYeris)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedYeri_TblGeneralFirma");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralRedYeris)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedYeri_TblGeneralIsletme");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblGeneralRedYeris)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRedYeri_TblGeneralSube");
            });

            modelBuilder.Entity<TblGeneralRehber>(entity =>
            {
                entity.ToTable("TblGeneralRehber");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralRehber_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.Id }, "UK_TblGeneralRehber_Islet_Firm_Id")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.RehberKodu }, "UK_TblGeneralRehber_Isletme_Firma_Adi")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(250);

                entity.Property(e => e.Adi).HasMaxLength(50);

                entity.Property(e => e.Data).HasMaxLength(500);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.RehberKodu).HasMaxLength(50);

                entity.Property(e => e.TabloAdi).HasMaxLength(50);

                entity.Property(e => e.Url).HasMaxLength(500);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralRehbers)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehber_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblGeneralRehbers)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehber_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblGeneralRehbers)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehber_TblGeneralFirma");
            });

            modelBuilder.Entity<TblGeneralRehberColumn>(entity =>
            {
                entity.HasIndex(e => e.Guid, "UK_TblGeneralRehberColumns_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.RehberId, e.Adi }, "UK_TblGeneralRehberColumns_RehberId_Adi")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(250);

                entity.Property(e => e.Adi).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.KisitTipi).HasMaxLength(50);

                entity.Property(e => e.ModelPropertyAdi).HasMaxLength(250);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.RehberKodu).HasMaxLength(50);

                entity.Property(e => e.Tip).HasMaxLength(50);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralRehberColumns)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberColumns_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblGeneralRehberColumns)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberColumns_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblGeneralRehberColumns)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberColumns_TblGeneralFirma");

                entity.HasOne(d => d.TblGeneralRehber)
                    .WithMany(p => p.TblGeneralRehberColumnTblGeneralRehbers)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId, d.RehberId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberColumns_TblGeneralRehber1");

                entity.HasOne(d => d.TblGeneralRehberNavigation)
                    .WithMany(p => p.TblGeneralRehberColumnTblGeneralRehberNavigations)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.FirmaId, p.RehberKodu })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId, d.RehberKodu })
                    .HasConstraintName("FK_TblGeneralRehberColumns_TblGeneralRehber");
            });

            modelBuilder.Entity<TblGeneralRehberView>(entity =>
            {
                entity.HasIndex(e => e.Guid, "UK_TblGeneralRehberViews_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.RehberId, e.Adi }, "UK_TblGeneralRehberViews_RehberId_Adi")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(50);

                entity.Property(e => e.Adi).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Tip).HasMaxLength(50);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralRehberViews)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberViews_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblGeneralRehberViews)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberViews_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblGeneralRehberViews)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberViews_TblGeneralFirma");

                entity.HasOne(d => d.TblGeneralRehber)
                    .WithMany(p => p.TblGeneralRehberViews)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId, d.RehberId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralRehberViews_TblGeneralRehber1");
            });

            modelBuilder.Entity<TblGeneralSube>(entity =>
            {
                entity.ToTable("TblGeneralSube");

                entity.HasIndex(e => new { e.FirmaId, e.Adi }, "UK_TblGeneralSube_Firma_Adi")
                    .IsUnique();

                entity.HasIndex(e => new { e.FirmaId, e.Id }, "UK_TblGeneralSube_Firma_Id")
                    .IsUnique();

                entity.HasIndex(e => new { e.FirmaId, e.SubeKod }, "UK_TblGeneralSube_Firma_SubeKod")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblGeneralSube_Guid")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Adres).HasMaxLength(400);

                entity.Property(e => e.DaireNo).HasMaxLength(50);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.FaxNo).HasMaxLength(50);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.KapiNo).HasMaxLength(50);

                entity.Property(e => e.Logo).HasMaxLength(400);

                entity.Property(e => e.MersisNo).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.TelNo).HasMaxLength(50);

                entity.Property(e => e.TicariSicilNo).HasMaxLength(50);

                entity.Property(e => e.WebSiteAdres).HasMaxLength(250);

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblGeneralSubes)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralSube_TblGeneralFirma");

                entity.HasOne(d => d.Il)
                    .WithMany(p => p.TblGeneralSubes)
                    .HasForeignKey(d => d.IlId)
                    .HasConstraintName("FK_TblGeneralSube_TblGeneralIl");

                entity.HasOne(d => d.Ilce)
                    .WithMany(p => p.TblGeneralSubes)
                    .HasForeignKey(d => d.IlceId)
                    .HasConstraintName("FK_TblGeneralSube_TblGeneralIlce");

                entity.HasOne(d => d.MahKoy)
                    .WithMany(p => p.TblGeneralSubes)
                    .HasForeignKey(d => d.MahKoyId)
                    .HasConstraintName("FK_TblGeneralSube_TblGeneralKoy");

                entity.HasOne(d => d.Ulke)
                    .WithMany(p => p.TblGeneralSubes)
                    .HasForeignKey(d => d.UlkeId)
                    .HasConstraintName("FK_TblGeneralSube_TblGeneralUlke");
            });

            modelBuilder.Entity<TblGeneralSubeKullanici>(entity =>
            {
                entity.ToTable("TblGeneralSubeKullanici");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralSubeKullanici_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.KullaniciId }, "UK_TblGeneralSubeKullanici_IsletmeUser")
                    .IsUnique();

                entity.Property(e => e.DavetTarihi).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralSubeKullanicis)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralSubeKullanici_TblGeneralIsletme");

                entity.HasOne(d => d.Kullanici)
                    .WithMany(p => p.TblGeneralSubeKullanicis)
                    .HasForeignKey(d => d.KullaniciId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralSubeKullanici_TblSSOKullanici");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblGeneralSubeKullanicis)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralSubeKullanici_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblGeneralSubeKullanicis)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralSubeKullanici_TblGeneralFirma");
            });

            modelBuilder.Entity<TblGeneralUlke>(entity =>
            {
                entity.ToTable("TblGeneralUlke");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralUlke_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.KisaKod, "UK_TblGeneralUlke_KisaKod")
                    .IsUnique();

                entity.HasIndex(e => e.Kod, "UK_TblGeneralUlke_Kod")
                    .IsUnique();

                entity.Property(e => e.Adi).HasMaxLength(150);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.KisaKod).HasMaxLength(50);

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.UlkeTelKodu).HasMaxLength(10);

                entity.HasOne(d => d.ParaBirim)
                    .WithMany(p => p.TblGeneralUlkes)
                    .HasForeignKey(d => d.ParaBirimId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralUlke_TblGeneralParaBirimi");
            });

            modelBuilder.Entity<TblGeneralUserApplication>(entity =>
            {
                entity.ToTable("TblGeneralUserApplication");

                entity.HasIndex(e => e.Guid, "UK_TblGeneralUserApplication_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.KullaniciId, e.ApplicationId }, "UK_TblGeneralUserApplication_IsletmeUser")
                    .IsUnique();

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Application)
                    .WithMany(p => p.TblGeneralUserApplications)
                    .HasForeignKey(d => d.ApplicationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralUserApplication_TblGeneralApplication");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblGeneralUserApplications)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralUserApplication_TblGeneralIsletme");

                entity.HasOne(d => d.Kullanici)
                    .WithMany(p => p.TblGeneralUserApplications)
                    .HasForeignKey(d => d.KullaniciId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralUserApplication_TblSSOKullanici");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblGeneralUserApplications)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralUserApplication_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblGeneralUserApplications)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralUserApplication_TblGeneralFirma");

                entity.HasOne(d => d.TblGeneralSubeKullanici)
                    .WithMany(p => p.TblGeneralUserApplications)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.FirmaId, p.SubeId, p.KullaniciId })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId, d.SubeId, d.KullaniciId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblGeneralUserApplication_TblGeneralSubeKullanici");
            });

            modelBuilder.Entity<TblGeneralVergiDairesi>(entity =>
            {
                entity.ToTable("TblGeneralVergiDairesi");

                entity.Property(e => e.Ad).HasMaxLength(150);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<TblGeneralVisitDurum>(entity =>
            {
                entity.HasKey(e => e.DurumTipi);

                entity.ToTable("TblGeneralVisitDurum");

                entity.Property(e => e.DurumTipi).ValueGeneratedNever();

                entity.Property(e => e.Aciklama).HasMaxLength(50);
            });

            modelBuilder.Entity<TblOption>(entity =>
            {
                entity.HasIndex(e => e.Guid, "UK_TblOptions_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.Id }, "UK_TblOptions_Isletme_Id")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.GroupName).HasMaxLength(250);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Modul).HasMaxLength(250);

                entity.Property(e => e.Name).HasMaxLength(250);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.ParamType).HasMaxLength(250);

                entity.Property(e => e.Summary).HasMaxLength(500);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblOptions)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblOptions_TblGeneralIsletme");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblOptions)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblOptions_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblOptions)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblOptions_TblGeneralFirma");
            });

            modelBuilder.Entity<TblSocialFeed>(entity =>
            {
                entity.ToTable("TblSocialFeed");

                entity.HasIndex(e => e.Guid, "UK_TblSocialFeed_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeId, e.FirmaId, e.SubeId, e.Id }, "UK_TblSocialFeed_Isletme_Id")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Text).HasMaxLength(500);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblSocialFeeds)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeed_TblGeneralIsletme");

                entity.HasOne(d => d.Tip)
                    .WithMany(p => p.TblSocialFeeds)
                    .HasForeignKey(d => d.TipId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeed_TblSocialFeedTip");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblSocialFeeds)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeed_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblSocialFeeds)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeed_TblGeneralFirma");
            });

            modelBuilder.Entity<TblSocialFeedKisi>(entity =>
            {
                entity.ToTable("TblSocialFeedKisi");

                entity.HasIndex(e => e.Guid, "UK_TblSocialFeedKisi_Guid")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.ResimLink).HasMaxLength(500);

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblSocialFeedKisis)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedKisi_TblGeneralIsletme");

                entity.HasOne(d => d.Kisi)
                    .WithMany(p => p.TblSocialFeedKisis)
                    .HasForeignKey(d => d.KisiId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedKisi_TblSSOKullanici");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblSocialFeedKisis)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedKisi_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblSocialFeedKisis)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedKisi_TblGeneralFirma");

                entity.HasOne(d => d.TblSocialFeed)
                    .WithMany(p => p.TblSocialFeedKisis)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.FirmaId, p.SubeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId, d.SubeId, d.FeedId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedKisi_TblSocialFeed");
            });

            modelBuilder.Entity<TblSocialFeedLink>(entity =>
            {
                entity.ToTable("TblSocialFeedLink");

                entity.HasIndex(e => e.Guid, "UK_TblSocialFeedLink_Guid")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblSocialFeedLinks)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedLink_TblGeneralIsletme");

                entity.HasOne(d => d.Link)
                    .WithMany(p => p.TblSocialFeedLinks)
                    .HasForeignKey(d => d.LinkId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedLink_TblSocialLink");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblSocialFeedLinks)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaId, d.SubeId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedLink_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblSocialFeedLinks)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedLink_TblGeneralFirma");

                entity.HasOne(d => d.TblSocialFeed)
                    .WithMany(p => p.TblSocialFeedLinks)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.FirmaId, p.SubeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeId, d.FirmaId, d.SubeId, d.FeedId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSocialFeedLink_TblSocialFeed");
            });

            modelBuilder.Entity<TblSocialFeedTip>(entity =>
            {
                entity.ToTable("TblSocialFeedTip");

                entity.HasIndex(e => e.Adi, "UK_TblSocialFeedTip_Adi")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblSocialFeedTip_Guid")
                    .IsUnique();

                entity.Property(e => e.Aciklama).HasMaxLength(250);

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");
            });

            modelBuilder.Entity<TblSocialLink>(entity =>
            {
                entity.ToTable("TblSocialLink");

                entity.HasIndex(e => e.Guid, "UK_TblSocialLink_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.Link, "UK_TblSocialLink_Link")
                    .IsUnique();

                entity.HasIndex(e => e.Tanim, "UK_TblSocialLink_Tanim")
                    .IsUnique();

                entity.Property(e => e.Aktif)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.KisaTanim).HasMaxLength(50);

                entity.Property(e => e.Link).HasMaxLength(250);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Onaylandi)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.Tanim).HasMaxLength(250);
            });

            modelBuilder.Entity<TblSsodavet>(entity =>
            {
                entity.ToTable("TblSSODavet");

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");
            });

            modelBuilder.Entity<TblSsodavetDetay>(entity =>
            {
                entity.ToTable("TblSSODavetDetay");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Firma)
                    .WithMany(p => p.TblSsodavetDetays)
                    .HasForeignKey(d => d.FirmaId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSODavetDetay_TblGeneralFirma");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblSsodavetDetays)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSODavetDetay_TblGeneralIsletme");

                entity.HasOne(d => d.Master)
                    .WithMany(p => p.TblSsodavetDetays)
                    .HasForeignKey(d => d.MasterId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSODavetDetay_TblSSODavet");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.TblSsodavetDetays)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSODavetDetay_TblGeneralSube");
            });

            modelBuilder.Entity<TblSsohost>(entity =>
            {
                entity.ToTable("TblSSOHost");

                entity.Property(e => e.FirmaId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.SubeId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.Yil).HasDefaultValueSql("(datepart(year,getdate()))");

                entity.HasOne(d => d.Isletme)
                    .WithMany(p => p.TblSsohosts)
                    .HasForeignKey(d => d.IsletmeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSOHost_TblGeneralIsletme");
            });

            modelBuilder.Entity<TblSsoizin>(entity =>
            {
                entity.ToTable("TblSSOIzin");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.Kullanici)
                    .WithMany(p => p.TblSsoizins)
                    .HasForeignKey(d => d.KullaniciId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSOIzin_TblSSOKullanici");
            });

            modelBuilder.Entity<TblSsokullanici>(entity =>
            {
                entity.ToTable("TblSSOKullanici");

                entity.HasIndex(e => e.Guid, "UK_TblSSOKullanici_Guid")
                    .IsUnique();

                entity.HasIndex(e => e.UserName, "UK_TblSSOKullanici_UserName")
                    .IsUnique();

                entity.Property(e => e.AuthType)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('None')");

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.ProfilResmi).HasMaxLength(500);

                entity.Property(e => e.SurName).HasMaxLength(50);

                entity.Property(e => e.Telefon).HasMaxLength(50);

                entity.Property(e => e.TimeZone).HasDefaultValueSql("('(GMT+03:00) Istanbul')");

                entity.Property(e => e.UserName).HasMaxLength(50);

                entity.HasOne(d => d.KullaniciTip)
                    .WithMany(p => p.TblSsokullanicis)
                    .HasForeignKey(d => d.KullaniciTipId)
                    .HasConstraintName("FK_TblSSOKullanici_TblSSOKullaniciTipi");
            });

            modelBuilder.Entity<TblSsokullaniciTipi>(entity =>
            {
                entity.ToTable("TblSSOKullaniciTipi");

                entity.HasIndex(e => e.Aciklama, "UK_TblSSOKullaniciTipi_Aciklama")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblSSOKullaniciTipi_Guid")
                    .IsUnique();

                entity.Property(e => e.Aciklama)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.DegisiklikTarih).HasColumnType("datetime");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<TblSsotoken>(entity =>
            {
                entity.ToTable("TblSSOToken");

                entity.HasIndex(e => new { e.AuthToken, e.AccessToken }, "UK_TblSSOToken_Auth_Access")
                    .IsUnique();

                entity.HasIndex(e => e.Guid, "UK_TblSSOToken_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.RequestId, e.AuthToken }, "UK_TblSSOToken_Request_Auth")
                    .IsUnique();

                entity.Property(e => e.AccessToken).HasDefaultValueSql("(newid())");

                entity.Property(e => e.AuthCode)
                    .HasMaxLength(50)
                    .HasDefaultValueSql("((1234))");

                entity.Property(e => e.AuthToken).HasDefaultValueSql("(newid())");

                entity.Property(e => e.ExpiresOn).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.IssuedOn).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.KillMsg).HasMaxLength(50);

                entity.Property(e => e.LastOperationDate)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.Property(e => e.RequestId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Source).HasMaxLength(50);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.TblSsotokens)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSOToken_TblSSOKullanici");
            });

            modelBuilder.Entity<TblSsoyonlendirme>(entity =>
            {
                entity.ToTable("TblSSOYonlendirme");

                entity.HasIndex(e => e.Guid, "UK_TblSSOYonlendirme_Guid")
                    .IsUnique();

                entity.HasIndex(e => new { e.IsletmeNo, e.FirmaNo, e.KullaniciId, e.ApplicationId }, "UK_TblSSOYonlendirme_Isletme_Kullanici")
                    .IsUnique();

                entity.Property(e => e.Guid).HasDefaultValueSql("(newid())");

                entity.Property(e => e.IsletmeUrlOnEk).HasMaxLength(50);

                entity.Property(e => e.OlusturanId).HasDefaultValueSql("((-1))");

                entity.Property(e => e.OlusturmaTarih).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.Application)
                    .WithMany(p => p.TblSsoyonlendirmes)
                    .HasForeignKey(d => d.ApplicationId)
                    .HasConstraintName("FK_TblSSOYonlendirme_TblGeneralApplication");

                entity.HasOne(d => d.IsletmeNoNavigation)
                    .WithMany(p => p.TblSsoyonlendirmes)
                    .HasForeignKey(d => d.IsletmeNo)
                    .HasConstraintName("FK_TblSSOYonlendirme_TblGeneralIsletme");

                entity.HasOne(d => d.Kullanici)
                    .WithMany(p => p.TblSsoyonlendirmes)
                    .HasForeignKey(d => d.KullaniciId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TblSSOYonlendirme_TblSSOKullanici");

                entity.HasOne(d => d.TblGeneralSube)
                    .WithMany(p => p.TblSsoyonlendirmes)
                    .HasPrincipalKey(p => new { p.FirmaId, p.Id })
                    .HasForeignKey(d => new { d.FirmaNo, d.SubeNo })
                    .HasConstraintName("FK_TblSSOYonlendirme_TblGeneralSube");

                entity.HasOne(d => d.TblGeneralFirma)
                    .WithMany(p => p.TblSsoyonlendirmes)
                    .HasPrincipalKey(p => new { p.IsletmeId, p.Id })
                    .HasForeignKey(d => new { d.IsletmeNo, d.FirmaNo })
                    .HasConstraintName("FK_TblSSOYonlendirme_TblGeneralFirma");
            });

            modelBuilder.Entity<VwAlpatum>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwAlpata");

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Adres).HasMaxLength(400);

                entity.Property(e => e.DaireNo).HasMaxLength(50);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.FaxNo).HasMaxLength(50);

                entity.Property(e => e.IlAdi).HasMaxLength(100);

                entity.Property(e => e.IlceAdi).HasMaxLength(100);

                entity.Property(e => e.IsletmeAdi).HasMaxLength(250);

                entity.Property(e => e.KapiNo).HasMaxLength(50);

                entity.Property(e => e.MahKoyAdi).HasMaxLength(1000);

                entity.Property(e => e.MersisNo).HasMaxLength(250);

                entity.Property(e => e.TelNo).HasMaxLength(50);

                entity.Property(e => e.TicariSicilNo).HasMaxLength(250);

                entity.Property(e => e.UlkeAdi).HasMaxLength(150);

                entity.Property(e => e.VergiDairesi).HasMaxLength(250);

                entity.Property(e => e.VergiKimlikNo).HasMaxLength(50);

                entity.Property(e => e.WebSiteAdres).HasMaxLength(250);
            });

            modelBuilder.Entity<VwAppMenu>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwAppMenu");

                entity.Property(e => e.AppGuid)
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwFavorilerInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwFavorilerInfo");

                entity.Property(e => e.Adi).HasMaxLength(50);

                entity.Property(e => e.Url).HasMaxLength(1051);
            });

            modelBuilder.Entity<VwFeed>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwFeed");

                entity.Property(e => e.AdSoyad).HasMaxLength(101);

                entity.Property(e => e.Link).HasMaxLength(250);

                entity.Property(e => e.ResimLink).HasMaxLength(500);

                entity.Property(e => e.Text).HasMaxLength(4000);

                entity.Property(e => e.TipAciklama).HasMaxLength(250);

                entity.Property(e => e.TipAdi).HasMaxLength(250);
            });

            modelBuilder.Entity<VwGeneralFirmInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralFirmInfo");

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Adres).HasMaxLength(400);

                entity.Property(e => e.DaireNo).HasMaxLength(50);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.FaxNo).HasMaxLength(50);

                entity.Property(e => e.IlAdi).HasMaxLength(100);

                entity.Property(e => e.IlceAdi).HasMaxLength(100);

                entity.Property(e => e.IsletmeAdi).HasMaxLength(250);

                entity.Property(e => e.KapiNo).HasMaxLength(50);

                entity.Property(e => e.MahKoyAdi).HasMaxLength(1000);

                entity.Property(e => e.MersisNo).HasMaxLength(250);

                entity.Property(e => e.TelNo).HasMaxLength(50);

                entity.Property(e => e.TicariSicilNo).HasMaxLength(250);

                entity.Property(e => e.UlkeAdi).HasMaxLength(150);

                entity.Property(e => e.VergiDairesi).HasMaxLength(250);

                entity.Property(e => e.VergiKimlikNo).HasMaxLength(50);

                entity.Property(e => e.WebSiteAdres).HasMaxLength(250);
            });

            modelBuilder.Entity<VwGeneralGrupKullanici>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralGrupKullanici");

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.AdSoyad).HasMaxLength(101);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.Soyad).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralGrupKullaniciInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralGrupKullaniciInfo");

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.AdSoyad).HasMaxLength(101);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.KisaAd).HasMaxLength(2);

                entity.Property(e => e.ProfilResmi).HasMaxLength(500);

                entity.Property(e => e.SoyAd).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralIsletmeApplicationInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralIsletmeApplicationInfo");

                entity.Property(e => e.Application).HasMaxLength(50);

                entity.Property(e => e.BaseApiOnEk).HasMaxLength(250);
            });

            modelBuilder.Entity<VwGeneralIsletmeInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralIsletmeInfo");

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.FirmaAdi).HasMaxLength(250);

                entity.Property(e => e.IsletmeAdi).HasMaxLength(250);

                entity.Property(e => e.IsletmeUrlOnEk).HasMaxLength(50);

                entity.Property(e => e.SubeAdi).HasMaxLength(250);

                entity.Property(e => e.VergiKimlikNo).HasMaxLength(250);
            });

            modelBuilder.Entity<VwGeneralPasifKulanici>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralPasifKulanici");

                entity.Property(e => e.ApprovedAciklama)
                    .HasMaxLength(5)
                    .IsUnicode(false);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.SurName).HasMaxLength(50);

                entity.Property(e => e.Telefon).HasMaxLength(50);

                entity.Property(e => e.UserName).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralRedDurumYetkiGenel>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralRedDurumYetkiGenel");

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Kod).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralRedNedenYeriInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralRedNedenYeriInfo");

                entity.Property(e => e.RedNedeni).HasMaxLength(50);

                entity.Property(e => e.RedNedeniKod).HasMaxLength(50);

                entity.Property(e => e.YerAdi).HasMaxLength(50);

                entity.Property(e => e.YerKod).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralRedNedenYetkiDurumInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralRedNedenYetkiDurumInfo");

                entity.Property(e => e.DurumAd).HasMaxLength(50);

                entity.Property(e => e.NedenAd).HasMaxLength(50);

                entity.Property(e => e.YerAd).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralRedNedenYetkiInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralRedNedenYetkiInfo");

                entity.Property(e => e.DurumAd).HasMaxLength(50);

                entity.Property(e => e.NedenAd).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralRedNedeniGenel>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralRedNedeniGenel");

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Kod).HasMaxLength(50);

                entity.Property(e => e.RedNedeni).HasMaxLength(50);
            });

            modelBuilder.Entity<VwGeneralSubUrlFullYetki>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralSubUrlFullYetki");

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.SubUrl)
                    .HasMaxLength(150)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwGeneralSubUrlYetki>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralSubUrlYetki");
            });

            modelBuilder.Entity<VwGeneralSubeInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralSubeInfo");

                entity.Property(e => e.Adi).HasMaxLength(250);

                entity.Property(e => e.Adres).HasMaxLength(400);

                entity.Property(e => e.DaireNo).HasMaxLength(50);

                entity.Property(e => e.Email).HasMaxLength(250);

                entity.Property(e => e.FaxNo).HasMaxLength(50);

                entity.Property(e => e.IlAdi).HasMaxLength(100);

                entity.Property(e => e.IlceAdi).HasMaxLength(100);

                entity.Property(e => e.KapiNo).HasMaxLength(50);

                entity.Property(e => e.MahKoyAdi).HasMaxLength(1000);

                entity.Property(e => e.MersisNo).HasMaxLength(50);

                entity.Property(e => e.TelNo).HasMaxLength(50);

                entity.Property(e => e.TicariSicilNo).HasMaxLength(50);

                entity.Property(e => e.UlkeAdi).HasMaxLength(150);

                entity.Property(e => e.WebSiteAdres).HasMaxLength(250);
            });

            modelBuilder.Entity<VwGeneralSubeKulInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwGeneralSubeKulInfo");

                entity.Property(e => e.Firma).HasMaxLength(250);

                entity.Property(e => e.Isletme).HasMaxLength(250);

                entity.Property(e => e.Sube).HasMaxLength(250);
            });

            modelBuilder.Entity<VwIsletmeApplication>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwIsletmeApplication");

                entity.Property(e => e.Application).HasMaxLength(50);
            });

            modelBuilder.Entity<VwKullaniciEkAlan>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwKullaniciEkAlan");

                entity.Property(e => e.Baslik).HasMaxLength(250);

                entity.Property(e => e.ModulAdi).HasMaxLength(250);
            });

            modelBuilder.Entity<VwSubeKullanici>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwSubeKullanici");

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.AdSoyad).HasMaxLength(101);

                entity.Property(e => e.Eposta).HasMaxLength(250);

                entity.Property(e => e.Soyad).HasMaxLength(50);
            });

            modelBuilder.Entity<VwUserApplication>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("VwUserApplication");

                entity.Property(e => e.Ad).HasMaxLength(50);

                entity.Property(e => e.Application).HasMaxLength(50);

                entity.Property(e => e.BaseUrl).HasMaxLength(500);

                entity.Property(e => e.Description).HasMaxLength(500);

                entity.Property(e => e.Eposta).HasMaxLength(250);

                entity.Property(e => e.IconHtml).HasMaxLength(500);

                entity.Property(e => e.Path)
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.Property(e => e.Soyad).HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
