/*========================================
               VERI GIRISI
========================================*/
-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken Tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.

/*******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.
*********************************************************/

-- UNIQUE olarak belirledigimiz bir field'a istedigimiz kadar NULL deger kaydedebiliriz
-- ancak data tipi String ise hiclik ifadesini sadece 1 kere kaydeder, 
-- diger kayitlarda duplicate hatasi verir.


-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve 
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin


CREATE TABLE fen_lisesi
(
okul_no CHAR(3) UNIQUE,
isim VARCHAR(25) NOT NULL,
derece DOUBLE,
adres VARCHAR(50),
last_update DATE
);

select*from fen_lisesi;

INSERT INTO fen_lisesi VALUES (101, 'Mehmet Dag', 4.5, 'Ankara','2023-01-20');
INSERT INTO fen_lisesi VALUES (102, 'Berrin Hanim', 4.6, 'Istanbul','2023-01-18');
INSERT INTO fen_lisesi VALUES (103, 'Mehmet Erden', 3.9, 'Izmir','2023-01-19');
INSERT INTO fen_lisesi VALUES (104, 'Sinan Bey', 4.7, 'Istanbul','2023-01-20');
INSERT INTO fen_lisesi VALUES (105, 'Esra Turker', 4.9, 'Ankara','2023-01-18');
INSERT INTO fen_lisesi VALUES (106, 'Esra Turker', 4.9, 'Ankara','2023-01-18');
INSERT INTO fen_lisesi VALUES (107, null, 4.9, 'Ankara','2023-01-18'); -- isim sutunu null olamaz
INSERT INTO fen_lisesi VALUES (107, 'Mehmet Filik', 3.4, 'Izmir',null); 
INSERT INTO fen_lisesi VALUES (108, 'Burcu Tembel', 3.5, null,'2023-01-18'); 
INSERT INTO fen_lisesi VALUES (109, 'sevgi', null, 'istanbul','2023-01-18'); 
INSERT INTO fen_lisesi VALUES (null, 'derya', 3.0, 'istanbul','2023-01-18'); 
INSERT INTO fen_lisesi VALUES (null, 'erdl', 4.8, 'izmir','2023-01-18'); -- uniqe nul icin gecerlidegiil 
INSERT INTO fen_lisesi VALUES ('', 'erdl', 4.8, 'izmir','2023-01-18');  -- ilk hicligi tabloya alir
INSERT INTO fen_lisesi VALUES ('', 'hasan', 4.8, 'bolu','2023-01-18');  -- bunu tabloya almaz

DROP table fen_lisesi;


/*
Q1 : okul_no , isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */


CREATE TABLE anadolu_lisesi
(
okul_no CHAR(4) UNIQUE,
isim VARCHAR(25) NOT NULL,
adres VARCHAR(20),
derece DOUBLE
);

select*from anadolu_lisesi;


INSERT INTO anadolu_lisesi VALUES (1000,'Hasan BICAK','AMSTERDAM',4.9);
INSERT INTO anadolu_lisesi VALUES (1001,'Huseyin BICAK','ROTTERDAM',4.8);
INSERT INTO anadolu_lisesi VALUES (1002,'Hilal','ROTTERDAM',4.8);
INSERT INTO anadolu_lisesi VALUES (1008,'sevgi',null,4.8);
INSERT INTO anadolu_lisesi VALUES (1004,'Haso','Zaandam',null);
INSERT INTO anadolu_lisesi VALUES (1005,'Haso','Zaandam',null);
INSERT INTO anadolu_lisesi VALUES ('','Haso','Zaandam',null);
INSERT INTO anadolu_lisesi (okul_no, isim, derece) VALUES ('1009','Hasan efe',4.9);
INSERT INTO anadolu_lisesi (isim, okul_no, derece) VALUES ('Huso efe','1007',4.9);






