CREATE TABLE Kendaraan (
no_polisi varchar2(10)
CONSTRAINT ken_id_pk PRIMARY KEY
,jenis_kendaraan VARCHAR2(25)
constraint j_kend_nn not null
,warna VARCHAR2(26)
,harga number(6)
constraint harga_nn not null
);

SELECT * 
FROM Transaksi;


CREATE TABLE Penyewa (
penyewa_nik number(16)
CONSTRAINT penyewa_id_pk PRIMARY KEY
,penyewa_nama VARCHAR2(25)
constraint pen_nama_nn not null
,Penyewa_alamat VARCHAR2(26)
constraint alamat_nn not null
,no_telp VARCHAR2(14)
constraint no_telp_nn not null
,instansi varchar2(25)
constraint ins_nn not null
constraint ins_ck check (instansi in 
('Sanata Dharma', 'Instiper'))
);

CREATE TABLE Pegawai (
no_pegawai varchar2(25)
CONSTRAINT pegawai_id_pk PRIMARY KEY
,pegawai_nama VARCHAR2(25)
constraint peg_nama_nn not null
,pegawai_alamat VARCHAR2(26));

CREATE TABLE Transaksi (
no_transaksi varchar2(12)
CONSTRAINT no_trans_pk PRIMARY KEY
,no_pol VARCHAR2(11)
constraint trans_kend_id_fk REFERENCES
Kendaraan(no_polisi)
,nik number(16)
constraint trans_peny_nik_fk REFERENCES
Penyewa(penyewa_nik)
,no_peg VARCHAR2(25)
constraint trans_no_peg_fk REFERENCES
Pegawai(no_pegawai)
,durasi number(1)
constraint durasi_nn not null
constraint durasi_ck check (durasi <=7)
,tgl_keluar date
constraint tgl_klr_nn not null
,tgl_kembali date
constraint tgl_kmbl_nn not null
,harga_total number(7)
constraint hrg_tls_nn not null
);