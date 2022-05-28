CREATE DATABASE [Ushtrimi 1]
 
USE [Ushtrimi 1]

CREATE TABLE Produkti(
	[ID] [varchar](10) NOT NULL primary key,
	[EmriProduktit] [varchar](50) NOT NULL,
	[CmimiPerNjesi] [decimal](7, 2) NOT NULL,
	[Sasia] [int] NOT NULL,
	[prodhuesi] [varchar](50) NULL
)

INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-1', N'Monitor', CAST(130.00 AS Decimal(7, 2)), 15, N'HP')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-10', N'Kufje', CAST(5.00 AS Decimal(7, 2)), 12, N'Sony')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-11', N'Maus', CAST(2.00 AS Decimal(7, 2)), 5, N'Deluxe')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-12', N'Monitor', CAST(150.00 AS Decimal(7, 2)), 5, N'Dell')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-13', N'Laptop', CAST(800.00 AS Decimal(7, 2)), 1, N'Lenovo')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-14', N'Laptop', CAST(550.00 AS Decimal(7, 2)), 7, N'Dell')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-15', N'Monitor', CAST(300.00 AS Decimal(7, 2)), 2, NULL)
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-2', N'Maus', CAST(3.00 AS Decimal(7, 2)), 10, N'BENQ')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-3', N'Tastature', CAST(15.00 AS Decimal(7, 2)), 30, N'HP')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-4', N'Kufje', CAST(15.00 AS Decimal(7, 2)), 4, N'Remax')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-5', N'Laptop', CAST(700.00 AS Decimal(7, 2)), 2, N'Acer')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-6', N'PC', CAST(300.00 AS Decimal(7, 2)), 1, N'Dell')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-7', N'PC', CAST(450.00 AS Decimal(7, 2)), 3, N'Lenovo')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-8', N'PC', CAST(700.00 AS Decimal(7, 2)), 2, N'HP')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-9', N'Kufje', CAST(2.50 AS Decimal(7, 2)), 5, N'Samsung')

/*Detyra 1: Duke përdorur Excel, krijoni bazën e të dhënave të nevojshme për të ruajtur të
dhënat për Studentët të cilët janë vlerësuar në Lëndët përkatëse duke përfshirë edhe
Profesorët tek të cilët ata janë vlerësuar.
Shënim: Në tabela mundoheni që të keni sa më pak përsëritje të të dhënave. */
--1. Te listohen të gjitha produktet.
select *
from produkti

--2. Të listohen të gjithë emrat dhe prodhuesit e produkteve .
select EmriProduktit, prodhuesi
from Produkti

--3. Të listohen të gjitha emrat e produkteve (pa përsëritjen e tyre).
select EmriProduktit
from Produkti
Group by EmriProduktit                         --group by nuk lejon perseritjen e elementeve


--4. Të listohen të gjitha produktet e prodhuesit “HP”
select*
From Produkti
Where prodhuesi= 'HP'                          --where sherben si kerkues i nje profukti ne kete rast

--5. Të listohen të gjitha produktet e prodhuesit “Dell” ose “Lenovo”.
select *
From Produkti
Where prodhuesi='DELL' OR prodhuesi = 'Lenovo' 

--6. Të listohen të gjithë monitorët që nuk kane prodhues të specifikuar.
select *
From Produkti 
Where prodhuesi is NULL;           --Kerkon produkti me prodhus NULL

--7. Të listohen të gjitha PC-të që kane çmimin me të madh se 370.
select *
From Produkti 
where CmimiPerNjesi >370           --  >qmimin me te madhe se 370

--8. Të listohen të gjitha produktet të cilat kane prodhuesin “Dell” dhe kanë ne sasi mes 3 dhe 10 njesi.
select *
From Produkti    
Where prodhuesi='DELL' and Sasia >3 and Sasia <10    --Prodhuesi DELL dhe Sasi >3 dhe <10

--9. Të listohen të gjithë produktet që janë nga prodhuesi “HP” ose “Dell” me çmimin me të lartë se150.
select *
From Produkti 
Where prodhuesi='Dell'or prodhuesi='HP' and CmimiPerNjesi>150    --Prodhuesit DELL ose HP dhe qmimi me i madhe se 150

--10. Të listohen të gjitha produktet e “HP”, “Lenovo” dhe “Dell”.
select *
From Produkti 
Where prodhuesi='Dell' or prodhuesi='HP' or prodhuesi='Lenovo'

--11. Të renditen të gjithë Laptopet me vlere mbi 600 sipas sasisë, nga me e madhja tek me e vogla.
select *
From Produkti
Where  CmimiPerNjesi>600             --cmimi me i madh se 600
order by CmimiPerNjesi desc          -- order by ben radhitjn sipas nje atributti ekzistues ne tabel preferohet te jete numer

--12. Te listohen të gjithë prodhuesit dhe numri i përgjithshëm i sasisë për to.
select prodhuesi,sum(sasia) [Sasia]                  --sum per shumen
from Produkti                       -- tregon sasin per secilin prodhues
group by prodhuesi 

--13. Të shfaqet mesatarja e çmimit për monitorët.
select AVG(CmimiPerNjesi)  [Mesatarja e qmimit per monitor]                        --AVG merre vlerat e kolenes se caktuar dhe kthen mesataren
From Produkti
Where EmriProduktit='Monitor'

--14. Të tregoni se sa lloje të produkteve ka “HP”
SELECT COUNT(*) [HP Produkte]
FROM Produkti                                 --Count(*) sherben per numrin total te nje produkti ne kete rast HP
Where prodhuesi='HP'