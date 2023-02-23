Create table penyewa
        (NIK number(16) constraint NIK_Penyewa_pk primary key,
        Nama_Penyewa varchar(50),
        No_hp varchar(12),
        jenis_kelamin varchar(10));
Desc penyewa;
Select * from penyewa;

Create table kost
        (id_kost number(10) constraint id_kost_pk primary key,
        Alamat varchar(50),
        Kategori varchar(10),
        jumlah_kamar number(10));
Desc kost;
SELECT * FROM kost;

Create table kamarkost
        (No_Kost number(10) constraint no_kost_pk primary key,
        harga_sewa number(20),
        id_kost number(10) constraint kamar_kost_fk references kost(id_kost));
Desc kamarkost;
SELECT * FROM kamarkost;

Create table menyewa
        (No_Kost number(10) constraint menyewa_no_fk references kamarkost(no_kost),
        NIK number(16) constraint menyewa_nik_fk references penyewa(nik),
        lama_sewa number(10));
Desc menyewa; 
select * from menyewa;