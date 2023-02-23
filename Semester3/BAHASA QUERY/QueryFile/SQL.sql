CREATE TABLE dosen (
    ID_Peminjam VARCHAR(20) 
        CONSTRAINT dosen_idPemD_nn  NOT  NULL,
    Nama VARCHAR(30) 
        CONSTRAINT dosen_namaD_nn  NOT  NULL,
    Alamat VARCHAR (25) 
        CONSTRAINT dosen_alamatD_nn  NOT  NULL,
    Maksimal_Pinjam NUMBER (10) 
        CONSTRAINT dosen_maksPinjamD_nn  NOT  NULL,
    NIP VARCHAR (20) 
        CONSTRAINT dosen_nip_nn  NOT  NULL,
        CONSTRAINT dosen_nip_pk PRIMARY KEY (NIP) ENABLE);
    
    INSERT INTO dosen VALUES ('5','HARSH','WEST BENGAL','1','19');
    
    drop table dosen;
    drop table mahasiswa;
    drop table umum;
--create tabel mahasiswa
CREATE TABLE mahasiswa (
    ID_Peminjam VARCHAR(20) 
        CONSTRAINT mahasiswa_idPemM_nn  NOT  NULL,
    Nama VARCHAR(30) 
        CONSTRAINT mahasiswa_namaM_nn  NOT  NULL,
    Alamat VARCHAR (25) 
        CONSTRAINT mahasiswa_alamatM_nn  NOT  NULL,
    Maksimal_Pinjam NUMBER (10) 
        CONSTRAINT mahasiswa_maksPinjamM_nn  NOT  NULL,
    NIM NUMBER (20) 
        CONSTRAINT mahasiswa_nim_nn  NOT  NULL,
        CONSTRAINT mahasiswa_nim_pk PRIMARY KEY (NIM) ENABLE);
    
--create tabel umum
CREATE TABLE umum (
    ID_Peminjam VARCHAR(20) 
        CONSTRAINT umum_idPemU_nn  NOT  NULL,
    Nama VARCHAR(30) 
        CONSTRAINT umum_namaU_nn  NOT  NULL,
    Alamat VARCHAR (25) 
        CONSTRAINT umum_alamatU_nn  NOT  NULL,
    Maksimal_Pinjam NUMBER (10) 
        CONSTRAINT umum_maksPinjamU_nn  NOT  NULL,
    NIK NUMBER (20) 
        CONSTRAINT umum_nik_nn  NOT  NULL,
        CONSTRAINT umum_nik_pk PRIMARY KEY (NIK) ENABLE);
select * from umum;
--Koleksi--
--create table buku
CREATE TABLE buku (
    ID_KoleksiB VARCHAR2(20) 
        CONSTRAINT buku_IdKolB_nn  NOT  NULL,
        CONSTRAINT buku_idKolekB_pk PRIMARY KEY (ID_KoleksiB) ENABLE,
    Judul VARCHAR2(30) 
        CONSTRAINT buku_judulB_nn  NOT  NULL,
    Penerbit VARCHAR2(25) 
        CONSTRAINT buku_penerbitB_nn  NOT  NULL,
    Tahun_Terbit NUMBER (10)
        CONSTRAINT buku_thnTerbitB_nn NOT NULL,
    Status_Pinjam VARCHAR2 (10) 
        CONSTRAINT buku_statusPinjamB_nn  NOT  NULL,
    Halaman NUMBER (20) 
        CONSTRAINT buku_halaman_nn  NOT  NULL,
    ISBN VARCHAR2 (20) 
        CONSTRAINT buku_isbnM_nn  NOT  NULL);

--create table disk
CREATE TABLE diskCD (
    ID_KoleksiD VARCHAR2(20) 
        CONSTRAINT diskCD_IdKolD_nn  NOT  NULL,
        CONSTRAINT diskCD_idKolekD_pk PRIMARY KEY (ID_KoleksiD) ENABLE,
    Judul VARCHAR2(30) 
        CONSTRAINT diskCD_judulD_nn  NOT  NULL,
    Penerbit VARCHAR2(25) 
        CONSTRAINT diskCD_penerbitD_nn  NOT  NULL,
    Tahun_Terbit NUMBER (10)
        CONSTRAINT diskCD_thnTerbitD_nn NOT NULL,
    Status_Pinjam VARCHAR2 (10) 
        CONSTRAINT diskCD_statusPinjamD_nn  NOT  NULL,
    Format_Disk VARCHAR2 (20) 
        CONSTRAINT diskCD_formatD_nn  NOT  NULL,
    ISBN VARCHAR2 (20) 
        CONSTRAINT buku_isbnD_nn  NOT  NULL);

--create table majalah
CREATE TABLE majalah (
    ID_KoleksiM VARCHAR2(20) 
        CONSTRAINT majalah_IdKolM_nn  NOT  NULL,
        CONSTRAINT majalah_idKolekM_pk PRIMARY KEY (ID_KoleksiM) ENABLE,
    Judul VARCHAR2(30) 
        CONSTRAINT majalah_judulM_nn  NOT  NULL,
    Penerbit VARCHAR2(25) 
        CONSTRAINT majalah_penerbitM_nn  NOT  NULL,
    Tahun_Terbit NUMBER (10)
        CONSTRAINT majalah_thnTerbitM_nn NOT NULL,
    Status_Pinjam VARCHAR2 (10) 
        CONSTRAINT majalah_statusPinjamM_nn  NOT  NULL,
    Volume_Majalah NUMBER (20) 
        CONSTRAINT majalah_volM_nn  NOT  NULL,
    Seri NUMBER (25) 
        CONSTRAINT majalah_seriM_nn  NOT  NULL,
    ISSN VARCHAR2 (20)
        CONSTRAINT majalah_issnM_nn not null);        
        
        alter table DOSEN RENAME COLUMN Nama to Nama_D;
        alter table dosen rename column ID_Peminjam to ID_Peminjam_D;
        alter table dosen rename column Alamat to Alamat_D;
        Alter table dosen rename column Maksimal_Pinjam to Maksimal_Pinjam_D;
        
        select*from dosen;
        select*from mahasiswa;
        
        drop table buku;
        
        CREATE TABLE buku (
    ID_KoleksiB VARCHAR2(20) 
        CONSTRAINT buku_IdKolB_nn  NOT  NULL,
        CONSTRAINT buku_idKolekB_pk PRIMARY KEY (ID_KoleksiB) ENABLE,
    Judul VARCHAR2(30) 
        CONSTRAINT buku_judulB_nn  NOT  NULL,
    Penerbit VARCHAR2(25) 
        CONSTRAINT buku_penerbitB_nn  NOT  NULL,
    Status_Pinjam VARCHAR2 (10) 
        CONSTRAINT buku_statusPinjamB_nn  NOT  NULL,
    Halaman NUMBER (20) 
        CONSTRAINT buku_halaman_nn  NOT  NULL,
    ISBN VARCHAR2 (20) 
        CONSTRAINT buku_isbnM_nn  NOT  NULL);
        
        select*from buku;
        select*from dosen;
        select*from mahasiswa;
        