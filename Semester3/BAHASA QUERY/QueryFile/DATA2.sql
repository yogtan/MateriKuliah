Create table penyewa
        (NIK number(16) constraint NIK_Penyewa_pk primary key,
        Nama_Penyewa varchar(50),
        No_hp varchar(12),
        jenis_kelamin varchar(10));
        
Desc penyewa;

INSERT INTO penyewa
VALUES (2, 'Betty', '123', 'laki');
Select * from penyewa;