create database Universiteti

Use Universiteti

create Table Departamenti(
DepartamentiID char (10) Primary key,
Departamenti varchar (50),
Zyra char (5) NOT NULL
);

create table Lenda (
LendaID char (10) Primary key,
Lenda varchar (20) NOT NULL,
ECTS int check (ECTS = 5),
);

create table StafiTipi (
TipiID char (5) Primary Key,
Tipi varchar (20) NOT NULL,
);

create table Studenti(
StudentiID  char (10), 
Emri varchar (20) NOT NULL,
EmriPrindit varchar (20) NOT NULL,
Mbiemri varchar (20) NOT NULL,
Datelindja date,
VitiAkademik char (5),
EmailZyrtar char (25) unique,
EmailPrivat char (25)
);

create Table Stafi (
StafiID char (10) Primary Key,
Emri char (20) NOT NULL,
Mbiemri char(20) NOT NULL,
Datelindja date,
GradaAkademike char (3) check (GradaAkademike in ('Msc','Phd')),
NumriPersonal char (10) unique,
DepartamentiID char (10) references Departamenti(DepartamentiID),
TipiID char (5) references StafiTipi(TipiID)
);

create table Kursi (
KursiID char (10),
Data date,
KohaFillimit date,
KohaMbarimit date,
Grupi char (2) NOT NULL,
);

Insert into Kursi (KursiID, Data, KohaFillimit, KohaMbarimit, Grupi)
values ('HT123','12/01/2012','12/01/2012','12/01/2012','g3');

SELECT * from Kursi





