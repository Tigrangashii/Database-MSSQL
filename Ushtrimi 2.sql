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

--1. Te listohen t� gjitha produktet
SELECT *
FROM Produkti

--2. T� listohen t� gjith� emrat e produkteve dhe �mimi p�r nj�si i tyre.
Select P.EmriProduktit,P.CmimiPerNjesi
From Produkti P

--3.T� listohen t� gjith� emrat prodhuesve (pa p�rs�ritjen e tyre).
Select EmriProduktit
From Produkti
Group by EmriProduktit


--4.T� listohen t� gjitha produktet e prodhuesit �Dell".
Select *
From Produkti
Where prodhuesi='Dell'

--5. T� listohen t� gjitha produktet e prodhuesit �Lenovo� ose �Hp�
Select *
From Produkti
Where prodhuesi='Lenovo' or prodhuesi='Hp'

--6. T� listohen t� gjith� monitor�t q� nuk kane prodhues t� specifikuar.
Select *
From Produkti
Where prodhuesi is NULL

--7. T� listohen t� gjith� Laptop-�t q� kane �mimin me t� vog�l se 750
Select *
From Produkti
Where CmimiPerNjesi <750

--8. T� listohen t� gjitha produktet t� cilat kane prodhuesin �Hp� dhe kan� ne sasi mes 10 dhe 40 njesi.
Select *
From Produkti
Where prodhuesi='Hp' and Sasia >10 and Sasia <40

--9. T� listohen t� gjith� produktet q� jan� nga prodhuesi �Hp� ose �Lenovo� dhe t� cil�t kan� �mimin me t� lart� se 150.
Select *
From Produkti
Where prodhuesi='Hp' or prodhuesi='Lenovo' and CmimiPerNjesi>150

--10. T� listohen t� gjitha produktet e �Acer�, �Hp� , �Lenovo� dhe �Samsung�
Select *
From Produkti
Where prodhuesi='Acer' or prodhuesi='Hp' or prodhuesi='Lenovo' or prodhuesi='Samsung'

--11. T� renditen t� gjitha produktet e prodhuesit �HP� me vlere me te vog�l se 500 duke i renditur sipas sasis�, 
--nga me e madhja tek me e vogla.
Select *,sum(sasia)
From Produkti
Where prodhuesi='Hp'and COUNT(*)>500 and Sasia <>500

