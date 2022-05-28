--Pjesa 2

/*1.Duke perdorur ‘with’ shkruani nje query i cili shfaq skuadrat te cilat kan pasur shikueshmeri
me shume se 90000*/
WITH Shikushmeria as (
SELECT s.Emri sum (st.Kapaciteti_Ulseve) [Shikushmeria]
FROM Skuadra s,Finalja_LK f,Stadiumi st
where s.ID_Skuadres=f.Kampioni and f.Stadiumi = st.Stadium_ID
group by s.Emri

SELECT sh.Emri, sum(sh.Shikushmeria)
FROM Shikushmeria sh
group by sh.emri
having sum(sh.Shikushmeria) >90000

/*2.Të tregohen të gjitha ekipet të cilat nuk kanë shkronjën e parë B*/
select *
from Skuadra

Except

select *
from Skuadra
where Emri not like 'B%';

/*3.Të tregohen të gjitha ekipet të cilat kanë luajtur ne finale.*/
select Emri
from Skuadra s inner Join Finalja_LK f
on ID_Skuadres=F.Kampioni
union 
select Emri
from Skuadra s inner Join Finalja_LK f
on s.ID_Skuadres = f.NenKampioni

/*4.Te tregohen të gjitha ekipet që kanë emrin me shkronjën B të paren dhe kanë qenë kampion. */
select S.Emri
from Skuadra s join Finalja_LK f
on s.ID_Skuadres = F.Kampioni
intersect
select S.Emri
from Skuadra s
WHERE S.Emri LIKE 'B%'

