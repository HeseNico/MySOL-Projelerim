

CREATE TABLE ataturk_lisesi(
ogrenci_no int,
isim VARCHAR(45),
posta_kodu VARCHAR(100),
eyalet VARCHAR(50)
);
INSERT INTO ataturk_lisesi VALUES (111, 'Emine Yucel', '1095MS', 'Nord-Amst');
INSERT INTO ataturk_lisesi VALUES (112, 'Talha Kurt', '1065VG', 'Nord-Brabant');
INSERT INTO ataturk_lisesi VALUES (113, 'Ilhan Sahin', '1192HB', 'Flevoland');
INSERT INTO ataturk_lisesi VALUES (114, 'Kadir Corumlu', '1045BL', 'Limburg');
INSERT INTO ataturk_lisesi VALUES (115, 'Selman Kasabali', '1043KL','Friesland');
INSERT INTO ataturk_lisesi VALUES (116, 'Murat Aycicek', '1085XG', 'Nord-Amst');
INSERT INTO ataturk_lisesi VALUES (117, 'Tugba Ozsoy', '1421MK', 'Friesland');

select*from ataturk_lisesi;

SELECT *
FROM ataturk_lisesi
where posta_kodu;

