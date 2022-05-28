CREATE DATABASE [Spitali]
 
USE [Spitali]

CREATE TABLE [dbo].[Diagnoza](
	[Diagnoza_ID] [char](5) NOT NULL,
	[Pershkrimi] [varchar](255) NULL,
	[Semundja] [varchar](255) NULL,
 CONSTRAINT [PK_Diagnoza] PRIMARY KEY CLUSTERED 
(
	[Diagnoza_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Diagnoza_Doktori](
	[Diagnoza_id] [char](5) NOT NULL,
	[Doktori_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Diagnoza_id] ASC,
	[Doktori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Diagnoza_Pacienti](
	[Diagnoza_id] [char](5) NOT NULL,
	[Pacienti_Id] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Diagnoza_id] ASC,
	[Pacienti_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Doktori](
	[Id] [int] NOT NULL,
	[Emri] [varchar](50) NULL,
	[Mbiemri] [varchar](50) NULL,
	[Kualifikimi] [varchar](20) NULL,
	[Spitali] [int] NULL,
	[PagaMujore] [decimal](7, 2) NULL,
 CONSTRAINT [PK_Doktori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Pacienti](
	[Id] [varchar](10) NOT NULL,
	[Emri] [varchar](50) NULL,
	[Mbiemri] [varchar](50) NULL,
	[Datelindja] [date] NULL,
	[Vendbanimi] [varchar](50) NULL,
	[Doktori] [int] NULL,
	[Spitali] [int] NULL,
 CONSTRAINT [PK_Pacienti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Spitali](
	[Id] [int] NOT NULL,
	[Emri] [varchar](50) NULL,
	[Vendi] [varchar](20) NULL,
 CONSTRAINT [PK_Spitali] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0001', N'Astme', N'Semundje kronike e frymemarrjes')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0002', N'Semundje te zemres', N'Semundje e rende kardiovaskulare')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0003', N'Tomboze', N'Semundje e rende kardiovaskulare')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0004', N'Diabeti', N'Semundje kronike')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0005', N'SPOK', N'Semundje obstruktive e mushkerive')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0006', N'Infrakt akut', N'Semunde e rende kardiovaskulare')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0007', N'Fibroze', N'Semundje kronike e frymemarrjes')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0008', N'Semundje inflamatore e zemres', N'Semundje e rende kardiovaskulare')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0009', N'Bronkiti kronik', N'Semundje kronike e frymemarrjes')
INSERT [dbo].[Diagnoza] ([Diagnoza_ID], [Pershkrimi], [Semundja]) VALUES (N'D0010', N'Covid19', N'Semundje infektive')
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0001', 5)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0002', 6)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0002', 14)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0003', 7)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0003', 15)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0004', 5)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0004', 13)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0005', 7)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0005', 9)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0006', 9)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0006', 13)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0007', 12)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0008', 15)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0009', 14)
INSERT [dbo].[Diagnoza_Doktori] ([Diagnoza_id], [Doktori_id]) VALUES (N'D0010', 10)
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0001', N'P001')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0002', N'P002')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0002', N'P005')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0003', N'P003')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0003', N'P006')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0004', N'P006')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0004', N'P007')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0005', N'P011')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0005', N'P013')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0006', N'P004')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0006', N'P014')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0007', N'P015')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0008', N'P012')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0009', N'P009')
INSERT [dbo].[Diagnoza_Pacienti] ([Diagnoza_id], [Pacienti_Id]) VALUES (N'D0010', N'P010')
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (1, N'Blerton', N'Gashi', N'Dr', 1, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (2, N'Dardan ', N'Krasniqi', N'Dr', 2, CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (3, N'Adelina', N'Sefa', N'Dr', 8, CAST(890.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (4, N'Jon ', N'Hoxha', N'Dr', 5, CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (5, N'Marigona', N'Kryeziu', N'Dr', 1, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (6, N'Lorik', N'Gashi', N'Dr', 2, CAST(900.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (7, N'Erzen', N'Mehmeti', N'Dr', 8, CAST(1200.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (8, N'Flutura', N'Krasniqi', N'Dr', 1, CAST(1250.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (9, N'Jetlira', N'Hoxha', N'Dr', 12, CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (10, N'Samir', N'Shala', N'Dr', 1, CAST(1400.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (11, N'Fjolla', N'Ahmeti', N'Dr', 12, CAST(800.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (12, N'Mirjeta', N'Abazi', N'Dr', 3, CAST(950.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (13, N'Eda', N'Shala', N'Dr', 3, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (14, N'Arta', N'Krasniqi', N'Dr', 7, CAST(1350.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (15, N'Shend', N'Kryeziu', N'Dr', 8, CAST(1400.00 AS Decimal(7, 2)))
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P001', N'Blend', N'Gashi', CAST(N'1999-12-17' AS Date), N'Lipjan', 10, NULL)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P002', N'Altin ', N'Shala', CAST(N'2000-02-15' AS Date), N'Prishtine', 6, 2)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P003', N'Visar', N'Krasniqi', CAST(N'2001-08-14' AS Date), N'Ferizaj', NULL, NULL)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P004', N'Anila ', N'Mehmeti', CAST(N'1999-06-19' AS Date), N'Gjilan', 14, 7)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P005', N'Gresa', N'Gashi', CAST(N'2001-08-25' AS Date), N'Lipjan', 14, 7)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P006', N'Enis', N'Zeka', CAST(N'2000-04-30' AS Date), N'Ferizaj', NULL, 2)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P007', N'Valentina', N'Azemi', CAST(N'2000-01-09' AS Date), N'Prishtine', 10, 1)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P008', N'Albin', N'Krasniqi', CAST(N'2001-10-07' AS Date), N'Ferizaj', NULL, NULL)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P009', N'Taulant', N'Shala', CAST(N'2000-10-12' AS Date), N'Lipjan', 9, 12)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P010', N'Besa', N'Mehmeti', CAST(N'2001-05-27' AS Date), N'Prishtine', 9, 12)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P011', N'Adelina', N'Zeka', CAST(N'2000-07-13' AS Date), N'Gjilan', 8, NULL)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P012', N'Gresa', N'Krasniqi', CAST(N'1962-02-15' AS Date), N'Vushtrri', NULL, NULL)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P013', N'Muhamet', N'Shala', CAST(N'1983-11-07' AS Date), N'Peje', 10, 1)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P014', N'Agim', N'Kryeziu', CAST(N'1972-08-20' AS Date), N'Prishtine', NULL, 3)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P015', N'Naim', N'Berisha', CAST(N'1976-04-30' AS Date), N'Lipjan', 9, 12)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P016', N'Arian', N'Krasniqi', CAST(N'1961-12-07' AS Date), N'Lipjan', NULL, NULL)
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (1, N'QKUK', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (2, N'Rezonanca', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (3, N'Aloka', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (4, N'Spitali Amerikan', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (5, N'Kubati', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (6, N'Vita Hospital', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (7, N'Spitali i Vushtrrise', N'Vushtrri')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (8, N'E-Lab', N'Ferizaj')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (9, N'Spitali I Pejes', N'Peje')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (10, N'Spitali i Gjakoves', N'Gjakove')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (11, N'Spitali i Prizrenit', N'Prizren')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (12, N'Spitali i Mitrovices', N'Mitrovice')
ALTER TABLE [dbo].[Diagnoza_Doktori]  WITH CHECK ADD FOREIGN KEY([Diagnoza_id])
REFERENCES [dbo].[Diagnoza] ([Diagnoza_ID])
GO
ALTER TABLE [dbo].[Diagnoza_Doktori]  WITH CHECK ADD FOREIGN KEY([Doktori_id])
REFERENCES [dbo].[Doktori] ([Id])
GO
ALTER TABLE [dbo].[Diagnoza_Pacienti]  WITH CHECK ADD FOREIGN KEY([Diagnoza_id])
REFERENCES [dbo].[Diagnoza] ([Diagnoza_ID])
GO
ALTER TABLE [dbo].[Diagnoza_Pacienti]  WITH CHECK ADD FOREIGN KEY([Pacienti_Id])
REFERENCES [dbo].[Pacienti] ([Id])
GO
ALTER TABLE [dbo].[Doktori]  WITH CHECK ADD  CONSTRAINT [FK_Doktori_Spitali] FOREIGN KEY([Spitali])
REFERENCES [dbo].[Spitali] ([Id])
GO
ALTER TABLE [dbo].[Doktori] CHECK CONSTRAINT [FK_Doktori_Spitali]
GO
ALTER TABLE [dbo].[Pacienti]  WITH CHECK ADD  CONSTRAINT [FK_Pacienti_Doktori] FOREIGN KEY([Doktori])
REFERENCES [dbo].[Doktori] ([Id])
GO
ALTER TABLE [dbo].[Pacienti] CHECK CONSTRAINT [FK_Pacienti_Doktori]
GO
ALTER TABLE [dbo].[Pacienti]  WITH CHECK ADD  CONSTRAINT [FK_Pacienti_Spitali] FOREIGN KEY([Spitali])
REFERENCES [dbo].[Spitali] ([Id])
GO
ALTER TABLE [dbo].[Pacienti] CHECK CONSTRAINT [FK_Pacienti_Spitali]

--1)Seletko 3 pacientët e parë sipas emrit dhe mbiemrit, emri i të cilëve mbaron me shkronjen A

Select top (3) emri, Mbiemri
From Pacienti
where Emri like '%a'

--2)Shfaqni të gjitha qytetet (Vendbanimi – pa perseritjen e tyre) të cilat ndodhen në tabelën
    --Pacienti emri i te cilave përmban shkornjën n dhe r ose shkornja e dytë e qytetit është e

Select distinct Vendbanimi
From Pacienti 
where Emri like '%n' and Emri like '%r' or Vendbanimi like '%_e%'

--3)Numëro doktorët sipas numrit të diagnozave të dhëna. (Hint: përdorni Inner Join)

Select d.Emri,d.Mbiemri, COUNT (diagnoza_id) as nrDiagnozave
from Doktori d inner join Diagnoza_Doktori dd
on d.Id = dd.Doktori_id group by d.Emri,d.Mbiemri Order by nrDiagnozave DESC

/*4)Numero te gjithe pacientet te cilet jane te shtrire ne spitalet perkatese sipas emrit dhe
vendit te spitalit si dhe renditni nga spitali me numer me te vogel te pacienteve te ai me
numer me te madh. (Hint: përdorni Left ose Right Join)*/

Select s.Emri,s.Vendi,COUNT (p.id)
from Pacienti p left join Spitali s
on s.Id= p.Spitali
where p.Spitali is not null
group by s.Emri,s.Vendi
order by s.Emri asc;

--5)Selekto të gjithë doktorët edhe nëse nuk kan kontrolluar ndonjë pacient. (Hint: përdorni Left ose Right Join)

 Select d.Emri, d.Mbiemri, p.Emri as Pacienti
 from pacienti p right join Doktori d
 on d.Id=p.Spitali
 group by d.Emri, d.Mbiemri, p.Emri 

--6)Selekto të gjithë pacientët të cilët nuk janë të shtruar në sptial. (Hint: përdorni Left ose Right Join)

  Select *
 from pacienti p  left join Spitali s
 on s.id = p.Spitali
 where p.Spitali is  null
 group by p.Id, p.Emri, p.Mbiemri, p.Datelindja, p.Vendbanimi, p.Doktori, p.Spitali, s.Id, s.Emri, s.Vendi
 order by p.Id asc;

/* 7) Selekto pacientet sipas diagnozes te cilen i ka caktuar mjeku perkates. Selektimi te behet
sipas Emrit dhe mbiemrit te pacientit, emrit dhe mbiemrit te doktorit dhe ID-se se
diagnozes. (Hint: përdorni Inner Join)*/

Select p.Emri, p.Mbiemri, d.Emri, d.Mbiemri, dd.Diagnoza_ID
from pacienti p inner join Doktori d
on p.Id= d.id
inner join Diagnoza dd
on  p.id = dd.Diagnoza_ID
group by p.Emri, p.Mbiemri, d.Emri, d.Mbiemri, dd.Diagnoza_ID
order by dd.Diagnoza_ID asc;

/* 8) Selekto të gjithë pacintet e shtruar ne spitalin Rezonanca dhe vendbanimi i tyre eshte
Ferizaj të cilët nuk kanë ndonjë pacientë të shtruar. (Hint: përdorni inner Join)*/

Select s.id, s.Emri, s.Vendi, p.Id, p.Emri, p.Mbiemri, p.Datelindja, p.Vendbanimi, p.Doktori, p.Spitali
from spitali s inner join pacienti p 
on s.id = p.Spitali
where s.Emri = 'Rezonanca' and p.Vendbanimi= 'Ferizaj' and p .Doktori is null
group by s.id, s.Emri, s.Vendi, p.Id, p.Emri, p.Mbiemri, p.Datelindja, p.Vendbanimi, p.Doktori, p.Spitali

/* 9) Selekto të gjithë pacientët të cilët nuk janë kontrolluar nga ndonjë doctor. (Hint: përdorni
Left ose Right Join)*/

Select p.Emri, p.Mbiemri, p.Datelindja, p.Vendbanimi, d.Emri as Doktori
from Pacienti p left Join Doktori d 
on p.spitali=d.Id
where d.Emri is null
group by p.Emri, p.Mbiemri,p.Datelindja, p.Vendbanimi, d.Emri

/* 10) Selekto pacientet sipas diagnoses ‘Semundje kronike’ te cilen i ka caktuar mjeku
perkates. Selektimi te behet sipas Emrit dhe mbiemrit te pacientit, emrit dhe mbiemrit te
doktorit dhe emrit te semundjes. (Hint: përdorni inner Join)*/

Select p.Emri, p.Mbiemri, d.Emri, d.Mbiemri, dd.Semundja
from pacienti p inner join Doktori d
on p.spitali= d.Id
inner join Diagnoza dd
on p.id=dd.Diagnoza_ID
where Semundja ='Semundje kronike'
group by p.Emri, p.Mbiemri, d.Emri, d.Mbiemri, dd.Semundja
order by p.Emri asc



