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

/*Detyra 1: Duke p�rdorur Excel, krijoni baz�n e t� dh�nave t� nevojshme p�r t� ruajtur t�
dh�nat p�r Student�t t� cil�t jan� vler�suar n� L�nd�t p�rkat�se duke p�rfshir� edhe
Profesor�t tek t� cil�t ata jan� vler�suar.
Sh�nim: N� tabela mundoheni q� t� keni sa m� pak p�rs�ritje t� t� dh�nave. */
--1. Te listohen t� gjitha produktet.
select *
from produkti

--2. T� listohen t� gjith� emrat dhe prodhuesit e produkteve .
select EmriProduktit, prodhuesi
from Produkti

--3. T� listohen t� gjitha emrat e produkteve (pa p�rs�ritjen e tyre).
select EmriProduktit
from Produkti
Group by EmriProduktit                         --group by nuk lejon perseritjen e elementeve


--4. T� listohen t� gjitha produktet e prodhuesit �HP�
select*
From Produkti
Where prodhuesi= 'HP'                          --where sherben si kerkues i nje profukti ne kete rast

--5. T� listohen t� gjitha produktet e prodhuesit �Dell� ose �Lenovo�.
select *
From Produkti
Where prodhuesi='DELL' OR prodhuesi = 'Lenovo' 

--6. T� listohen t� gjith� monitor�t q� nuk kane prodhues t� specifikuar.
select *
From Produkti 
Where prodhuesi is NULL;           --Kerkon produkti me prodhus NULL

--7. T� listohen t� gjitha PC-t� q� kane �mimin me t� madh se 370.
select *
From Produkti 
where CmimiPerNjesi >370           --  >qmimin me te madhe se 370

--8. T� listohen t� gjitha produktet t� cilat kane prodhuesin �Dell� dhe kan� ne sasi mes 3 dhe 10 njesi.
select *
From Produkti    
Where prodhuesi='DELL' and Sasia >3 and Sasia <10    --Prodhuesi DELL dhe Sasi >3 dhe <10

--9. T� listohen t� gjith� produktet q� jan� nga prodhuesi �HP� ose �Dell� me �mimin me t� lart� se150.
select *
From Produkti 
Where prodhuesi='Dell'or prodhuesi='HP' and CmimiPerNjesi>150    --Prodhuesit DELL ose HP dhe qmimi me i madhe se 150

--10. T� listohen t� gjitha produktet e �HP�, �Lenovo� dhe �Dell�.
select *
From Produkti 
Where prodhuesi='Dell' or prodhuesi='HP' or prodhuesi='Lenovo'

--11. T� renditen t� gjith� Laptopet me vlere mbi 600 sipas sasis�, nga me e madhja tek me e vogla.
select *
From Produkti
Where  CmimiPerNjesi>600             --cmimi me i madh se 600
order by CmimiPerNjesi desc          -- order by ben radhitjn sipas nje atributti ekzistues ne tabel preferohet te jete numer

--12. Te listohen t� gjith� prodhuesit dhe numri i p�rgjithsh�m i sasis� p�r to.
select prodhuesi,sum(sasia) [Sasia]                  --sum per shumen
from Produkti                       -- tregon sasin per secilin prodhues
group by prodhuesi 

--13. T� shfaqet mesatarja e �mimit p�r monitor�t.
select AVG(CmimiPerNjesi)  [Mesatarja e qmimit per monitor]                        --AVG merre vlerat e kolenes se caktuar dhe kthen mesataren
From Produkti
Where EmriProduktit='Monitor'

--14. T� tregoni se sa lloje t� produkteve ka �HP�
SELECT COUNT(*) [HP Produkte]
FROM Produkti                                 --Count(*) sherben per numrin total te nje produkti ne kete rast HP
Where prodhuesi='HP'