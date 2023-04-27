-- yorum satiri
-- buda ikinci yorum satiri -- densonra bir bosluk sart

/*
bu arada kac satir yazarsak 
hepsi yorum olarak gorunur
*/

use sys;

/*========================================
    TABLO OLUSTURMA 1 (CRUD - Create)
========================================*/
-- id, isim, not ortalamasi, adres ve son degistirme tarihi
-- fieldlari iceren bir ogrenciler table'i olusturunuz.

create table ogrenciler1
(
id int,
isim varchar(25),
not_ortalamasi double,
adres varchar(100),
son_degirtirme_tarihi date
);

select * from ogrenciler1;

/*------------------------------------------------------------
Q1: "tedarikciler" isminde bir tablo olusturun.
   "tedarikci_id", "tedarikci_ismi", "tedarikci_adres" ve 
   "ulasim_tarihi" field'lari olsun.
-------------------------------------------------------------*/


CREATE TABLE tedarikciler
(
tedarikci_id INT,
tedarikci_ismi VARCHAR(30),
tedarikci_adres VARCHAR(100),
ulasim_tarihi DATE
);

select * from tedarikciler;


/*========================================
    VAROLAN TABLODAN TABLO OLUSTURMA  
========================================
------------------Syntax------------------
CREATE TABLE table_name
AS
SELECT field1,field2
FROM other_table_name
========================================*/
-- ogrenciler1 tablosundan "isim" ve "not_ortalamasi" field'larini
-- alarak ogrenci_derece isimli yeni bir tablo olusturun.

create table ogrenci_derece
AS
SELECT isim, not_ortalamasi
FROM ogrenciler1;

select * from ogrenci_derece;


/*--------------------------------------------------------
Q2: "tedarikciler" table'indan "tedarikci_ismi" ve
 "ulasim_tarihi" field'lari olan "tedarikciler_son" 
 isimli yeni bir table olusturun.
---------------------------------------------------------*/

create table tedarikciler_son
AS
select tedarikci_ismi, ulasim_tarihi
from tedarikciler;

select * from tedarikciler_son;


