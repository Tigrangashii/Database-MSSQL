create database Ushtrimi9
use Ushtrimi9


create table Prodhuesi
(
prodhues_ID int not null Primary Key,
emri_P varchar (20),
qyteti_P varchar(20),
shteti_P varchar(20)
)
-------------------------------------------------------------------------------------
insert into Prodhuesi (prodhues_ID,emri_P,qyteti_P,shteti_P)
values ('10','Marcedes-Benz','Shtutgart','Gjermani'),
('11','BMW','Munchen','Gjermani'),
('12','Porsche','Shtutgart','Gjermani'),
('13','Audi','Ingolstadt','Gjermani'),
('14','Ford','Michigan','USA'),
('15','Toyota','Aichi Prefecture','Japoni'),
('16','Mazda','Hiroshima Prefecture','Japoni'),
('17','Range Rover','Coventry','UK'),
('18','VW','Wolfsburg','Gjermani'),
('19','Citroen','Paris','France'),
('20','Renault','Boulogne-Billancourt','France'),
('21','Jaguar','Coventry','UK');
-----------------------------------------------------------------------------------
create table Automobili
(
automobil_ID int not null Primary Key,
modeli varchar (30),
ngjyra varchar(20),
lenda_djegse varchar(15),
klasa varchar(20),
vitiProdhimit smalldatetime,
qmimi_blerjes Money null
)
--------------------------------------------------------------------------------------------
insert into Automobili
(automobil_ID,modeli,ngjyra,lenda_djegse,klasa,vitiProdhimit,qmimi_blerjes)values
--Marcedes-Benz
('100','C200-class','kafte-Metalik','Diesel','salon','2015','21000'),('101','C200-class','bardheMetalik','Diesel','salon','2014','17500'),
('102','A180-class','kuqe-Metalik','Diesel','Hatchback','2015','17000'),('103','E200-CDI','zeze-Mat','Diesel','salon','2014','21500'),
('104','E250-CDI','zeze-Metalik','Diesel','Estate','2012','11000'),('105','ML250-class','bardhMat','Diesel','SUV','2013','23000'),
('106','CLS350-class','silver-Metalik','Diesel','coupe','2013','19500'),('107','SLK250','zeze-Mat','Diesel','Convertible','2014','17500'),
---BMW
('108','3-Series 320','kuqe-Metalik','Diesel','salon','2013','8990'),('109','3-Series 320','zeze-Mat','Diesel','salon','2014','11000'),
('110','5 SERIES 4.4 M5','kalter-Metalik','Petrol','salon','2014','41500'),('111','X6 3.0','bardhMatalik','Diesel','SUV','2013','28500'),
----AUDI
('112','A4 2.0','zeze-Mat','Diesel','salon','2013','11500'),('113','A7 3.0 TDI','kalterMat','Diesel','salon','2015','29000'),
('114','A5 2.0 TDI','bardh-Metalik','Diesel','Hatchback','2013','14500'),('115','A5 2.0 TDI','redMetalik','Diesel','Hatchback','2013','11500'),
('116','A6 2.0 TDI-S line','bardh-Metalik','Diesel','Estate','2015','26000'),('117','A5 2.0
TDI','bardh-Metalik','Diesel','salon','2013','28000'),
('118','Q7 3.0 TDI S Line','bardh-Metalik','Diesel','SUV','2014','31500'),('119','5 2.0 TDI','kuqeMetalik','Diesel','Hatchback','2014','24500'),
('120','RS3 2.5 TFSI','hiri-Metalik','Petrol','Hatchback','2015','41500'),('121','RS5 4.2 TFSI
S','bardh-Metalik','Petrol','Coupe','2014','42500'),
----Toyta
('122','LAND CRUISER 5-DR 3.0','silver-Metalik','Diesel','SUV','2015','43500'),('123','Land Cruiser
2.8 D-4D','bardh-Metalik','Diesel','SUV','2014','25500'),('124','Avensis 2.0 D-4D Active','bardh-Metalik','Diesel','Salon','2013','8500'),('125','Avensis 2.0
D-4D T2 5dr','silver-Metalik','Diesel','Estate','2013','8700'),
('126','Aygo 1.0 VVT-i x 5dr','kalter-Metalik','Petrol','Hatchback','2015','12500'),
--VW
('127','Passat 2.0 TDI ','bardh-Metalik','Diesel','Estate','2015','19700'),('128','1.0 Take Up
3dr','red-Metalik','Petrol','Hatchback','2013','3900'),
('129',' Golf 1.4 TSI','zeze-Mat','Petrol','Hatchback','2013','7990'),('130','Scirocco 2.0 TDI
','blue-Mat','Diesel','Coupe','2013','11500'),
---Jaguar
('131','XF Sportbrake 2.2','gjelrber-Metalik','Diesel','Estate','2015','29500'),('132',' F-Type 3.0
V6','kuqe-Metalic','Petrol','Convertible','2013','39950'),
('133','XJR 5.0 v8','bardh-Metalik','Petrol','salon', '2014','52000'),('134','XK 5.0 V8','kuqeMetalic','Petrol','Coupe','2014','70000'),
----Renault
('135','Captur 1.5 dCi 90','kalter-Metalik','Diesel','Hatchback','2015','11200'),('136','Clio 0.9
TCe S 5dr','kuqe-Metalik','Petrol','Hatchback','2014','7400'),
('137','Clio 1.5TD','zeze-Mat','Diesel','Hatchback','2014','6450'),('138','Kadjar 1.5 dC','zezeMetalik','Diesel','SUV','2015','19000');
----------------------------------------------------------------------------------------------------
create table Katalogu
(
prodh_ID int,
a_ID int,
qmimi_shitjes Money,
constraint pk_Katalogu Primary key (prodh_ID,a_ID),
constraint fk_ProdhuesiKatalogu foreign key (prodh_ID)
references Prodhuesi (prodhues_ID),
constraint fk_AutomobiliKatalogu foreign key (a_ID)
references Automobili (automobil_ID)
)
insert into Katalogu (prodh_ID,a_ID,qmimi_shitjes)values
(10,100,'21800'),(10,101,'18900'),(10,102,'18400'),(10,103,'23500'),(10,104,'12000'),(10,105,'23000'
),(10,106,'21000'),(10,107,'19400'),
(11,108,'9400'),(11,109,'12700'),(11,110,'44000'),(11,111,'31900'),
(13,112,'13000'),(13,113,'35000'),(13,114,'17000'),(13,115,'12900'),(13,116,'19400'),(13,117,'29000'
),(13,118,'36900'),(13,119,'28900'),
(13,120,'49000'),(13,121,'43800'),
(15,122,'51000'),(15,123,'27800'),(15,124,'9900'),(15,125,'9200'),(15,126,'12500'),
(18,127,'47200'),(18,128,'4150'),(18,129,'8900'),(18,130,'12700'),
(21,131,'32400'),(21,132,'43000'),(21,133,'55000'),(21,134,'75900'),
(20,135,'13900'),(20,136,'7590'),(20,137,'6990'),(20,138,'22900');



Select modeli, prodh_ID
from Automobili a, Katalogu k
where a.automobil_ID = k.a_ID and k.prodh_ID in
(Select prodh_ID
from Katalogu k
where prodh_ID = 13)



Select emri_P
from  Automobili a, Katalogu k, Prodhuesi p
where p.prodhues_ID = k.prodh_ID and k.a_ID = a.automobil_ID and a.klasa in 
(Select a.klasa
from Automobili a 
where a.klasa = 'SUV')


Select distinct modeli
from Automobili a, Katalogu k, Prodhuesi p
where p.prodhues_ID = k.prodh_ID and k.a_ID = a.automobil_ID and p.emri_P in
(Select p.emri_P
from Automobili a 
where p.emri_P = 'BMW') 





