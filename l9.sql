create database L11_1920
use L11_1920
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

select * from Vetura
select * from Shitjet_Veturave

select  v.brandy,v.tip,v.qmimiStartues,sh.qmimiShitjes
from Vetura v JOIN S sh
on v.nr_Shasis=sh.vetura

select *
from Vetura v
where v.nr_Shasis in (Select vetura from Shitjet_Veturave

select  v.nr_Shasis,v.brandy,v.tip,v.qmimiStartues,
from Vetura v left JOIN Shitjet_Veturave sh
on v.nr_Shasis=sh.vetura
where sh.vetura is null

select *
from Vetura v
where v.nr_Shasis not in (Select vetura from Shitjet_Veturave

 select v.nr_Shasis, v.tip, v.qmimiStartues,v.brandy, sum(sh.nr_SasisVeturave)
from Vetura v inner join Shitjet_Veturave sh
on v.nr_Shasis=sh.vetura
group by v.brandy, v.nr_Shasis, v.tip, v.qmimiStartues
order by x desc

select v.nr_Shasis,v.brandy,sum(sh.nr_SasisVeturave)
from Vetura v INNER JOIN Shitjet_Veturave sh
on v.nr_Shasis=sh.vetura
group by v.nr_Shasis,v.brandy
order by [Totali i shitjeve nr] desc


select v.brandy ,(select sum(sh.nr_SasiaVeturave)
from Shitjet_Veturave sh
where v.nr_Shasis=sh.vetura)[Totali i shitjeve nr ]
from vetura v
order by [Totali i shitjeve nr ] desc

select v.nr_Shasis, v.tip, v.qmimiStartues,v.brandy, sum(sh.nr_SasisVeturave)
from Vetura v inner join Shitjet_Veturave sh
on v.nr_Shasis=sh.vetura
group by v.brandy, v.nr_Shasis, v.tip, v.qmimiStartues
having sum(sh.nr_SasisVeturave)>=5;

select v.brandy , (select sum(sh.nr_SasisVeturave)
from Shitjet_Veturave sh
where v.nr_Shasis = sh.vetura
having SUM(sh.nr_SasisVeturave) >= 5)[Totali_Shitjeve]
from Vetura v
order by [Totali_Shitjeve] desc

select v.brandy,v.tip
from Vetura v
where v.nr_Shasis IN (Select sh.vetura--,sum(sh.nr_SasisVeturave)
from Shitjet_Veturave sh
group by sh.vetura
having sum(sh.nr_SasisVeturave) >= 5) 

[Totali_Shitjeve]


