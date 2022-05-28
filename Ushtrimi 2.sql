CREATE DATABASE [Ushtrimi 2]
 
USE [Ushtrimi 2]

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

--1. Te listohen të gjitha produktet
SELECT *
FROM Produkti

--2. Të listohen të gjithë emrat e produkteve dhe çmimi për njësi i tyre.
Select P.EmriProduktit,P.CmimiPerNjesi
From Produkti P

--3.Të listohen të gjithë emrat prodhuesve (pa përsëritjen e tyre).
Select EmriProduktit
From Produkti
Group by EmriProduktit


--4.Të listohen të gjitha produktet e prodhuesit “Dell".
Select *
From Produkti
Where prodhuesi='Dell'

--5. Të listohen të gjitha produktet e prodhuesit “Lenovo” ose “Hp”
Select *
From Produkti
Where prodhuesi='Lenovo' or prodhuesi='Hp'

--6. Të listohen të gjithë monitorët që nuk kane prodhues të specifikuar.
Select *
From Produkti
Where prodhuesi is NULL

--7. Të listohen të gjithë Laptop-ët që kane çmimin me të vogël se 750
Select *
From Produkti
Where CmimiPerNjesi <750

--8. Të listohen të gjitha produktet të cilat kane prodhuesin “Hp” dhe kanë ne sasi mes 10 dhe 40 njesi.
Select *
From Produkti
Where prodhuesi='Hp' and Sasia >10 and Sasia <40

--9. Të listohen të gjithë produktet që janë nga prodhuesi “Hp” ose “Lenovo” dhe të cilët kanë çmimin me të lartë se 150.
Select *
From Produkti
Where prodhuesi='Hp' or prodhuesi='Lenovo' and CmimiPerNjesi>150

--10. Të listohen të gjitha produktet e “Acer”, “Hp” , “Lenovo” dhe “Samsung”
Select *
From Produkti
Where prodhuesi='Acer' or prodhuesi='Hp' or prodhuesi='Lenovo' or prodhuesi='Samsung'

--11. Të renditen të gjitha produktet e prodhuesit ‘HP’ me vlere me te vogël se 500 duke i renditur sipas sasisë, 
--nga me e madhja tek me e vogla.
Select *,sum(sasia)
From Produkti
Where prodhuesi='Hp'and COUNT(*)>500 and Sasia <>500

