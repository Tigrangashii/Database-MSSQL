create database PersoniDB1

use PersoniDB1

create table Personi 
(
	PersoniID decimal(18,0) primary key ,
	Emri varchar(50) not null,
	Mbiemri varchar(50) not null,
	Data_Lindjes date,
	vendi_lindjes varchar(50), 
	Ssn char(11),
	Pesha decimal(18,0) not null default 0
);

create table Hobi
(
	ID_hobi decimal(18,0) primary key,
	Emri_Hobit varchar(100) not null,
	Koment text
);

create table Kontakti 
(
	KontaktID decimal(18, 0) primary key,
	IDpersoni decimal(18, 0),
	Lloji_Kontaktit varchar(25),
	Vlera_Kontaktit varchar(50)

	foreign key (IDpersoni) references Personi (PersoniID)

);

create table Personi_Hobi 
(
	ID_personHobi decimal(18,0) primary key,
	ID_Personi decimal(18,0) foreign key references Personi(PersoniID),
	ID_Hobi decimal(18, 0) foreign key References Hobi (ID_hobi)
);


select * from Personi

INSERT INTO Personi VALUES (1,'Burim','Gashi','1980-11-20','Lipjan','012-05-1120', 95);
INSERT INTO Personi VALUES (2,'Agon', 'Buja','1977-01-22', 'Ferizaj','012-05-1121', 75);
INSERT INTO Personi VALUES (3,'Albulena','Hamiti','1975-12-23','Rahovec','012-05-1122', 56);
INSERT INTO Personi VALUES (4,'Kim','Gashi','2011-06-01','Peje','012-05-1123', 11);
INSERT INTO Personi VALUES (5,'Flori','Kollari','1975-12-23', 'Prishtine', '012-05-1124', 75);
INSERT INTO Personi VALUES (6,'Enver','Berisha','1959-10-03', 'Prishtine', '012-05-1125', 55);
INSERT INTO Personi VALUES (7,'Yll','Sopa','1985-12-23', 'Gjakove','012-05-1126', 64);
INSERT INTO Personi VALUES (8,'Florent','Kollari', '1987-01-22', 'Prishtine','012-05-1127', 77);
INSERT INTO Personi VALUES (9,'Ron','Krasniqi','1985-12-23', 'Rahovec','012-05-1128', 90);
INSERT INTO Personi VALUES (10, 'Valdet','Kollari', '1989-02-28', 'Prishtine','012-05-1129', 78);


select * from Personi

select * from Kontakti

INSERT INTO Kontakti VALUES (1, 1, 'linja fikse', '038-224461');
INSERT INTO Kontakti VALUES (2, 1, 'email','burim.gashi@amce.ks');
INSERT INTO Kontakti VALUES (3, 1, 'email','bg@my_kompania.ks');
INSERT INTO Kontakti VALUES (4, 1, 'skype', '+37745890007');
INSERT INTO Kontakti VALUES (5, 4, 'linja fikse','033-562900');
INSERT INTO Kontakti VALUES (6, 4, 'celulari', '049390411');
INSERT INTO Kontakti VALUES (7, 5, 'email', 'flori.kollari@amce.ks');
INSERT INTO Kontakti VALUES (8, 7, 'linja fikse', '+38139299005');
INSERT INTO Kontakti VALUES (9, 7, 'celulari', '+37745111888');

select * from Hobi

INSERT INTO Hobi VALUES (1, 'Pikturim','Aplikimi boj�s, pigment, ngjyra ose mediume t� tjera n� nj� sip�rfaqe.');
INSERT INTO Hobi VALUES (2, 'Peshkim','Kapjen e peshqeve.');
INSERT INTO Hobi VALUES (3, 'Zhytje n�n uj�','Futja n�n uj� me ose pa aparatin e frym�marrjes (zhytje/frym�-mbajtja).');
INSERT INTO Hobi VALUES (4, 'Shah','Dy lojtar�t kan� 16 shifra secili. Ata l�vizin ato nga tet�-me-tet� rrjet sipas rregullave t� ve�anta.');
INSERT INTO Hobi VALUES (5, 'Let�rsi ',' Leximi i librave.');
INSERT INTO Hobi VALUES (6, 'Yoga','Nj� sport qe aplikon praktike fizike, mendore, dhe shpirt�rore q� filloi n� Indin� e lasht�.');
INSERT INTO Hobi VALUES (7, 'Mbledhjen e Pullave ','Mbledhja e pullave postare dhe objekteve t� ngjashme.');
INSERT INTO Hobi VALUES (8, 'Astronomi','V�zhgimin e objekteve astronomike t� tilla si h�nes, planetet, yjet, dhe galaksit�.');
INSERT INTO Hobi VALUES (9, 'Mikroskopia', 'V�zhgimin e objekteve shum� t� vogla duke p�rdorur nj� mikroskop.');

select * from Personi_Hobi

INSERT INTO personi_hobi VALUES (1, 1, 1);
INSERT INTO personi_hobi VALUES (2, 1, 4);
INSERT INTO personi_hobi VALUES (3, 1, 5);
INSERT INTO personi_hobi VALUES (4, 5, 2);
INSERT INTO personi_hobi VALUES (5, 5, 3);
INSERT INTO personi_hobi VALUES (6, 7, 8);
INSERT INTO personi_hobi VALUES (7, 4, 4);
INSERT INTO personi_hobi VALUES (8, 9, 8);
INSERT INTO personi_hobi VALUES (9, 9, 9);

--1.Krijo nje view ne te cilin do te selektoni te gjithe Personat te cilet vendin e lindjes e kane'Lipjan'. --Ne view te perfshihet emri, mbiemri dhe vendi_lindjes.create view GetByVendiLindjes as(SELECT Emri,Mbiemri,vendi_lindjesFROM PersoniWhere vendi_lindjes = 'Lipjan' )SELECT EmriFROM GetByVendiLindjes/*2. Ndryshoni view e me parshem dhe selektoni te gjithe Personat te cilet vendin e lindjes e
kane 'Prishtine'. Ne view te perfshihet emri, mbiemri, vendi_lindjes dhe Pesha.*/alter view GetByVendiLindjes as(SELECT Emri,Mbiemri,vendi_lindjes,PeshaFROM PersoniWhere vendi_lindjes = 'Prishtine' )Select *from GetByVendiLindjes/* 3.Duke perdorur view me larte shfaq personin qe ka peshen 75kg*/SELECT *FROM GetByVendiLindjes aWHERE a.Pesha = 75/*4. Krijoni nje view i cili numron te gjithe personat ne baze te vendit te lindjes. */CREATE VIEW sipasVenditLindjes ASSELECT vendi_lindjes,COUNT(p.PersoniID) PersonaFROM Personi pGROUP BY vendi_lindjesSELECT *FROM sipasVenditLindjes
