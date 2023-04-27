use sys;

CREATE TABLE arac_listesi
(
arac_numarasi INT unique,
arac_marka VARCHAR(15),
arac_model VARCHAR(15),
uretim_yili INT,
yakit_turu VARCHAR(10),
arac_renk VARCHAR(10)
);
select*from arac_listesi;

INSERT INTO arac_listesi VALUES (101, 'MERCEDES', 'A180', 2022,'BENZIN','Beyaz');
INSERT INTO arac_listesi VALUES (102, 'MERCEDES', 'A180', 2022,'DIESEL','Beyaz');
INSERT INTO arac_listesi VALUES (103, 'MERCEDES', 'A180', 2022,'Benzin',null);
INSERT INTO arac_listesi VALUES (104, 'MERCEDES', 'A180', 2022,null,'Beyaz');
INSERT INTO arac_listesi VALUES (105, 'MERCEDES', 'A180', 2022,'Benzin',null);

select*from arac_listesi;