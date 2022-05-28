create database L092121
use L092121
create table Vetura(
nr_Shasis int primary key,
brandy varchar(20) not null, 
tip varchar(20) not null, 
qmimiStartues money not null,
pershkrimi text
)

create table Shitjet_Veturave
(
ID_Shitjes int primary key,
vetura int,
qmimiShitjes money not null,
nr_SasisVeturave int,
foreign key (vetura) references Vetura              
ON DELETE CASCADE       
ON UPDATE CASCADE
); 
