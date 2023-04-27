/*==================================SELECT-WHERE=============================================
Verileri SELECT komutu ile veritabanindan cekerken filtreleme yapmak icin : 
 
SELECT ile birlikte WHERE komutu kullanilabilir.


-----Syntax----- :
SELECT field1, field2 
FROM tablo_adi 
WHERE kosul;


-- SELECT -- hangi sutunlari(field) getirsin
-- FROM -- hangi tablodan(table) getirsin
-- WHERE -- hangi satirlari(record) getirsin
=========================================================================================*/

CREATE TABLE meslek_lisesi (
okul_no CHAR(4) UNIQUE,
isim VARCHAR(50) NOT NULL,
derece DOUBLE,
adres VARCHAR(100),
son_degisiklik_tarihi DATE
);

SELECT * FROM meslek_lisesi;

INSERT INTO meslek_lisesi VALUES('1001','Fatih Oz', 89,'Ankara', '2022-11-23');      
INSERT INTO meslek_lisesi VALUES('1002','Fatih Yildiz', 94,'Istanbul', '2022-11-23');
INSERT INTO meslek_lisesi VALUES('1003','Bora Sverige', 78,'Izmir', '2022-11-23');
INSERT INTO meslek_lisesi VALUES('1004','Nevzat Celik', 69,'Ankara', '2022-11-23');
INSERT INTO meslek_lisesi VALUES('1005','Gursel Unal', 90,'Istanbul', '2022-11-23');
INSERT INTO meslek_lisesi VALUES('1006','Soner Karatasoglu ', 85,'Istanbul', '2022-11-23');
INSERT INTO meslek_lisesi VALUES('1007','Talha Kurt', 75,'Ankara', '2022-11-23');
INSERT INTO meslek_lisesi VALUES('1008','Yakup Lejon', 79,'Izmir', '2022-11-23');
INSERT INTO meslek_lisesi VALUES('1009','Ilhan Gurbetci', 80,'Izmir', '2022-11-23');

-- Q1 meslek lisesinde kayitli ogrencilerin sadece isimlerini getirin

SELECT isim
FROM meslek_lisesi;

-- Q2 meslek lisesinde kayitli ogrencilerin sadece sehirlerini getirin

SELECT adres
FROM meslek_lisesi;

-- Q3 Derecesini 90 dan yuksek olan ogrencilerin tum bilgilerini getir
SELECT*
FROM meslek_lisesi
WHERE derece>90;

-- Q3 :Derecesini 80 dan kucuk olan ogrencilerin isimlerini getir

SELECT isim
FROM meslek_lisesi
WHERE derece<80;

-- Q4 :Adresi Ankara olan  ogrencilerin isim ve derecelerini  getir
SELECT isim,derece
FROM meslek_lisesi
WHERE adres='Ankara';

SELECT isim,adres
FROM meslek_lisesi
WHERE okul_no=1005;
-- Q5 : Derecesi 70 ile 80 arasinda olan ogrencilerin okul_no ve adreslerini listeleyin.
SELECT okul_no,adres
FROM meslek_lisesi
WHERE derece<80 AND derece>70;