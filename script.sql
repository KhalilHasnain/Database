USE [db.MudrisaManagement]
GO
/****** Object:  Table [dbo].[tblTulabaRegistration]    Script Date: 12/19/2024 1:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTulabaRegistration](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[MudrisaID] [tinyint] NOT NULL,
	[FirstName] [varchar](10) NOT NULL,
	[LastName] [varchar](10) NOT NULL,
	[FatherName] [varchar](20) NOT NULL,
	[CNIC_FROM B] [bigint] NOT NULL,
	[PhotoPath] [nvarchar](50) NOT NULL,
	[IsParentMartioyed] [bit] NOT NULL,
	[Accomodation] [bit] NOT NULL,
	[GenderID] [tinyint] NOT NULL,
	[StatusID] [tinyint] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[AdmissionDate] [datetime] NULL,
 CONSTRAINT [PK_tblTuiabaRegistration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMudrisaInformation]    Script Date: 12/19/2024 1:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMudrisaInformation](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](20) NOT NULL,
	[ContactNumber] [bigint] NOT NULL,
	[Website] [nvarchar](30) NULL,
	[Email] [nvarchar](20) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_tblMudrisaInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGender]    Script Date: 12/19/2024 1:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGender](
	[ID] [tinyint] NOT NULL,
	[Gender] [varchar](6) NOT NULL,
 CONSTRAINT [PK_tblGender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLibraries]    Script Date: 12/19/2024 1:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLibraries](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MudrisaID] [tinyint] NOT NULL,
	[LibraryName] [varchar](50) NOT NULL,
	[TotalRacks] [bigint] NOT NULL,
	[TotalBooks] [bigint] NOT NULL,
	[OpenTime] [time](7) NOT NULL,
	[CloseTime] [time](7) NOT NULL,
	[StatusID] [tinyint] NOT NULL,
	[AdmissionDate] [datetime] NULL,
 CONSTRAINT [PK_tblLibraries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBooks]    Script Date: 12/19/2024 1:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooks](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[MudrisaID] [tinyint] NOT NULL,
	[BookNumber] [tinyint] NOT NULL,
	[BookTitle] [nvarchar](40) NOT NULL,
	[Author] [nvarchar](25) NOT NULL,
	[RackNumber] [tinyint] NOT NULL,
	[LibraryID] [tinyint] NOT NULL,
	[BookCategoriesID] [tinyint] NOT NULL,
	[ShelfNumber] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblBooks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBookIssue]    Script Date: 12/19/2024 1:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookIssue](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[LibraryID] [tinyint] NOT NULL,
	[BookID] [smallint] NOT NULL,
	[StudentID] [smallint] NOT NULL,
	[IssueDate] [date] NOT NULL,
	[ReturnDate] [date] NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblBookIssue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBookCategories]    Script Date: 12/19/2024 1:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookCategories](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblBookCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStatuses]    Script Date: 12/19/2024 1:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatuses](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[type] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblStatuses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwBooksIssue11]    Script Date: 12/19/2024 1:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwBooksIssue11]
AS
SELECT        E.ID AS MudrisaID, E.Title AS MudrisaName, F.ID AS StudentID, F.FirstName, F.LastName, A.ID AS BookID, A.BookTitle, A.BookNumber, A.Author, B.Type AS BookCategories, C.ID AS BookIssueID, C.IssueDate, C.ReturnDate, 
                         D.ID AS LibraryID, D.LibraryName, G.Gender, H.type AS Status
FROM            dbo.tblBooks AS A INNER JOIN
                         dbo.tblBookCategories AS B ON A.BookCategoriesID = B.ID INNER JOIN
                         dbo.tblBookIssue AS C ON C.BookID = A.ID INNER JOIN
                         dbo.tblLibraries AS D ON A.LibraryID = D.ID INNER JOIN
                         dbo.tblMudrisaInformation AS E ON A.MudrisaID = E.ID INNER JOIN
                         dbo.tblTulabaRegistration AS F ON F.MudrisaID = C.StudentID INNER JOIN
                         dbo.tblGender AS G ON G.ID = F.GenderID INNER JOIN
                         dbo.tblStatuses AS H ON H.ID = C.StatusID
GO
/****** Object:  Table [dbo].[tblCities]    Script Date: 12/19/2024 1:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCities](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](20) NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblCities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProvinces]    Script Date: 12/19/2024 1:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProvinces](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [varchar](20) NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblProvinces] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNationalities]    Script Date: 12/19/2024 1:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNationalities](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblNationalities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTulabaAddress]    Script Date: 12/19/2024 1:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTulabaAddress](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RegistrationID] [smallint] NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[CityID] [smallint] NOT NULL,
	[ProvincceID] [tinyint] NOT NULL,
	[CountryID] [tinyint] NOT NULL,
	[NationalityID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblTulabaAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCountries]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountries](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](20) NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblCountries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTulabaContactNumber]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTulabaContactNumber](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[RegistrationID] [smallint] NOT NULL,
	[ContactNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_tblTulabaContactNumber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwMudrisainformation]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwMudrisainformation]
AS
SELECT        A.ID AS StudentID, A.FirstName + ' ' + A.LastName AS TulabaName, B.Title AS MudrisaName, A.FatherName, A.DateOfBirth, E.Gender, A.[CNIC_FROM B], C.ContactNumber, 
                         D.Street + ' ' + F.CityName + ' ' + G.ProvinceName + ' ' + H.CountryName AS Address, I.Title AS Nationality
FROM            dbo.tblTulabaRegistration AS A INNER JOIN
                         dbo.tblMudrisaInformation AS B ON B.ID = A.MudrisaID INNER JOIN
                         dbo.tblTulabaContactNumber AS C ON B.ID = C.RegistrationID INNER JOIN
                         dbo.tblTulabaAddress AS D ON A.ID = D.RegistrationID INNER JOIN
                         dbo.tblGender AS E ON A.GenderID = E.ID INNER JOIN
                         dbo.tblCities AS F ON D.CityID = F.ID INNER JOIN
                         dbo.tblProvinces AS G ON D.ProvincceID = G.ID INNER JOIN
                         dbo.tblCountries AS H ON D.CountryID = H.ID INNER JOIN
                         dbo.tblNationalities AS I ON D.NationalityID = I.ID
GO
/****** Object:  View [dbo].[Vwtulabaaddress]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vwtulabaaddress]
AS
SELECT        A.ID AS StudentID, A.FirstName + ' ' + A.LastName AS TulabaName, B.Title AS MudrisaName, A.FatherName, A.DateOfBirth, E.Gender, A.[CNIC_FROM B], C.ContactNumber, 
                         D.Street + ' ' + F.CityName + ' ' + G.ProvinceName + ' ' + H.CountryName AS Address, I.Title AS Nationality
FROM            dbo.tblTulabaRegistration AS A INNER JOIN
                         dbo.tblMudrisaInformation AS B ON B.ID = A.MudrisaID INNER JOIN
                         dbo.tblTulabaContactNumber AS C ON B.ID = C.RegistrationID INNER JOIN
                         dbo.tblTulabaAddress AS D ON A.ID = D.RegistrationID INNER JOIN
                         dbo.tblGender AS E ON A.GenderID = E.ID INNER JOIN
                         dbo.tblCities AS F ON D.CityID = F.ID INNER JOIN
                         dbo.tblProvinces AS G ON D.ProvincceID = G.ID INNER JOIN
                         dbo.tblCountries AS H ON D.CountryID = H.ID INNER JOIN
                         dbo.tblNationalities AS I ON D.NationalityID = I.ID
GO
/****** Object:  View [dbo].[vwtulabaregistration]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwtulabaregistration]
AS
SELECT        TOP (100) PERCENT COUNT_BIG(dbo.tblTulabaRegistration.ID) AS TotalNumber, COUNT(dbo.tblTulabaRegistration.FirstName) AS FName, dbo.tblTulabaRegistration.LastName, dbo.tblTulabaContactNumber.RegistrationID, 
                         dbo.tblTulabaContactNumber.ContactNumber, dbo.tblTulabaAddress.Street, dbo.tblTulabaAddress.CityID, dbo.tblTulabaAddress.RegistrationID AS Expr1
FROM            dbo.tblTulabaRegistration INNER JOIN
                         dbo.tblTulabaContactNumber ON dbo.tblTulabaRegistration.ID = dbo.tblTulabaContactNumber.ID INNER JOIN
                         dbo.tblTulabaAddress ON dbo.tblTulabaRegistration.ID = dbo.tblTulabaAddress.ID
GROUP BY dbo.tblTulabaRegistration.LastName, dbo.tblTulabaContactNumber.RegistrationID, dbo.tblTulabaContactNumber.ContactNumber, dbo.tblTulabaAddress.Street, dbo.tblTulabaAddress.CityID, dbo.tblTulabaAddress.RegistrationID, 
                         dbo.tblTulabaRegistration.MudrisaID
ORDER BY COUNT_BIG(dbo.tblTulabaRegistration.ID), dbo.tblTulabaRegistration.MudrisaID DESC, FName, dbo.tblTulabaRegistration.LastName DESC
GO
/****** Object:  View [dbo].[less than greater than]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[less than greater than]
AS
SELECT        ID, MudrisaID, LibraryName, TotalRacks, TotalBooks, OpenTime, CloseTime, StatusID, AdmissionDate
FROM            dbo.tblLibraries
WHERE        (TotalRacks > 499) AND (TotalRacks < 601)
GO
/****** Object:  View [dbo].[View_1]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        TOP (100) PERCENT COUNT_BIG(dbo.tblTulabaRegistration.ID) AS TotalNumber, COUNT(dbo.tblTulabaRegistration.FirstName) AS FName, dbo.tblTulabaRegistration.LastName, dbo.tblTulabaContactNumber.RegistrationID, 
                         dbo.tblTulabaContactNumber.ContactNumber, dbo.tblTulabaAddress.Street, dbo.tblTulabaAddress.CityID, dbo.tblTulabaAddress.RegistrationID AS Expr1
FROM            dbo.tblTulabaRegistration INNER JOIN
                         dbo.tblTulabaContactNumber ON dbo.tblTulabaRegistration.ID = dbo.tblTulabaContactNumber.ID INNER JOIN
                         dbo.tblTulabaAddress ON dbo.tblTulabaRegistration.ID = dbo.tblTulabaAddress.ID
GROUP BY dbo.tblTulabaRegistration.LastName, dbo.tblTulabaContactNumber.RegistrationID, dbo.tblTulabaContactNumber.ContactNumber, dbo.tblTulabaAddress.Street, dbo.tblTulabaAddress.CityID, dbo.tblTulabaAddress.RegistrationID, 
                         dbo.tblTulabaRegistration.MudrisaID
ORDER BY TotalNumber, dbo.tblTulabaRegistration.MudrisaID DESC, FName, dbo.tblTulabaRegistration.LastName DESC
GO
/****** Object:  View [dbo].[totalbooks]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[totalbooks]
AS
SELECT        TOP (100) PERCENT COUNT(A.ID) AS TotalBooks, B.LibraryName
FROM            dbo.tblBooks AS A INNER JOIN
                         dbo.tblLibraries AS B ON A.BookCategoriesID = B.ID AND MONTH(B.AdmissionDate) = MONTH(GETDATE()) - 1
GROUP BY B.LibraryName, A.ID
ORDER BY TotalBooks
GO
/****** Object:  Table [dbo].[tblActivities]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivities](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ActivityName] [varchar](10) NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblActivities_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClasses]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClasses](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MudrisaID] [tinyint] NOT NULL,
	[ClassName] [varchar](20) NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblClasses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwActivitiesinClasses]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwActivitiesinClasses]
AS
SELECT        dbo.tblClasses.ID, dbo.tblActivities.ActivityName, dbo.tblClasses.ClassName
FROM            dbo.tblClasses INNER JOIN
                         dbo.tblActivities ON dbo.tblClasses.ID = dbo.tblActivities.ID
GO
/****** Object:  Table [dbo].[tblTeacherRegistration]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeacherRegistration](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MudrisaID] [tinyint] NOT NULL,
	[FirstName] [varchar](10) NOT NULL,
	[LastName] [varchar](10) NOT NULL,
	[Cnic] [bigint] NOT NULL,
	[FatherName] [varchar](10) NOT NULL,
	[PhotoPath] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblTeacherRegistration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwTeacherAssignClasses]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwTeacherAssignClasses]
AS
SELECT        dbo.tblClasses.ID, dbo.tblClasses.ClassName, dbo.tblTeacherRegistration.FirstName, dbo.tblTeacherRegistration.LastName, dbo.tblMudrisaInformation.Title
FROM            dbo.tblClasses INNER JOIN
                         dbo.tblTeacherRegistration ON dbo.tblClasses.ID = dbo.tblTeacherRegistration.ID INNER JOIN
                         dbo.tblMudrisaInformation ON dbo.tblClasses.ID = dbo.tblMudrisaInformation.ID
GO
/****** Object:  View [dbo].[vwBooksIssue]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwBooksIssue]
AS
SELECT        dbo.tblMudrisaInformation.ID, dbo.tblMudrisaInformation.Title, dbo.tblTulabaRegistration.ID AS Expr1, dbo.tblTulabaRegistration.FirstName, dbo.tblTulabaRegistration.LastName, dbo.tblBooks.BookTitle, 
                         dbo.tblBooks.BookNumber, dbo.tblBooks.Author, dbo.tblBookCategories.Type, dbo.tblBookIssue.IssueDate, dbo.tblBookIssue.ReturnDate, dbo.tblGender.Gender, dbo.tblLibraries.LibraryName
FROM            dbo.tblMudrisaInformation INNER JOIN
                         dbo.tblTulabaRegistration ON dbo.tblMudrisaInformation.ID = dbo.tblTulabaRegistration.MudrisaID INNER JOIN
                         dbo.tblBooks ON dbo.tblMudrisaInformation.ID = dbo.tblBooks.MudrisaID INNER JOIN
                         dbo.tblLibraries ON dbo.tblMudrisaInformation.ID = dbo.tblLibraries.MudrisaID AND dbo.tblBooks.LibraryID = dbo.tblLibraries.ID INNER JOIN
                         dbo.tblBookIssue ON dbo.tblLibraries.ID = dbo.tblBookIssue.LibraryID AND dbo.tblBooks.ID = dbo.tblBookIssue.BookID AND dbo.tblTulabaRegistration.ID = dbo.tblBookIssue.StudentID INNER JOIN
                         dbo.tblStatuses ON dbo.tblBookIssue.StatusID = dbo.tblStatuses.ID AND dbo.tblTulabaRegistration.StatusID = dbo.tblStatuses.ID INNER JOIN
                         dbo.tblGender ON dbo.tblTulabaRegistration.GenderID = dbo.tblGender.ID INNER JOIN
                         dbo.tblBookCategories ON dbo.tblBooks.BookCategoriesID = dbo.tblBookCategories.ID
GO
/****** Object:  View [dbo].[vwTulabaProfile]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwTulabaProfile]
AS
SELECT        dbo.tblTulabaRegistration.ID, dbo.tblTulabaRegistration.FirstName, dbo.tblTulabaRegistration.LastName, dbo.tblTulabaRegistration.FatherName, dbo.tblTulabaRegistration.[CNIC_FROM B], 
                         dbo.tblTulabaRegistration.AdmissionDate, dbo.tblTulabaRegistration.DateOfBirth, dbo.tblTulabaRegistration.StatusID, dbo.tblTulabaRegistration.GenderID, dbo.tblTulabaRegistration.Accomodation, 
                         dbo.tblTulabaRegistration.PhotoPath, dbo.tblTulabaRegistration.IsParentMartioyed, dbo.tblTulabaRegistration.MudrisaID, dbo.tblMudrisaInformation.Title, dbo.tblMudrisaInformation.ContactNumber, dbo.tblTulabaAddress.Street, 
                         dbo.tblTulabaContactNumber.ContactNumber AS Expr1, dbo.tblNationalities.Title AS Expr2, dbo.tblGender.Gender, dbo.tblCountries.CountryName, dbo.tblProvinces.ProvinceName, dbo.tblCities.CityName
FROM            dbo.tblTulabaRegistration INNER JOIN
                         dbo.tblMudrisaInformation ON dbo.tblTulabaRegistration.ID = dbo.tblMudrisaInformation.ID INNER JOIN
                         dbo.tblTulabaAddress ON dbo.tblTulabaRegistration.ID = dbo.tblTulabaAddress.ID INNER JOIN
                         dbo.tblTulabaContactNumber ON dbo.tblTulabaRegistration.ID = dbo.tblTulabaContactNumber.ID INNER JOIN
                         dbo.tblProvinces ON dbo.tblTulabaRegistration.ID = dbo.tblProvinces.ID INNER JOIN
                         dbo.tblNationalities ON dbo.tblTulabaRegistration.ID = dbo.tblNationalities.ID INNER JOIN
                         dbo.tblGender ON dbo.tblTulabaRegistration.ID = dbo.tblGender.ID INNER JOIN
                         dbo.tblCountries ON dbo.tblTulabaRegistration.ID = dbo.tblCountries.ID INNER JOIN
                         dbo.tblCities ON dbo.tblTulabaRegistration.ID = dbo.tblCities.ID
GO
/****** Object:  View [dbo].[vwissueDateIsNull]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwissueDateIsNull]
AS
SELECT        dbo.tblBooks.ID, dbo.tblBooks.BookNumber, dbo.tblBooks.BookTitle, dbo.tblBooks.Author, dbo.tblBookIssue.IssueDate
FROM            dbo.tblBooks INNER JOIN
                         dbo.tblBookIssue ON dbo.tblBooks.ID = dbo.tblBookIssue.ID
WHERE        (dbo.tblBookIssue.IssueDate IS NULL)
GO
/****** Object:  View [dbo].[vwBookCatalogueinLibraries]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwBookCatalogueinLibraries]
AS
SELECT        A.ID, A.BookTitle, A.Author, A.BookNumber, A.RackNumber, A.ShelfNumber, B.LibraryName
FROM            dbo.tblBooks AS A INNER JOIN
                         dbo.tblLibraries AS B ON A.LibraryID = B.ID
GO
/****** Object:  Table [dbo].[tblAdvertisment]    Script Date: 12/19/2024 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdvertisment](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[MudrisaID] [tinyint] NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[MediaTypeID] [tinyint] NOT NULL,
	[ImagePath] [nvarchar](50) NOT NULL,
	[TotalCost] [smallmoney] NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblAdvertisment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[MudrisaAdvertisementwithCompleteDetail]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MudrisaAdvertisementwithCompleteDetail]
AS
SELECT        dbo.tblAdvertisment.ID, dbo.tblMudrisaInformation.Title, dbo.tblMudrisaInformation.Website, dbo.tblMudrisaInformation.Email, dbo.tblMudrisaInformation.ContactNumber, dbo.tblAdvertisment.FromDate, 
                         dbo.tblAdvertisment.ToDate, dbo.tblAdvertisment.ImagePath, dbo.tblAdvertisment.TotalCost
FROM            dbo.tblAdvertisment INNER JOIN
                         dbo.tblMudrisaInformation ON dbo.tblAdvertisment.ID = dbo.tblMudrisaInformation.ID
GO
/****** Object:  Table [dbo].[tblMudrisaAddress]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMudrisaAddress](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MudrisaID] [tinyint] NOT NULL,
	[Street] [nvarchar](100) NOT NULL,
	[CityID] [smallint] NOT NULL,
	[ProvinceID] [tinyint] NOT NULL,
	[CountryID] [tinyint] NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblMudrisaAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCompleteInformationOfMudrisa]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwCompleteInformationOfMudrisa]
AS
SELECT        A.ID, A.Title, A.Email, A.Website, A.ContactNumber, A.CreatedOn, B.ID AS Expr1, B.Street + ' ' + C.ProvinceName + ' ' + D.CityName + ' ' + F.CountryName AS Address
FROM            dbo.tblMudrisaInformation AS A INNER JOIN
                         dbo.tblMudrisaAddress AS B ON A.ID = B.MudrisaID INNER JOIN
                         dbo.tblProvinces AS C ON B.ProvinceID = C.ID INNER JOIN
                         dbo.tblCities AS D ON B.CityID = D.ID INNER JOIN
                         dbo.tblCountries AS F ON B.CountryID = F.ID
GO
/****** Object:  Table [dbo].[tblPostType]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPostType](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblPostType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwHifzUstaadpost]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwHifzUstaadpost]
AS
SELECT        dbo.tblPostType.Type, dbo.tblMudrisaInformation.ID, dbo.tblMudrisaInformation.Title
FROM            dbo.tblMudrisaInformation INNER JOIN
                         dbo.tblPostType ON dbo.tblMudrisaInformation.ID = dbo.tblPostType.ID
WHERE        (dbo.tblPostType.Type = 'Hifz Ustaad')
GO
/****** Object:  Table [dbo].[tblTimeTable]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTimeTable](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ActivityID] [tinyint] NOT NULL,
	[ClassID] [tinyint] NOT NULL,
	[StatusID] [tinyint] NOT NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
 CONSTRAINT [PK_tblTimeTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwtimetable]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwtimetable]
AS
SELECT        C.ClassName, B.ActivityName, A.StartTime, A.EndTime
FROM            dbo.tblTimeTable AS A INNER JOIN
                         dbo.tblActivities AS B ON A.ActivityID = B.ID INNER JOIN
                         dbo.tblClasses AS C ON A.ClassID = C.ID
GO
/****** Object:  View [dbo].[vwTotalBooksInLibraries]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwTotalBooksInLibraries]
AS
SELECT        COUNT(A.ID) AS Books, B.LibraryName
FROM            dbo.tblBooks AS A INNER JOIN
                         dbo.tblLibraries AS B ON A.LibraryID = B.ID
GROUP BY B.LibraryName
GO
/****** Object:  View [dbo].[vwbetween]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwbetween]
AS
SELECT        ID, MudrisaID, LibraryName, TotalRacks, TotalBooks, OpenTime, CloseTime, StatusID, AdmissionDate
FROM            dbo.tblLibraries
WHERE        (AdmissionDate BETWEEN CONVERT(DATETIME, '2023-03-16 00:00:00', 102) AND CONVERT(DATETIME, '2023-04-15 00:00:00', 102))
GO
/****** Object:  View [dbo].[vwAdmissionDateAND]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwAdmissionDateAND]
AS
SELECT        ID, MudrisaID, FirstName, LastName, FatherName, [CNIC_FROM B], PhotoPath, IsParentMartioyed, Accomodation, GenderID, StatusID, DateOfBirth, AdmissionDate
FROM            dbo.tblTulabaRegistration
WHERE        (AdmissionDate > '2023-03-14') AND (AdmissionDate < '2023-04-23')
GO
/****** Object:  Table [dbo].[tblAdvertismentMediaType]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdvertismentMediaType](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tblAdvertismentMediaType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdvertismentPost]    Script Date: 12/19/2024 1:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdvertismentPost](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AdvertismentID] [smallint] NOT NULL,
	[PostID] [smallint] NOT NULL,
 CONSTRAINT [PK_tblAdvertismentPost] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoginForm]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoginForm](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblLoginForm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQualifications]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQualifications](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[title] [varchar](40) NOT NULL,
	[StatusesID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblQualifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTeacherAddress]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeacherAddress](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TeacherID] [tinyint] NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[CityID] [smallint] NOT NULL,
	[CountryID] [tinyint] NOT NULL,
	[ProvincesID] [tinyint] NOT NULL,
	[NationalityID] [tinyint] NOT NULL,
	[GenderID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblTeacherAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTeacherContactNumber]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeacherContactNumber](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TeacherID] [tinyint] NOT NULL,
	[ContactNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_tblTeacherContactNumber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTeacherQualification]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeacherQualification](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TeacherID] [tinyint] NOT NULL,
	[QualificationID] [tinyint] NOT NULL,
	[StatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblTeacherQualification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblActivities] ON 

INSERT [dbo].[tblActivities] ([ID], [ActivityName], [StatusID]) VALUES (1, N'Cricket', 1)
INSERT [dbo].[tblActivities] ([ID], [ActivityName], [StatusID]) VALUES (2, N'Football', 1)
INSERT [dbo].[tblActivities] ([ID], [ActivityName], [StatusID]) VALUES (3, N'VolyBall', 1)
INSERT [dbo].[tblActivities] ([ID], [ActivityName], [StatusID]) VALUES (4, N'Memorygame', 1)
SET IDENTITY_INSERT [dbo].[tblActivities] OFF
SET IDENTITY_INSERT [dbo].[tblAdvertisment] ON 

INSERT [dbo].[tblAdvertisment] ([ID], [MudrisaID], [FromDate], [ToDate], [MediaTypeID], [ImagePath], [TotalCost], [StatusID]) VALUES (1, 1, CAST(N'2020-04-02' AS Date), CAST(N'2020-04-04' AS Date), 1, N'rootfan567', 50000.0000, 1)
INSERT [dbo].[tblAdvertisment] ([ID], [MudrisaID], [FromDate], [ToDate], [MediaTypeID], [ImagePath], [TotalCost], [StatusID]) VALUES (2, 4, CAST(N'2022-05-23' AS Date), CAST(N'2022-06-23' AS Date), 2, N'rootfan5678', 70000.0000, 1)
INSERT [dbo].[tblAdvertisment] ([ID], [MudrisaID], [FromDate], [ToDate], [MediaTypeID], [ImagePath], [TotalCost], [StatusID]) VALUES (3, 5, CAST(N'2018-06-02' AS Date), CAST(N'2018-07-02' AS Date), 3, N'rootfan4567', 90000.0000, 1)
INSERT [dbo].[tblAdvertisment] ([ID], [MudrisaID], [FromDate], [ToDate], [MediaTypeID], [ImagePath], [TotalCost], [StatusID]) VALUES (4, 6, CAST(N'2015-09-25' AS Date), CAST(N'2015-10-25' AS Date), 4, N'rootfan34567', 80000.0000, 1)
SET IDENTITY_INSERT [dbo].[tblAdvertisment] OFF
SET IDENTITY_INSERT [dbo].[tblAdvertismentMediaType] ON 

INSERT [dbo].[tblAdvertismentMediaType] ([ID], [Type]) VALUES (1, N'Newspaper')
INSERT [dbo].[tblAdvertismentMediaType] ([ID], [Type]) VALUES (2, N'Facebook')
INSERT [dbo].[tblAdvertismentMediaType] ([ID], [Type]) VALUES (3, N'Whatsapp')
INSERT [dbo].[tblAdvertismentMediaType] ([ID], [Type]) VALUES (4, N'Instagram')
SET IDENTITY_INSERT [dbo].[tblAdvertismentMediaType] OFF
SET IDENTITY_INSERT [dbo].[tblAdvertismentPost] ON 

INSERT [dbo].[tblAdvertismentPost] ([ID], [AdvertismentID], [PostID]) VALUES (9, 1, 1)
INSERT [dbo].[tblAdvertismentPost] ([ID], [AdvertismentID], [PostID]) VALUES (10, 2, 2)
INSERT [dbo].[tblAdvertismentPost] ([ID], [AdvertismentID], [PostID]) VALUES (11, 3, 3)
INSERT [dbo].[tblAdvertismentPost] ([ID], [AdvertismentID], [PostID]) VALUES (12, 4, 1)
SET IDENTITY_INSERT [dbo].[tblAdvertismentPost] OFF
SET IDENTITY_INSERT [dbo].[tblBookCategories] ON 

INSERT [dbo].[tblBookCategories] ([ID], [Type]) VALUES (1, N'Aqeedah')
INSERT [dbo].[tblBookCategories] ([ID], [Type]) VALUES (2, N'Seerat-ul-Nabi')
INSERT [dbo].[tblBookCategories] ([ID], [Type]) VALUES (3, N'Quran-e-Majid')
INSERT [dbo].[tblBookCategories] ([ID], [Type]) VALUES (5, N'Hadees-e-Mubarak')
INSERT [dbo].[tblBookCategories] ([ID], [Type]) VALUES (6, N'Fiqah')
SET IDENTITY_INSERT [dbo].[tblBookCategories] OFF
SET IDENTITY_INSERT [dbo].[tblBookIssue] ON 

INSERT [dbo].[tblBookIssue] ([ID], [LibraryID], [BookID], [StudentID], [IssueDate], [ReturnDate], [StatusID]) VALUES (10, 4, 10, 5, CAST(N'2018-07-07' AS Date), NULL, 1)
INSERT [dbo].[tblBookIssue] ([ID], [LibraryID], [BookID], [StudentID], [IssueDate], [ReturnDate], [StatusID]) VALUES (11, 5, 12, 6, CAST(N'2020-09-23' AS Date), CAST(N'2020-10-23' AS Date), 1)
INSERT [dbo].[tblBookIssue] ([ID], [LibraryID], [BookID], [StudentID], [IssueDate], [ReturnDate], [StatusID]) VALUES (25, 5, 12, 25, CAST(N'2022-09-23' AS Date), NULL, 6)
SET IDENTITY_INSERT [dbo].[tblBookIssue] OFF
SET IDENTITY_INSERT [dbo].[tblBooks] ON 

INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (7, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (8, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (9, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (10, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (12, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (110, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (111, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (112, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (113, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (114, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (115, 1, 20, N'Ishq-e-Rasool', N'Mulana Tariq Jamil', 30, 1, 1, 40)
INSERT [dbo].[tblBooks] ([ID], [MudrisaID], [BookNumber], [BookTitle], [Author], [RackNumber], [LibraryID], [BookCategoriesID], [ShelfNumber]) VALUES (116, 1, 40, N'Fayzaile Amal', N'Moulana Ilyas Sahab', 18, 1, 1, 4)
SET IDENTITY_INSERT [dbo].[tblBooks] OFF
SET IDENTITY_INSERT [dbo].[tblCities] ON 

INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (1, N'D I Khan', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (2, N'Islamabad', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (3, N'Peshawar', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (4, N'Multan', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (5, N'Lahore', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (6, N'Chakwal', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (7, N'Nowshera', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (8, N'Dera Gazi khan', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (9, N'Abbotabad', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (10, N'Quetta', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (11, N'Faysalabad', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (12, N'kohat', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (13, N'Bannu', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (14, N'Mianwali', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (15, N'fath e jangh', 1)
INSERT [dbo].[tblCities] ([ID], [CityName], [StatusID]) VALUES (104, N'Islamabad1', 1)
SET IDENTITY_INSERT [dbo].[tblCities] OFF
SET IDENTITY_INSERT [dbo].[tblClasses] ON 

INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (1, 2, N'Hifz-e-Quran', 2)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (3, 1, N'Ten Qiraat Course', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (4, 1, N'Quran Tafseer Course', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (5, 1, N'Islamic Studies', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (6, 1, N'Quran Hifz', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (12, 1, N'QuranReading', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (13, 1, N'QuranReading', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (14, 1, N'QuranReading', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (15, 1, N'QuranReading', 1)
INSERT [dbo].[tblClasses] ([ID], [MudrisaID], [ClassName], [StatusID]) VALUES (16, 1, N'QuranReading', 1)
SET IDENTITY_INSERT [dbo].[tblClasses] OFF
SET IDENTITY_INSERT [dbo].[tblCountries] ON 

INSERT [dbo].[tblCountries] ([ID], [CountryName], [StatusID]) VALUES (1, N'Pakistan', 1)
SET IDENTITY_INSERT [dbo].[tblCountries] OFF
INSERT [dbo].[tblGender] ([ID], [Gender]) VALUES (0, N'Male')
SET IDENTITY_INSERT [dbo].[tblLibraries] ON 

INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (1, 1, N'AnwarLibrary', 200, 500, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, CAST(N'2024-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (2, 1, N'AnwarLibrary', 200, 500, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, CAST(N'2023-04-05T17:34:58.213' AS DateTime))
INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (3, 1, N'AnwarLibrary', 200, 500, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, CAST(N'2023-03-26T17:35:31.520' AS DateTime))
INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (4, 1, N'AnwarLibrary', 200, 500, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, CAST(N'2023-03-16T17:35:57.403' AS DateTime))
INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (5, 1, N'AnwarLibrary', 200, 500, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, CAST(N'2023-03-09T17:51:49.767' AS DateTime))
INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (6, 1, N'AnwarLibrary', 200, 500, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, NULL)
INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (7, 1, N'AnwarLibrary', 200, 500, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 1, NULL)
INSERT [dbo].[tblLibraries] ([ID], [MudrisaID], [LibraryName], [TotalRacks], [TotalBooks], [OpenTime], [CloseTime], [StatusID], [AdmissionDate]) VALUES (9, 1, N'Muavia Library', 350, 70000, CAST(N'08:00:00' AS Time), CAST(N'05:30:00' AS Time), 1, NULL)
SET IDENTITY_INSERT [dbo].[tblLibraries] OFF
SET IDENTITY_INSERT [dbo].[tblLoginForm] ON 

INSERT [dbo].[tblLoginForm] ([ID], [UserName], [FullName], [Password]) VALUES (1, N'Wahab', N'AbdulWahab', N'12345')
INSERT [dbo].[tblLoginForm] ([ID], [UserName], [FullName], [Password]) VALUES (2, N'Khalil', N'KhalilHasnain', N'123456')
INSERT [dbo].[tblLoginForm] ([ID], [UserName], [FullName], [Password]) VALUES (3, N'Gulraiz', N'GulraizHaider', N'1234567')
INSERT [dbo].[tblLoginForm] ([ID], [UserName], [FullName], [Password]) VALUES (4, N'Adeel', N'AdeelHassnain', N'12345678')
INSERT [dbo].[tblLoginForm] ([ID], [UserName], [FullName], [Password]) VALUES (5, N'Asif', N'AsifRasheed', N'123456789')
SET IDENTITY_INSERT [dbo].[tblLoginForm] OFF
SET IDENTITY_INSERT [dbo].[tblMudrisaAddress] ON 

INSERT [dbo].[tblMudrisaAddress] ([ID], [MudrisaID], [Street], [CityID], [ProvinceID], [CountryID], [StatusID]) VALUES (3, 1, N'Bhag wali gali', 1, 1, 1, 1)
INSERT [dbo].[tblMudrisaAddress] ([ID], [MudrisaID], [Street], [CityID], [ProvinceID], [CountryID], [StatusID]) VALUES (4, 4, N'F 7 street 54', 2, 4, 1, 1)
INSERT [dbo].[tblMudrisaAddress] ([ID], [MudrisaID], [Street], [CityID], [ProvinceID], [CountryID], [StatusID]) VALUES (5, 5, N'Located west of lahore fort', 5, 4, 1, 1)
INSERT [dbo].[tblMudrisaAddress] ([ID], [MudrisaID], [Street], [CityID], [ProvinceID], [CountryID], [StatusID]) VALUES (7, 6, N'Siqli Garan Wali Gali', 1, 1, 1, 1)
INSERT [dbo].[tblMudrisaAddress] ([ID], [MudrisaID], [Street], [CityID], [ProvinceID], [CountryID], [StatusID]) VALUES (12, 7, N'FaqeeraBad', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tblMudrisaAddress] OFF
SET IDENTITY_INSERT [dbo].[tblMudrisaInformation] ON 

INSERT [dbo].[tblMudrisaInformation] ([ID], [Title], [ContactNumber], [Website], [Email], [CreatedOn]) VALUES (1, N'AmeerMuavia', 34367890767, N'www.ameer.com', N'mudrisa@gmai.com', CAST(N'2023-03-11T16:39:53.270' AS DateTime))
INSERT [dbo].[tblMudrisaInformation] ([ID], [Title], [ContactNumber], [Website], [Email], [CreatedOn]) VALUES (4, N'ShahFaysal', 3150830654, N'www.shah.com', N'mudrisa@gmai.com', CAST(N'2023-03-31T12:20:09.787' AS DateTime))
INSERT [dbo].[tblMudrisaInformation] ([ID], [Title], [ContactNumber], [Website], [Email], [CreatedOn]) VALUES (5, N'Badshahi', 3349875258, N'www.shahi.com', N'mudrisa@gmai.com', CAST(N'2023-03-31T12:20:47.190' AS DateTime))
INSERT [dbo].[tblMudrisaInformation] ([ID], [Title], [ContactNumber], [Website], [Email], [CreatedOn]) VALUES (6, N'Farooqia', 3449447211, N'www.farooqia.com', N'mudrisa@gmai.com', CAST(N'2023-03-31T12:20:57.573' AS DateTime))
INSERT [dbo].[tblMudrisaInformation] ([ID], [Title], [ContactNumber], [Website], [Email], [CreatedOn]) VALUES (7, N'Ayesha', 3429212211, N'www.ayesha.com', N'mudrisa@gmai.com', CAST(N'2023-03-31T12:21:35.080' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblMudrisaInformation] OFF
SET IDENTITY_INSERT [dbo].[tblNationalities] ON 

INSERT [dbo].[tblNationalities] ([ID], [Title]) VALUES (1, N'Pakistani')
SET IDENTITY_INSERT [dbo].[tblNationalities] OFF
SET IDENTITY_INSERT [dbo].[tblPostType] ON 

INSERT [dbo].[tblPostType] ([ID], [Type]) VALUES (1, N'Hifz Ustaad')
INSERT [dbo].[tblPostType] ([ID], [Type]) VALUES (2, N'Qari Ustaad')
INSERT [dbo].[tblPostType] ([ID], [Type]) VALUES (3, N'Nazra Ustaad')
INSERT [dbo].[tblPostType] ([ID], [Type]) VALUES (4, N'Tajweed Ustaad')
SET IDENTITY_INSERT [dbo].[tblPostType] OFF
SET IDENTITY_INSERT [dbo].[tblProvinces] ON 

INSERT [dbo].[tblProvinces] ([ID], [ProvinceName], [StatusID]) VALUES (1, N'khyberpakunkhaw', 1)
INSERT [dbo].[tblProvinces] ([ID], [ProvinceName], [StatusID]) VALUES (2, N'Balochistan', 1)
INSERT [dbo].[tblProvinces] ([ID], [ProvinceName], [StatusID]) VALUES (3, N'Sindh', 1)
INSERT [dbo].[tblProvinces] ([ID], [ProvinceName], [StatusID]) VALUES (4, N'Punjab', 1)
SET IDENTITY_INSERT [dbo].[tblProvinces] OFF
SET IDENTITY_INSERT [dbo].[tblQualifications] ON 

INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (1, N'BS Islamiyat/Bechelor of Islamic Studies', 1)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (2, N'BS English', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (3, N'BS Computer', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (4, N'BS Physics', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (5, N'BS Math', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (6, N'BS English', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (7, N'BS Computer', 3)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (8, N'BS Physics', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (9, N'BS Math', 3)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (10, N'BS English', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (11, N'BS Computer', 3)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (12, N'BS Physics', 4)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (13, N'BS Math', 5)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (22, N'BS English', 2)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (23, N'BS Computer', 3)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (24, N'BS Physics', 4)
INSERT [dbo].[tblQualifications] ([ID], [title], [StatusesID]) VALUES (25, N'BS Math', 5)
SET IDENTITY_INSERT [dbo].[tblQualifications] OFF
SET IDENTITY_INSERT [dbo].[tblStatuses] ON 

INSERT [dbo].[tblStatuses] ([ID], [type]) VALUES (1, N'NonActive')
INSERT [dbo].[tblStatuses] ([ID], [type]) VALUES (2, N'Inactive')
INSERT [dbo].[tblStatuses] ([ID], [type]) VALUES (3, N'pending')
INSERT [dbo].[tblStatuses] ([ID], [type]) VALUES (4, N'Verified')
INSERT [dbo].[tblStatuses] ([ID], [type]) VALUES (5, N'Nonverified')
INSERT [dbo].[tblStatuses] ([ID], [type]) VALUES (6, N'Book Not Returned')
INSERT [dbo].[tblStatuses] ([ID], [type]) VALUES (7, N'Active')
SET IDENTITY_INSERT [dbo].[tblStatuses] OFF
SET IDENTITY_INSERT [dbo].[tblTeacherAddress] ON 

INSERT [dbo].[tblTeacherAddress] ([ID], [TeacherID], [Street], [CityID], [CountryID], [ProvincesID], [NationalityID], [GenderID]) VALUES (6, 1, N'Islamia Kaloni', 1, 1, 1, 1, 0)
INSERT [dbo].[tblTeacherAddress] ([ID], [TeacherID], [Street], [CityID], [CountryID], [ProvincesID], [NationalityID], [GenderID]) VALUES (8, 2, N'E9 Section C', 2, 1, 2, 1, 0)
INSERT [dbo].[tblTeacherAddress] ([ID], [TeacherID], [Street], [CityID], [CountryID], [ProvincesID], [NationalityID], [GenderID]) VALUES (9, 3, N'Walled City Of Lahore', 3, 1, 3, 1, 0)
INSERT [dbo].[tblTeacherAddress] ([ID], [TeacherID], [Street], [CityID], [CountryID], [ProvincesID], [NationalityID], [GenderID]) VALUES (10, 4, N'Bhatti Gate', 4, 1, 4, 1, 0)
INSERT [dbo].[tblTeacherAddress] ([ID], [TeacherID], [Street], [CityID], [CountryID], [ProvincesID], [NationalityID], [GenderID]) VALUES (11, 5, N'Mohalla Shah Peshawar ', 5, 1, 2, 1, 0)
SET IDENTITY_INSERT [dbo].[tblTeacherAddress] OFF
SET IDENTITY_INSERT [dbo].[tblTeacherContactNumber] ON 

INSERT [dbo].[tblTeacherContactNumber] ([ID], [TeacherID], [ContactNumber]) VALUES (6, 1, 3150830654)
INSERT [dbo].[tblTeacherContactNumber] ([ID], [TeacherID], [ContactNumber]) VALUES (7, 2, 3150830634)
INSERT [dbo].[tblTeacherContactNumber] ([ID], [TeacherID], [ContactNumber]) VALUES (8, 3, 3150832624)
INSERT [dbo].[tblTeacherContactNumber] ([ID], [TeacherID], [ContactNumber]) VALUES (9, 4, 3180840654)
INSERT [dbo].[tblTeacherContactNumber] ([ID], [TeacherID], [ContactNumber]) VALUES (10, 5, 3150837684)
SET IDENTITY_INSERT [dbo].[tblTeacherContactNumber] OFF
SET IDENTITY_INSERT [dbo].[tblTeacherQualification] ON 

INSERT [dbo].[tblTeacherQualification] ([ID], [TeacherID], [QualificationID], [StatusID]) VALUES (6, 1, 1, 1)
INSERT [dbo].[tblTeacherQualification] ([ID], [TeacherID], [QualificationID], [StatusID]) VALUES (7, 2, 2, 3)
INSERT [dbo].[tblTeacherQualification] ([ID], [TeacherID], [QualificationID], [StatusID]) VALUES (8, 3, 3, 1)
INSERT [dbo].[tblTeacherQualification] ([ID], [TeacherID], [QualificationID], [StatusID]) VALUES (9, 4, 4, 1)
INSERT [dbo].[tblTeacherQualification] ([ID], [TeacherID], [QualificationID], [StatusID]) VALUES (10, 5, 5, 1)
SET IDENTITY_INSERT [dbo].[tblTeacherQualification] OFF
SET IDENTITY_INSERT [dbo].[tblTeacherRegistration] ON 

INSERT [dbo].[tblTeacherRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [Cnic], [FatherName], [PhotoPath]) VALUES (1, 1, N'Abdul', N'Muneeb', -22475, N'Luqman', N'rootfan567')
INSERT [dbo].[tblTeacherRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [Cnic], [FatherName], [PhotoPath]) VALUES (2, 4, N'Basit', N'Khan', -7441115, N'Zubair', N'rootfan5678')
INSERT [dbo].[tblTeacherRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [Cnic], [FatherName], [PhotoPath]) VALUES (3, 5, N'Muhammad', N'Habib', -8531022, N'Zuhair', N'rootfan56789')
INSERT [dbo].[tblTeacherRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [Cnic], [FatherName], [PhotoPath]) VALUES (4, 6, N'Abdul', N'jabar', -8531123, N'Hamza', N'rootfan567891')
INSERT [dbo].[tblTeacherRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [Cnic], [FatherName], [PhotoPath]) VALUES (5, 7, N'Ali', N'Rauf', -8531316, N'Hanzala', N'rootfan567892')
SET IDENTITY_INSERT [dbo].[tblTeacherRegistration] OFF
SET IDENTITY_INSERT [dbo].[tblTimeTable] ON 

INSERT [dbo].[tblTimeTable] ([ID], [ActivityID], [ClassID], [StatusID], [StartTime], [EndTime]) VALUES (16, 3, 3, 1, CAST(N'04:00:00' AS Time), CAST(N'05:00:00' AS Time))
INSERT [dbo].[tblTimeTable] ([ID], [ActivityID], [ClassID], [StatusID], [StartTime], [EndTime]) VALUES (17, 4, 4, 1, CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[tblTimeTable] ([ID], [ActivityID], [ClassID], [StatusID], [StartTime], [EndTime]) VALUES (18, 21, 5, 1, CAST(N'08:00:00' AS Time), CAST(N'09:00:00' AS Time))
INSERT [dbo].[tblTimeTable] ([ID], [ActivityID], [ClassID], [StatusID], [StartTime], [EndTime]) VALUES (19, 22, 6, 1, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time))
INSERT [dbo].[tblTimeTable] ([ID], [ActivityID], [ClassID], [StatusID], [StartTime], [EndTime]) VALUES (26, 1, 1, 1, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
INSERT [dbo].[tblTimeTable] ([ID], [ActivityID], [ClassID], [StatusID], [StartTime], [EndTime]) VALUES (27, 1, 1, 1, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[tblTimeTable] OFF
SET IDENTITY_INSERT [dbo].[tblTulabaAddress] ON 

INSERT [dbo].[tblTulabaAddress] ([ID], [RegistrationID], [Street], [CityID], [ProvincceID], [CountryID], [NationalityID]) VALUES (1, 1, N'EidGah', 1, 1, 1, 1)
INSERT [dbo].[tblTulabaAddress] ([ID], [RegistrationID], [Street], [CityID], [ProvincceID], [CountryID], [NationalityID]) VALUES (2, 2, N'Hashnagri', 3, 1, 1, 1)
INSERT [dbo].[tblTulabaAddress] ([ID], [RegistrationID], [Street], [CityID], [ProvincceID], [CountryID], [NationalityID]) VALUES (5, 5, N'Tank Adda', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tblTulabaAddress] OFF
SET IDENTITY_INSERT [dbo].[tblTulabaContactNumber] ON 

INSERT [dbo].[tblTulabaContactNumber] ([ID], [RegistrationID], [ContactNumber]) VALUES (3, 1, 3435789546)
INSERT [dbo].[tblTulabaContactNumber] ([ID], [RegistrationID], [ContactNumber]) VALUES (4, 2, 3435789346)
INSERT [dbo].[tblTulabaContactNumber] ([ID], [RegistrationID], [ContactNumber]) VALUES (7, 5, 3432889546)
SET IDENTITY_INSERT [dbo].[tblTulabaContactNumber] OFF
SET IDENTITY_INSERT [dbo].[tblTulabaRegistration] ON 

INSERT [dbo].[tblTulabaRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [FatherName], [CNIC_FROM B], [PhotoPath], [IsParentMartioyed], [Accomodation], [GenderID], [StatusID], [DateOfBirth], [AdmissionDate]) VALUES (1, 1, N'Zubair', N'Khan', N'Ramzan', 7458080, N'rootfan678', 0, 1, 0, 6, CAST(N'2001-04-03' AS Date), CAST(N'2024-04-24T00:00:00.000' AS DateTime))
INSERT [dbo].[tblTulabaRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [FatherName], [CNIC_FROM B], [PhotoPath], [IsParentMartioyed], [Accomodation], [GenderID], [StatusID], [DateOfBirth], [AdmissionDate]) VALUES (2, 6, N'Ahsan', N'ALi', N'Arif', -7445955, N'rootfan/123', 0, 1, 0, 1, CAST(N'2002-04-02' AS Date), CAST(N'2023-04-13T17:23:35.553' AS DateTime))
INSERT [dbo].[tblTulabaRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [FatherName], [CNIC_FROM B], [PhotoPath], [IsParentMartioyed], [Accomodation], [GenderID], [StatusID], [DateOfBirth], [AdmissionDate]) VALUES (5, 6, N'Abdul', N'Hanan', N'Nawaz', -7855948, N'rootfan/123456', 0, 1, 0, 4, CAST(N'2004-07-08' AS Date), CAST(N'2023-03-14T17:25:39.420' AS DateTime))
INSERT [dbo].[tblTulabaRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [FatherName], [CNIC_FROM B], [PhotoPath], [IsParentMartioyed], [Accomodation], [GenderID], [StatusID], [DateOfBirth], [AdmissionDate]) VALUES (6, 7, N'Imran', N'Ghafoor', N'Zahid', -7444945, N'rootfan/1234567', 0, 0, 0, 5, CAST(N'2001-09-15' AS Date), CAST(N'2023-03-04T17:26:01.600' AS DateTime))
INSERT [dbo].[tblTulabaRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [FatherName], [CNIC_FROM B], [PhotoPath], [IsParentMartioyed], [Accomodation], [GenderID], [StatusID], [DateOfBirth], [AdmissionDate]) VALUES (7, 1, N'Raees', N'Khan', N'Malik Usman', -3422242, N'root5657@90', 0, 1, 0, 6, CAST(N'2023-04-25' AS Date), CAST(N'2024-09-26T00:00:00.000' AS DateTime))
INSERT [dbo].[tblTulabaRegistration] ([ID], [MudrisaID], [FirstName], [LastName], [FatherName], [CNIC_FROM B], [PhotoPath], [IsParentMartioyed], [Accomodation], [GenderID], [StatusID], [DateOfBirth], [AdmissionDate]) VALUES (25, 1, N'Roman', N'Khan', N'Usman Khan', -343433465, N'root988976@90', 0, 1, 0, 6, CAST(N'2021-02-25' AS Date), CAST(N'2024-03-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblTulabaRegistration] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblActivities]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblActivities] ADD  CONSTRAINT [IX_tblActivities] UNIQUE NONCLUSTERED 
(
	[ActivityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblCities]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblCities] ADD  CONSTRAINT [IX_tblCities] UNIQUE NONCLUSTERED 
(
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblCountries]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblCountries] ADD  CONSTRAINT [IX_tblCountries] UNIQUE NONCLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblProvinces]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblProvinces] ADD  CONSTRAINT [IX_tblProvinces] UNIQUE NONCLUSTERED 
(
	[ProvinceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblStatuses]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblStatuses] ADD  CONSTRAINT [IX_tblStatuses] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblTeacherContactNumber]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblTeacherContactNumber] ADD  CONSTRAINT [IX_tblTeacherContactNumber] UNIQUE NONCLUSTERED 
(
	[ContactNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblTeacherRegistration]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblTeacherRegistration] ADD  CONSTRAINT [IX_tblTeacherRegistration] UNIQUE NONCLUSTERED 
(
	[Cnic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblTulabaContactNumber]    Script Date: 12/19/2024 1:07:24 PM ******/
ALTER TABLE [dbo].[tblTulabaContactNumber] ADD  CONSTRAINT [IX_tblTulabaContactNumber] UNIQUE NONCLUSTERED 
(
	[ContactNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblActivities] ADD  CONSTRAINT [DF_tblActivities_ActivityName]  DEFAULT ('') FOR [ActivityName]
GO
ALTER TABLE [dbo].[tblActivities] ADD  CONSTRAINT [DF_tblActivities_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblAdvertisment] ADD  CONSTRAINT [DF_tblAdvertisment_MudrisaID]  DEFAULT ((0)) FOR [MudrisaID]
GO
ALTER TABLE [dbo].[tblAdvertisment] ADD  CONSTRAINT [DF_tblAdvertisment_FromDate]  DEFAULT (getdate()) FOR [FromDate]
GO
ALTER TABLE [dbo].[tblAdvertisment] ADD  CONSTRAINT [DF_tblAdvertisment_ToDate]  DEFAULT (getdate()) FOR [ToDate]
GO
ALTER TABLE [dbo].[tblAdvertisment] ADD  CONSTRAINT [DF_tblAdvertisment_MediaTypeID]  DEFAULT ((0)) FOR [MediaTypeID]
GO
ALTER TABLE [dbo].[tblAdvertisment] ADD  CONSTRAINT [DF_tblAdvertisment_ImagePath]  DEFAULT ('') FOR [ImagePath]
GO
ALTER TABLE [dbo].[tblAdvertisment] ADD  CONSTRAINT [DF_tblAdvertisment_TotalCost]  DEFAULT ((0)) FOR [TotalCost]
GO
ALTER TABLE [dbo].[tblAdvertisment] ADD  CONSTRAINT [DF_tblAdvertisment_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblAdvertismentMediaType] ADD  CONSTRAINT [DF_tblAdvertismentMediaType_Type]  DEFAULT ('') FOR [Type]
GO
ALTER TABLE [dbo].[tblAdvertismentPost] ADD  CONSTRAINT [DF_tblAdvertismentPost_AdvertismentID]  DEFAULT ((0)) FOR [AdvertismentID]
GO
ALTER TABLE [dbo].[tblAdvertismentPost] ADD  CONSTRAINT [DF_tblAdvertismentPost_PostID]  DEFAULT ((0)) FOR [PostID]
GO
ALTER TABLE [dbo].[tblBookCategories] ADD  CONSTRAINT [DF_tblBookCategories_Type]  DEFAULT ('') FOR [Type]
GO
ALTER TABLE [dbo].[tblBookIssue] ADD  CONSTRAINT [DF_tblBookIssue_LibraryID]  DEFAULT ((0)) FOR [LibraryID]
GO
ALTER TABLE [dbo].[tblBookIssue] ADD  CONSTRAINT [DF_tblBookIssue_BookID]  DEFAULT ((0)) FOR [BookID]
GO
ALTER TABLE [dbo].[tblBookIssue] ADD  CONSTRAINT [DF_tblBookIssue_StudentID]  DEFAULT ((0)) FOR [StudentID]
GO
ALTER TABLE [dbo].[tblBookIssue] ADD  CONSTRAINT [DF_tblBookIssue_IssueDate]  DEFAULT (getdate()) FOR [IssueDate]
GO
ALTER TABLE [dbo].[tblBookIssue] ADD  CONSTRAINT [DF_tblBookIssue_ReturnDate]  DEFAULT (getdate()) FOR [ReturnDate]
GO
ALTER TABLE [dbo].[tblBookIssue] ADD  CONSTRAINT [DF_tblBookIssue_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_MudrisaID]  DEFAULT ((0)) FOR [MudrisaID]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_BookNumber]  DEFAULT ((0)) FOR [BookNumber]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_BookTitle]  DEFAULT ('') FOR [BookTitle]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_Author]  DEFAULT ('') FOR [Author]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_RackNumber]  DEFAULT ((0)) FOR [RackNumber]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_LibraryID]  DEFAULT ((0)) FOR [LibraryID]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_BookCategoriesID]  DEFAULT ((0)) FOR [BookCategoriesID]
GO
ALTER TABLE [dbo].[tblBooks] ADD  CONSTRAINT [DF_tblBooks_ShelfNumber]  DEFAULT ((0)) FOR [ShelfNumber]
GO
ALTER TABLE [dbo].[tblCities] ADD  CONSTRAINT [DF_tblCities_CityName]  DEFAULT ('') FOR [CityName]
GO
ALTER TABLE [dbo].[tblCities] ADD  CONSTRAINT [DF_tblCities_StatusID0]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblClasses] ADD  CONSTRAINT [DF_tblClasses_MudrisaID]  DEFAULT ((0)) FOR [MudrisaID]
GO
ALTER TABLE [dbo].[tblClasses] ADD  CONSTRAINT [DF_tblClasses_ClassName]  DEFAULT ('') FOR [ClassName]
GO
ALTER TABLE [dbo].[tblClasses] ADD  CONSTRAINT [DF_tblClasses_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblCountries] ADD  CONSTRAINT [DF_tblCountries_CountryName]  DEFAULT ('') FOR [CountryName]
GO
ALTER TABLE [dbo].[tblCountries] ADD  CONSTRAINT [DF_tblCountries_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblGender] ADD  CONSTRAINT [DF_tblGender_ID]  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[tblGender] ADD  CONSTRAINT [DF_tblGender_Gender]  DEFAULT ('') FOR [Gender]
GO
ALTER TABLE [dbo].[tblLibraries] ADD  CONSTRAINT [DF_tblLibraries_MudrisaID]  DEFAULT ((0)) FOR [MudrisaID]
GO
ALTER TABLE [dbo].[tblLibraries] ADD  CONSTRAINT [DF_tblLibraries_LibrarayName]  DEFAULT ('') FOR [LibraryName]
GO
ALTER TABLE [dbo].[tblLibraries] ADD  CONSTRAINT [DF_tblLibraries_TotalRacks]  DEFAULT ((0)) FOR [TotalRacks]
GO
ALTER TABLE [dbo].[tblLibraries] ADD  CONSTRAINT [DF_tblLibraries_TotalBooks]  DEFAULT ((0)) FOR [TotalBooks]
GO
ALTER TABLE [dbo].[tblLibraries] ADD  CONSTRAINT [DF_tblLibraries_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblMudrisaAddress] ADD  CONSTRAINT [DF_tblMudrisaAddress_MudrisaID]  DEFAULT ((0)) FOR [MudrisaID]
GO
ALTER TABLE [dbo].[tblMudrisaAddress] ADD  CONSTRAINT [DF_Table_1_Street']  DEFAULT ('') FOR [Street]
GO
ALTER TABLE [dbo].[tblMudrisaAddress] ADD  CONSTRAINT [DF_tblMudrisaAddress_CityID]  DEFAULT ((0)) FOR [CityID]
GO
ALTER TABLE [dbo].[tblMudrisaAddress] ADD  CONSTRAINT [DF_tblMudrisaAddress_ProvinceID]  DEFAULT ((0)) FOR [ProvinceID]
GO
ALTER TABLE [dbo].[tblMudrisaAddress] ADD  CONSTRAINT [DF_tblMudrisaAddress_CountryID]  DEFAULT ((0)) FOR [CountryID]
GO
ALTER TABLE [dbo].[tblMudrisaAddress] ADD  CONSTRAINT [DF_tblMudrisaAddress_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblMudrisaInformation] ADD  CONSTRAINT [DF_tblMudrisaInformation_Title]  DEFAULT ('') FOR [Title]
GO
ALTER TABLE [dbo].[tblMudrisaInformation] ADD  CONSTRAINT [DF_tblMudrisaInformation_ContactNumber]  DEFAULT ((0)) FOR [ContactNumber]
GO
ALTER TABLE [dbo].[tblMudrisaInformation] ADD  CONSTRAINT [DF_tblMudrisaInformation_Website]  DEFAULT ('') FOR [Website]
GO
ALTER TABLE [dbo].[tblMudrisaInformation] ADD  CONSTRAINT [DF_tblMudrisaInformation_Email]  DEFAULT ('') FOR [Email]
GO
ALTER TABLE [dbo].[tblMudrisaInformation] ADD  CONSTRAINT [DF_tblMudrisaInformation_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblNationalities] ADD  CONSTRAINT [DF_tblNationalities_Title]  DEFAULT ('') FOR [Title]
GO
ALTER TABLE [dbo].[tblPostType] ADD  CONSTRAINT [DF_tblPostType_Type]  DEFAULT ('') FOR [Type]
GO
ALTER TABLE [dbo].[tblProvinces] ADD  CONSTRAINT [DF_tblProvinces_ProvinceID]  DEFAULT ('') FOR [ProvinceName]
GO
ALTER TABLE [dbo].[tblProvinces] ADD  CONSTRAINT [DF_tblProvinces_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblQualifications] ADD  CONSTRAINT [DF_tblQualifications_title]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[tblQualifications] ADD  CONSTRAINT [DF_tblQualifications_StatusesID]  DEFAULT ((0)) FOR [StatusesID]
GO
ALTER TABLE [dbo].[tblStatuses] ADD  CONSTRAINT [DF_tblStatuses_type]  DEFAULT ('') FOR [type]
GO
ALTER TABLE [dbo].[tblTeacherAddress] ADD  CONSTRAINT [DF_tblTeacherAddress_TeacherID]  DEFAULT ((0)) FOR [TeacherID]
GO
ALTER TABLE [dbo].[tblTeacherAddress] ADD  CONSTRAINT [DF_tblTeacherAddress_Street]  DEFAULT ('') FOR [Street]
GO
ALTER TABLE [dbo].[tblTeacherAddress] ADD  CONSTRAINT [DF_tblTeacherAddress_CityID]  DEFAULT ((0)) FOR [CityID]
GO
ALTER TABLE [dbo].[tblTeacherAddress] ADD  CONSTRAINT [DF_tblTeacherAddress_CountryID]  DEFAULT ((0)) FOR [CountryID]
GO
ALTER TABLE [dbo].[tblTeacherAddress] ADD  CONSTRAINT [DF_tblTeacherAddress_ProvincesID]  DEFAULT ((0)) FOR [ProvincesID]
GO
ALTER TABLE [dbo].[tblTeacherAddress] ADD  CONSTRAINT [DF_tblTeacherAddress_NatinalityID]  DEFAULT ((0)) FOR [NationalityID]
GO
ALTER TABLE [dbo].[tblTeacherAddress] ADD  CONSTRAINT [DF_tblTeacherAddress_GenderID]  DEFAULT ((0)) FOR [GenderID]
GO
ALTER TABLE [dbo].[tblTeacherContactNumber] ADD  CONSTRAINT [DF_tblTeacherContactNumber_TeacherID]  DEFAULT ((0)) FOR [TeacherID]
GO
ALTER TABLE [dbo].[tblTeacherContactNumber] ADD  CONSTRAINT [DF_tblTeacherContactNumber_ContactNumber]  DEFAULT ((0)) FOR [ContactNumber]
GO
ALTER TABLE [dbo].[tblTeacherQualification] ADD  CONSTRAINT [DF_tblTeacherQualification_TeacherID]  DEFAULT ((0)) FOR [TeacherID]
GO
ALTER TABLE [dbo].[tblTeacherQualification] ADD  CONSTRAINT [DF_tblTeacherQualification_QualificationID]  DEFAULT ((0)) FOR [QualificationID]
GO
ALTER TABLE [dbo].[tblTeacherQualification] ADD  CONSTRAINT [DF_tblTeacherQualification_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblTeacherRegistration] ADD  CONSTRAINT [DF_tblTeacherRegistration_MudrisaID]  DEFAULT ((0)) FOR [MudrisaID]
GO
ALTER TABLE [dbo].[tblTeacherRegistration] ADD  CONSTRAINT [DF_tblTeacherRegistration_FirstName]  DEFAULT ('') FOR [FirstName]
GO
ALTER TABLE [dbo].[tblTeacherRegistration] ADD  CONSTRAINT [DF_tblTeacherRegistration_LastName]  DEFAULT ('') FOR [LastName]
GO
ALTER TABLE [dbo].[tblTeacherRegistration] ADD  CONSTRAINT [DF_tblTeacherRegistration_Cnic]  DEFAULT ((0)) FOR [Cnic]
GO
ALTER TABLE [dbo].[tblTeacherRegistration] ADD  CONSTRAINT [DF_tblTeacherRegistration_FatherName]  DEFAULT ('') FOR [FatherName]
GO
ALTER TABLE [dbo].[tblTeacherRegistration] ADD  CONSTRAINT [DF_tblTeacherRegistration_PhotoPath]  DEFAULT ('') FOR [PhotoPath]
GO
ALTER TABLE [dbo].[tblTimeTable] ADD  CONSTRAINT [DF_tblTimeTable_ActivityID]  DEFAULT ((0)) FOR [ActivityID]
GO
ALTER TABLE [dbo].[tblTimeTable] ADD  CONSTRAINT [DF_tblTimeTable_ClassID]  DEFAULT ((0)) FOR [ClassID]
GO
ALTER TABLE [dbo].[tblTimeTable] ADD  CONSTRAINT [DF_Table_1_StatusID0]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblTulabaContactNumber] ADD  CONSTRAINT [DF_tblTulabaContactNumber_RegistrationID]  DEFAULT ((0)) FOR [RegistrationID]
GO
ALTER TABLE [dbo].[tblTulabaContactNumber] ADD  CONSTRAINT [DF_tblTulabaContactNumber_ContactNumber]  DEFAULT ((0)) FOR [ContactNumber]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_MudrisaID]  DEFAULT ((0)) FOR [MudrisaID]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_FirstName]  DEFAULT ('') FOR [FirstName]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_LastName]  DEFAULT ('') FOR [LastName]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_FatherName]  DEFAULT ('') FOR [FatherName]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_PhotoPath]  DEFAULT ('') FOR [PhotoPath]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_IsParentMartioyed]  DEFAULT ((0)) FOR [IsParentMartioyed]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_Accomodation]  DEFAULT ((0)) FOR [Accomodation]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_GenderID]  DEFAULT ((0)) FOR [GenderID]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTuiabaRegistration_StatusID]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblTulabaRegistration] ADD  CONSTRAINT [DF_tblTulabaRegistration_DateOfBirth]  DEFAULT (getdate()) FOR [DateOfBirth]
GO
ALTER TABLE [dbo].[tblActivities]  WITH CHECK ADD  CONSTRAINT [FK_tblActivities_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblActivities] CHECK CONSTRAINT [FK_tblActivities_tblStatuses]
GO
ALTER TABLE [dbo].[tblAdvertisment]  WITH CHECK ADD  CONSTRAINT [FK_tblAdvertisment_tblAdvertisment] FOREIGN KEY([ID])
REFERENCES [dbo].[tblAdvertisment] ([ID])
GO
ALTER TABLE [dbo].[tblAdvertisment] CHECK CONSTRAINT [FK_tblAdvertisment_tblAdvertisment]
GO
ALTER TABLE [dbo].[tblAdvertisment]  WITH CHECK ADD  CONSTRAINT [FK_tblAdvertisment_tblAdvertismentMediaType] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[tblAdvertismentMediaType] ([ID])
GO
ALTER TABLE [dbo].[tblAdvertisment] CHECK CONSTRAINT [FK_tblAdvertisment_tblAdvertismentMediaType]
GO
ALTER TABLE [dbo].[tblAdvertisment]  WITH CHECK ADD  CONSTRAINT [FK_tblAdvertisment_tblMudrisaInformation] FOREIGN KEY([MudrisaID])
REFERENCES [dbo].[tblMudrisaInformation] ([ID])
GO
ALTER TABLE [dbo].[tblAdvertisment] CHECK CONSTRAINT [FK_tblAdvertisment_tblMudrisaInformation]
GO
ALTER TABLE [dbo].[tblAdvertisment]  WITH CHECK ADD  CONSTRAINT [FK_tblAdvertisment_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblAdvertisment] CHECK CONSTRAINT [FK_tblAdvertisment_tblStatuses]
GO
ALTER TABLE [dbo].[tblAdvertismentPost]  WITH CHECK ADD  CONSTRAINT [FK_tblAdvertismentPost_tblAdvertisment] FOREIGN KEY([AdvertismentID])
REFERENCES [dbo].[tblAdvertisment] ([ID])
GO
ALTER TABLE [dbo].[tblAdvertismentPost] CHECK CONSTRAINT [FK_tblAdvertismentPost_tblAdvertisment]
GO
ALTER TABLE [dbo].[tblAdvertismentPost]  WITH CHECK ADD  CONSTRAINT [FK_tblAdvertismentPost_tblPostType] FOREIGN KEY([PostID])
REFERENCES [dbo].[tblPostType] ([ID])
GO
ALTER TABLE [dbo].[tblAdvertismentPost] CHECK CONSTRAINT [FK_tblAdvertismentPost_tblPostType]
GO
ALTER TABLE [dbo].[tblBookIssue]  WITH CHECK ADD  CONSTRAINT [FK_tblBookIssue_tblBooks] FOREIGN KEY([BookID])
REFERENCES [dbo].[tblBooks] ([ID])
GO
ALTER TABLE [dbo].[tblBookIssue] CHECK CONSTRAINT [FK_tblBookIssue_tblBooks]
GO
ALTER TABLE [dbo].[tblBookIssue]  WITH CHECK ADD  CONSTRAINT [FK_tblBookIssue_tblLibraries] FOREIGN KEY([LibraryID])
REFERENCES [dbo].[tblLibraries] ([ID])
GO
ALTER TABLE [dbo].[tblBookIssue] CHECK CONSTRAINT [FK_tblBookIssue_tblLibraries]
GO
ALTER TABLE [dbo].[tblBookIssue]  WITH CHECK ADD  CONSTRAINT [FK_tblBookIssue_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblBookIssue] CHECK CONSTRAINT [FK_tblBookIssue_tblStatuses]
GO
ALTER TABLE [dbo].[tblBookIssue]  WITH CHECK ADD  CONSTRAINT [FK_tblBookIssue_tblTulabaRegistration] FOREIGN KEY([StudentID])
REFERENCES [dbo].[tblTulabaRegistration] ([ID])
GO
ALTER TABLE [dbo].[tblBookIssue] CHECK CONSTRAINT [FK_tblBookIssue_tblTulabaRegistration]
GO
ALTER TABLE [dbo].[tblBooks]  WITH CHECK ADD  CONSTRAINT [FK_tblBooks_tblBookCategories] FOREIGN KEY([BookCategoriesID])
REFERENCES [dbo].[tblBookCategories] ([ID])
GO
ALTER TABLE [dbo].[tblBooks] CHECK CONSTRAINT [FK_tblBooks_tblBookCategories]
GO
ALTER TABLE [dbo].[tblBooks]  WITH CHECK ADD  CONSTRAINT [FK_tblBooks_tblLibraries] FOREIGN KEY([LibraryID])
REFERENCES [dbo].[tblLibraries] ([ID])
GO
ALTER TABLE [dbo].[tblBooks] CHECK CONSTRAINT [FK_tblBooks_tblLibraries]
GO
ALTER TABLE [dbo].[tblBooks]  WITH CHECK ADD  CONSTRAINT [FK_tblBooks_tblMudrisaInformation] FOREIGN KEY([MudrisaID])
REFERENCES [dbo].[tblMudrisaInformation] ([ID])
GO
ALTER TABLE [dbo].[tblBooks] CHECK CONSTRAINT [FK_tblBooks_tblMudrisaInformation]
GO
ALTER TABLE [dbo].[tblCities]  WITH CHECK ADD  CONSTRAINT [FK_tblCities_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblCities] CHECK CONSTRAINT [FK_tblCities_tblStatuses]
GO
ALTER TABLE [dbo].[tblCountries]  WITH CHECK ADD  CONSTRAINT [FK_tblCountries_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblCountries] CHECK CONSTRAINT [FK_tblCountries_tblStatuses]
GO
ALTER TABLE [dbo].[tblLibraries]  WITH CHECK ADD  CONSTRAINT [FK_tblLibraries_tblMudrisaInformation] FOREIGN KEY([MudrisaID])
REFERENCES [dbo].[tblMudrisaInformation] ([ID])
GO
ALTER TABLE [dbo].[tblLibraries] CHECK CONSTRAINT [FK_tblLibraries_tblMudrisaInformation]
GO
ALTER TABLE [dbo].[tblLibraries]  WITH CHECK ADD  CONSTRAINT [FK_tblLibraries_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblLibraries] CHECK CONSTRAINT [FK_tblLibraries_tblStatuses]
GO
ALTER TABLE [dbo].[tblMudrisaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblMudrisaAddress_tblCities] FOREIGN KEY([CityID])
REFERENCES [dbo].[tblCities] ([ID])
GO
ALTER TABLE [dbo].[tblMudrisaAddress] CHECK CONSTRAINT [FK_tblMudrisaAddress_tblCities]
GO
ALTER TABLE [dbo].[tblMudrisaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblMudrisaAddress_tblCountries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([ID])
GO
ALTER TABLE [dbo].[tblMudrisaAddress] CHECK CONSTRAINT [FK_tblMudrisaAddress_tblCountries]
GO
ALTER TABLE [dbo].[tblMudrisaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblMudrisaAddress_tblMudrisaInformation] FOREIGN KEY([MudrisaID])
REFERENCES [dbo].[tblMudrisaInformation] ([ID])
GO
ALTER TABLE [dbo].[tblMudrisaAddress] CHECK CONSTRAINT [FK_tblMudrisaAddress_tblMudrisaInformation]
GO
ALTER TABLE [dbo].[tblMudrisaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblMudrisaAddress_tblProvinces] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[tblProvinces] ([ID])
GO
ALTER TABLE [dbo].[tblMudrisaAddress] CHECK CONSTRAINT [FK_tblMudrisaAddress_tblProvinces]
GO
ALTER TABLE [dbo].[tblMudrisaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblMudrisaAddress_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblMudrisaAddress] CHECK CONSTRAINT [FK_tblMudrisaAddress_tblStatuses]
GO
ALTER TABLE [dbo].[tblProvinces]  WITH CHECK ADD  CONSTRAINT [FK_tblProvinces_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblProvinces] CHECK CONSTRAINT [FK_tblProvinces_tblStatuses]
GO
ALTER TABLE [dbo].[tblQualifications]  WITH CHECK ADD  CONSTRAINT [FK_tblQualifications_tblStatuses] FOREIGN KEY([StatusesID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblQualifications] CHECK CONSTRAINT [FK_tblQualifications_tblStatuses]
GO
ALTER TABLE [dbo].[tblTeacherAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherAddress_tblCities] FOREIGN KEY([CityID])
REFERENCES [dbo].[tblCities] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherAddress] CHECK CONSTRAINT [FK_tblTeacherAddress_tblCities]
GO
ALTER TABLE [dbo].[tblTeacherAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherAddress_tblCountries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherAddress] CHECK CONSTRAINT [FK_tblTeacherAddress_tblCountries]
GO
ALTER TABLE [dbo].[tblTeacherAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherAddress_tblGender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[tblGender] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherAddress] CHECK CONSTRAINT [FK_tblTeacherAddress_tblGender]
GO
ALTER TABLE [dbo].[tblTeacherAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherAddress_tblNationalities] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[tblNationalities] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherAddress] CHECK CONSTRAINT [FK_tblTeacherAddress_tblNationalities]
GO
ALTER TABLE [dbo].[tblTeacherAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherAddress_tblProvinces] FOREIGN KEY([ProvincesID])
REFERENCES [dbo].[tblProvinces] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherAddress] CHECK CONSTRAINT [FK_tblTeacherAddress_tblProvinces]
GO
ALTER TABLE [dbo].[tblTeacherAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherAddress_tblTeacherRegistration] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[tblTeacherRegistration] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherAddress] CHECK CONSTRAINT [FK_tblTeacherAddress_tblTeacherRegistration]
GO
ALTER TABLE [dbo].[tblTeacherContactNumber]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherContactNumber_tblTeacherRegistration] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[tblTeacherRegistration] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherContactNumber] CHECK CONSTRAINT [FK_tblTeacherContactNumber_tblTeacherRegistration]
GO
ALTER TABLE [dbo].[tblTeacherQualification]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherQualification_tblQualifications] FOREIGN KEY([QualificationID])
REFERENCES [dbo].[tblQualifications] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherQualification] CHECK CONSTRAINT [FK_tblTeacherQualification_tblQualifications]
GO
ALTER TABLE [dbo].[tblTeacherQualification]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherQualification_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherQualification] CHECK CONSTRAINT [FK_tblTeacherQualification_tblStatuses]
GO
ALTER TABLE [dbo].[tblTeacherQualification]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherQualification_tblTeacherRegistration] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[tblTeacherRegistration] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherQualification] CHECK CONSTRAINT [FK_tblTeacherQualification_tblTeacherRegistration]
GO
ALTER TABLE [dbo].[tblTeacherRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblTeacherRegistration_tblMudrisaInformation] FOREIGN KEY([MudrisaID])
REFERENCES [dbo].[tblMudrisaInformation] ([ID])
GO
ALTER TABLE [dbo].[tblTeacherRegistration] CHECK CONSTRAINT [FK_tblTeacherRegistration_tblMudrisaInformation]
GO
ALTER TABLE [dbo].[tblTulabaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaAddress_tblCities] FOREIGN KEY([CityID])
REFERENCES [dbo].[tblCities] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaAddress] CHECK CONSTRAINT [FK_tblTulabaAddress_tblCities]
GO
ALTER TABLE [dbo].[tblTulabaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaAddress_tblCountries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaAddress] CHECK CONSTRAINT [FK_tblTulabaAddress_tblCountries]
GO
ALTER TABLE [dbo].[tblTulabaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaAddress_tblNationalities] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[tblNationalities] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaAddress] CHECK CONSTRAINT [FK_tblTulabaAddress_tblNationalities]
GO
ALTER TABLE [dbo].[tblTulabaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaAddress_tblProvinces] FOREIGN KEY([ProvincceID])
REFERENCES [dbo].[tblProvinces] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaAddress] CHECK CONSTRAINT [FK_tblTulabaAddress_tblProvinces]
GO
ALTER TABLE [dbo].[tblTulabaAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaAddress_tblTulabaRegistration] FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[tblTulabaRegistration] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaAddress] CHECK CONSTRAINT [FK_tblTulabaAddress_tblTulabaRegistration]
GO
ALTER TABLE [dbo].[tblTulabaContactNumber]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaContactNumber_tblTulabaRegistration] FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[tblTulabaRegistration] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaContactNumber] CHECK CONSTRAINT [FK_tblTulabaContactNumber_tblTulabaRegistration]
GO
ALTER TABLE [dbo].[tblTulabaRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaRegistration_tblGender] FOREIGN KEY([MudrisaID])
REFERENCES [dbo].[tblMudrisaInformation] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaRegistration] CHECK CONSTRAINT [FK_tblTulabaRegistration_tblGender]
GO
ALTER TABLE [dbo].[tblTulabaRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblTulabaRegistration_tblStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblTulabaRegistration] CHECK CONSTRAINT [FK_tblTulabaRegistration_tblStatuses]
GO
/****** Object:  StoredProcedure [dbo].[sPBookIssueUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPBookIssueUpdate]
	-- Add the parameters for the stored procedure here
	@LibraryID tinyint,@BookID smallint,@StudentID Smallint,@IssueDate date,@ReturnDate date,@StatusID tinyint
AS
BEGIN
	Update tblBookIssue
	SET  LibraryID=@LibraryID,BookID=@BookID,StudentID=@StudentID,IssueDate=@IssueDate,ReturnDate=@ReturnDate,StatusID=@StatusID 
END
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteActivitesByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPDeleteActivitesByID]
@ID tinyint
AS
BEGIN
Delete tblTimeTable where ActivityID=@ID
	Select * From tblActivities Where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteBookCategoriesByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPDeleteBookCategoriesByID]
@ID tinyint
AS
BEGIN
Delete from tblBookCategories where ID=@ID
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteBookIssueBYID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPDeleteBookIssueBYID] 
@ID tinyint
AS
BEGIN



DECLARE @isBooksNotReturned int = 0;
	SELECT TOP 1 @isBooksNotReturned = ID FROM tblBookIssue WHERE ID= @ID AND ReturnDate IS Null
	--IF EXISTS (SELECT  * FROM tblBookIssue WHERE ID = @ID AND ReturnDate IS Null)
	IF (@isBooksNotReturned > 0)
	BEGIN
	 PRINT 'Books Not Returned';
	END
	ELSE
	BEGIN
	  Delete tblBookIssue Where ID=@ID;
	END
	END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteBooksByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**
tbl Books
Get
Delete
**/

CREATE PROCEDURE [dbo].[spDeleteBooksByID]
	@ID smallint
AS
BEGIN
DECLARE @isBooksNotReturned int = 0;
	SELECT TOP 1 @isBooksNotReturned = ID FROM tblBookIssue WHERE BookID = @ID AND ReturnDate IS Null
	--IF EXISTS (SELECT  * FROM tblBookIssue WHERE ID = @ID AND ReturnDate IS Null)
	IF (@isBooksNotReturned > 0)
	BEGIN
	 PRINT 'Books Not Returned';
	END
	ELSE
	BEGIN
	  Delete tblBookIssue Where BookID=@ID;
	END
	Delete tblBooks Where ID=@ID

END


--Select * INTO tblBookIssue_bkp From tblBookIssue

--UPDATE tblBookIssue
--SET ReturnDate = null WHERE ID = 10
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteClassesBYID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPDeleteClassesBYID]
@ID tinyint
AS
BEGIN
Delete tblTimeTable Where ClassID=@ID
	Select * From tblClasses where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteLibraryByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**
tbl Library
Get
Delete
**/
CREATE PROCEDURE [dbo].[sPDeleteLibraryByID]
@ID tinyint
AS
BEGIN
DECLARE @isBooksNotReturned int = 0;
	SELECT TOP 1 @isBooksNotReturned = ID FROM tblBookIssue WHERE LibraryID = @ID AND ReturnDate IS Null
	--IF EXISTS (SELECT  * FROM tblBookIssue WHERE ID = @ID AND ReturnDate IS Null)
	IF (@isBooksNotReturned > 0)
	BEGIN
	 PRINT 'Books Not Returned';
	END
	ELSE
	BEGIN
	  Delete tblBookIssue Where  LibraryID=@ID;
	END

 
  Delete tblBookIssue Where StudentID =@ID
  Delete tblBooks where LibraryID=@ID
Delete tblLibraries Where ID=@ID
End
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteStatusesByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[sPDeleteStatusesByID]
@ID tinyint 
AS
BEGIN
	Delete from tblStatuses Where ID =@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteTimeTableByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPDeleteTimeTableByID]
@ID tinyint
AS
BEGIN
	Delete From tblTimeTable Where ID =@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPDeleteTulabaRegistrationByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[sPDeleteTulabaRegistrationByID] 
@ID smallint
AS
BEGIN
	--SELECT * FROM tblBookIssue

	--Update tblBookIssue
	--SET ReturnDate = null
	--WHERE ID = 8

	DECLARE @isBooksNotReturned int = 0;
	SELECT TOP 1 @isBooksNotReturned = ID FROM tblBookIssue WHERE StudentID= @ID AND ReturnDate IS Null
	--IF EXISTS (SELECT  * FROM tblBookIssue WHERE ID = @ID AND ReturnDate IS Null)
	IF (@isBooksNotReturned > 0)
	BEGIN
	UPDATE tblTulabaRegistration
	SET StatusID=6
	WHERE ID =@ID
	 PRINT 'Books Not Returned';
	END
	ELSE
	BEGIN
	  Delete tblBookIssue Where StudentID=@ID;
	  Delete from tblTulabaAddress Where RegistrationID=@ID
      Delete tblTulabaContactNumber where RegistrationID=@ID
      Delete tblTulabaRegistration where ID=@ID

	END

 END
GO
/****** Object:  StoredProcedure [dbo].[sPGetActivitesByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetActivitesByID]
@ID tinyint
AS
BEGIN
	Select * From tblActivities Where ID =@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllActivites]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllActivites] 
	
AS
BEGIN
	
	Select A.ID,A.ActivityName
	From tblActivities A
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPGetAllBookCategories]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPGetAllBookCategories]  
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	Select 
	A.ID ,A.Type
    From tblBookCategories A
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllBooks]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllBooks]
AS
BEGIN
	Select 
	A.ID,A.BookTitle
	 From tblBooks A
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllBooksInLibraries]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[sPGetAllBooksInLibraries]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
    SELECT A.ID,A.BookTitle,A.Author,A.BookNumber,A.RackNumber,A.ShelfNumber,B.LibraryName
	 FROM tblBooks A
	INNER JOIN tblLibraries B ON A.LibraryID=B.ID


	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllCities]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllCities]
AS
BEGIN
	Select A.ID,A.CityName
	from tblCities A
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllClasses]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllClasses]
AS
BEGIN
	Select A.ID ClassID,A.ClassName
	From tblClasses A
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllClassTimeTable]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sPGetAllClassTimeTable]
	
AS
BEGIN
  SELECT 
  C.ClassName,B.ActivityName,A.StartTime,A.EndTime
  FROM tblTimeTable A
  INNER JOIN tblActivities B ON A.ActivityID=B.ID
  INNER JOIN tblClasses C ON A.ClassID=C.ID
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllCountries]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllCountries]
AS
BEGIN
	Select A.ID,A.CountryName 
	From tblCountries A
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllLibrary]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllLibrary]
AS
BEGIN
 Select
 A.ID,A.MudrisaID,A.LibraryName,A.TotalRacks,A.TotalBooks,A.OpenTime,A.CloseTime,A.StatusID,A.AdmissionDate
  from tblLibraries A
 
	END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllMudrisaInformation]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[sPGetAllMudrisaInformation] 
	-- Add the parameters for the stored procedure here
	As
BEGIN
Select 
 A.ID MudrisaID,A.Title
From tblMudrisaInformation A

END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllNationalities]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllNationalities] 
	As
BEGIN
	Select A.ID,A.Title
	 From tblNationalities A
	Inner join tblTulabaAddress B on A.ID=B.NationalityID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllProvinces]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllProvinces] 
	
AS
BEGIN
	SELECT A.ID,A.ProvinceName
	FROM tblProvinces A
	

END
GO
/****** Object:  StoredProcedure [dbo].[sPGetAllStatuses]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetAllStatuses] 
	
AS
BEGIN
   Select A.ID,A.type
    
	From tblStatuses A
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetBookCategoriesByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetBookCategoriesByID]
 @ID tinyint 
	
AS
BEGIN
	Select *from tblBookCategories where ID=@ID
END

GO
/****** Object:  StoredProcedure [dbo].[sPGetBookIssueBYID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetBookIssueBYID]
@ID tinyint
AS
BEGIN
	Select * From tblBookIssue Where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[spGetBooksbyid]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetBooksbyid]
	@ID smallint
AS
BEGIN
	select * from tblBooks where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetClassesBYID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetClassesBYID]
@ID tinyint
AS
BEGIN
Select * from tblClasses Where ID =@ID
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetGenderByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetGenderByID]
--Add the parameters for the stored proceedure here
 @GenderID Varchar(6)
AS
BEGIN
	Select A.ID GenderID,A.Gender 
	 From tblGender A
	Inner join tblTulabaRegistration B on A.ID=B.GenderID
	where A.ID =@GenderID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetLibraryByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetLibraryByID]
@ID tinyint 
AS
BEGIN
	Select * From tblLibraries where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetStatusByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetStatusByID]
@ID tinyint  
	
AS
BEGIN
Select * from tblStatuses where ID=@ID
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetStatusesByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetStatusesByID]
@ID tinyint
AS
BEGIN
	Select * From tblStatuses Where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetTimeTableByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetTimeTableByID]
@ID tinyint
AS
BEGIN
	Select * From tblTimeTable Where ID =@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetTulabaProfileByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetTulabaProfileByID]
	-- Add the parameters for the stored procedure here
	@StudentID int
 AS
BEGIN
	
   		SELECT 
		A.ID StudentID,A.FirstName+' '+A.LastName TulabaName,B.Title MudrisaName,A.FatherName,
		A.DateOfBirth,E.Gender,A.[CNIC_FROM B],C.ContactNumber,
		D.Street+' '+F.CityName+' '+G.ProvinceName+' '+H.CountryName Address,
		I.Title Nationality
		FROM tblTulabaRegistration  A
		INNER JOIN tblMudrisaInformation B ON B.ID=A.MudrisaID
		INNER JOIN tblTulabaContactNumber C ON B.ID=C.RegistrationID
		INNER JOIN tblTulabaAddress D ON A.ID=D.RegistrationID
		INNER JOIN tblGender E ON A.GenderID=E.ID
		INNER JOIN tblCities F ON D.CityID=F.ID
		INNER JOIN tblProvinces G ON D.ProvincceID=G.ID
		INNER JOIN tblCountries H ON D.CountryID=H.ID
		INNER JOIN tblNationalities I ON D.NationalityID=I.ID 
	WHERE A.ID = @StudentID
END
GO
/****** Object:  StoredProcedure [dbo].[sPGetTulabaRegistrationByID]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPGetTulabaRegistrationByID]
@ID smallint
AS
BEGIN
	Select *from tblTulabaRegistration where ID =@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPInsertCities]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--EXEC sPInsertCities
CREATE PROCEDURE [dbo].[sPInsertCities]

AS
BEGIN
    BEGIN Transaction
	INSERT INTO tblCities(CityName,StatusID)
	Values ('Islamabad1',1)

	IF(@@ERROR>0)
	BEGIN
	Rollback Transaction
	END
	Else
	Begin
	Commit Transaction
	End
	End

	

Select *FROM tblCities
GO
/****** Object:  StoredProcedure [dbo].[SpLoginForm]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE   [dbo].[SpLoginForm] 
	-- Add the parameters for the stored procedure here
	@Username Varchar(30) ,
	@Password nvarchar (30)
AS
BEGIN
	Select*from tblLoginForm where UserName=@UserName And Password=@Password
   
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostActivitesSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostActivitesSave] 
	-- Add the parameters for the stored procedure here
	 @ActivityName varchar(10),@StatusID tinyint
	
AS
BEGIN
	Insert tblActivities( ActivityName,StatusID )
	Values (@ActivityName,@StatusID)

END
GO
/****** Object:  StoredProcedure [dbo].[sPPostActivitesUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostActivitesUpdate] 
	-- Add the parameters for the stored procedure here
	@ID tinyint, @ActivityName varchar(10),@StatusID tinyint
	
AS
BEGIN
	Update tblActivities
	Set ActivityName=@ActivityName,StatusID=@StatusID
	Where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostBookCategoriesSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostBookCategoriesSave]
@Type varchar(20)
AS
BEGIN
	Insert into tblBookCategories(Type)
	Values(@Type)
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostBookCategoriesUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostBookCategoriesUpdate]
@ID tinyint,@Type varchar(20)

AS
BEGIN
	Update tblBookCategories
	SET Type=@Type
	Where Id=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostBookIssueSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostBookIssueSave]
	-- Add the parameters for the stored procedure here
	@LibraryID tinyint,@BookID smallint,@StudentID Smallint,@IssueDate date,@ReturnDate date,@StatusID tinyint
AS
BEGIN
	Insert into tblBookIssue( LibraryID,BookID,StudentID,IssueDate,ReturnDate,StatusID)
	values(@LibraryID,@BookID,@StudentID,@IssueDate,@ReturnDate,@StatusID)
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostBookIssueUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostBookIssueUpdate]
	-- Add the parameters for the stored procedure here
	@ID smallint,@LibraryID tinyint,@BookID smallint,@StudentID Smallint,@IssueDate date,@ReturnDate date,@StatusID tinyint
	
AS
BEGIN
	Update tblBookIssue
	Set LibraryID=@LibraryID,BookID=@BookID,StudentID=@StudentID,IssueDate=@IssueDate,ReturnDate=@ReturnDate,StatusID=@StatusID
	Where ID=@ID
END

GO
/****** Object:  StoredProcedure [dbo].[sPPostBookSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostBookSave]
--Add the parametre for the stored procedure here
 @MudrisaID tinyint,@BookNumber tinyint,@BookTitle nvarchar(40),@Author nvarchar(25),@RackNumber tinyint,@LibraryID tinyint,
 @BookCategoriesID tinyint,@ShelfNumber tinyint

AS
BEGIN
	Insert into tblBooks( MudrisaID ,BookNumber,BookTitle ,Author ,RackNumber ,LibraryID, 
 BookCategoriesID ,ShelfNumber )

 VALUES(@MudrisaID ,@BookNumber,@BookTitle ,@Author ,@RackNumber ,@LibraryID,@BookCategoriesID,@ShelfNumber)
 
END

GO
/****** Object:  StoredProcedure [dbo].[sPPostBookUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostBookUpdate] 
@BookID tinyint,@MudrisaID tinyint,@BookNumber tinyint,@BookTitle nvarchar(40),@Author nvarchar(25),@RackNumber tinyint,@LibraryID tinyint,
 @BookCategoriesID tinyint,@ShelfNumber tinyint

	
	
	
	AS
BEGIN
	Update tblBooks
	Set MudrisaID=@MudrisaID,BookNumber=@BookNumber,BookTitle=@BookTitle,Author=@Author,RackNumber=@RackNumber,LibraryID=@LibraryID
	,BookCategoriesID=@BookCategoriesID,ShelfNumber=@ShelfNumber
	Where ID=@BookID
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostClassesSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostClassesSave]
	-- Add the parameters for the stored procedure here
	@MudrisaID tinyint,@ClassName varchar(20),@StatusID tinyint
AS
BEGIN
	Insert into tblClasses(MudrisaID,ClassName,StatusID)
	Values(@MudrisaID,@ClassName,@StatusID)
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostClassesUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostClassesUpdate]  
	-- Add the parameters for the stored procedure here
	@ClassID tinyint,@MudrisaID tinyint,@ClassName varchar(20),@StatusID tinyint
AS
BEGIN
	Update tblClasses
	SET MudrisaID=@MudrisaID,ClassName=@ClassName,StatusID=@StatusID
	Where ID=@ClassID
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostLibrary]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostLibrary]
--Add the parametre stored procedure here
@LibraryID tinyint,@MudrisaID tinyint, @LibraryName Varchar(50),@TotalRacks bigint,@TotalBooks bigint,
@OpenTime time ,@CloseTime time,@StatusID tinyint ,@ClassID tinyint, @ClassName varchar(20) ,
@BookTitle varchar(40), @BookNumber tinyint, @RackNumber tinyint, @ShelfNumber tinyint, @BookID smallint,@Author nvarchar(25),
@BookCategoriesID tinyint,@IssueDate date,@ReturnDate date,@BookIssueID tinyint,@StudentID smallint
AS
BEGIN
	Insert into tblLibraries(LibraryName,MudrisaID,TotalRacks,TotalBooks,OpenTime,CloseTime,StatusID)
	 Values(@LibraryName,@MudrisaID,@TotalRacks,@TotalBooks,@OpenTime,@CloseTime,@StatusID)
	Insert into tblClasses(MudrisaID,ClassName,StatusID)
	 Values(@MudrisaID,@ClassName,@StatusID)
	 Insert into tblBooks(MudrisaID,BookTitle,BookNumber,Author,RackNumber,ShelfNumber,LibraryID,BookCategoriesID)
	  Values(@MudrisaID,@BookTitle,@BookNumber,@Author,@RackNumber,@ShelfNumber,@LibraryID,@BookCategoriesID)
	  Insert into tblBookIssue(LibraryID,BookID,StudentID,IssueDate,ReturnDate,StatusID)
	   Values(@LibraryID,@BookID,@StudentID,@IssueDate,@ReturnDate,@StatusID)


END
GO
/****** Object:  StoredProcedure [dbo].[sPPostLibrarySave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostLibrarySave] 
	-- Add the parameters for the stored procedure here
	@MudrisaID tinyint,@LibraryName varchar(50),@TotalRacks Bigint,@TotalBooks bigint,@OpenTime time,@CloseTime time,
	@StatusID tinyint 
AS
BEGIN
  Insert into tblLibraries (MudrisaID,LibraryName,TotalRacks,TotalBooks,OpenTime,CloseTime,StatusID)
  Values(@MudrisaID,@LibraryName,@TotalRacks,@TotalBooks,@OpenTime,@CloseTime,@StatusID)

END
GO
/****** Object:  StoredProcedure [dbo].[sPPostLibraryUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostLibraryUpdate]
@LibraryID int,@MudrisaID tinyint,@LibraryName varchar(50),@TotalRacks Bigint,@TotalBooks bigint,@OpenTime time,@CloseTime time,
	@StatusID tinyint,@AdmissionDate datetime
AS
BEGIN

Update  tblLibraries
  Set MudrisaID=@MudrisaID,LibraryName=@LibraryName,TotalRacks=@TotalRacks,TotalBooks=@TotalBooks,OpenTime=@OpenTime,CloseTime=@CloseTime,
  StatusID=@StatusID,AdmissionDate=@AdmissionDate
	WHERE ID = @LibraryID

END
GO
/****** Object:  StoredProcedure [dbo].[sPPostRegistrationUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostRegistrationUpdate]
@ID smallint,@MudrisaID tinyint,@FirstName varchar(10),@LastName varchar(10),@FatherName varchar(20),@CNIC_FROmB bigint,
@PhotoPath nvarchar(50),@ISParentMartioyed bigint,@Accomodation bigint,@GenderID tinyint,@StatusID tinyint,@DateOFBirth date,
@AdmissionDate date
AS
BEGIN
	Update tblTulabaRegistration
	Set MudrisaID=@MudrisaID,FirstName=@FirstName,LastName=@LastName,FatherName=@FatherName,[CNIC_FROM B]=@CNIC_FROmB,PhotoPath=@PhotoPath,
	IsParentMartioyed=@ISParentMartioyed,Accomodation=@Accomodation,GenderID=@GenderID,StatusID=@StatusID,DateOfBirth=@DateOFBirth,
	AdmissionDate=@AdmissionDate
	Where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostStatusesSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostStatusesSave]
@type varchar(15)
AS
BEGIN
	Insert into tblStatuses(type)
	Values(@type)
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostStatusesUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostStatusesUpdate]
 @ID tinyint ,@type varchar(15)
AS
BEGIN
	Update tblStatuses
	Set type=@type
	Where id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostTimeTableSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostTimeTableSave]
@ActivityID tinyint,@ClassID tinyint, @StatusID tinyint ,@StartTime time,@EndTime time
AS
BEGIN
Insert tblTimeTable(ActivityID,ClassID,StatusID,StartTime,EndTime)
Values(@ActivityID,@ClassID,@StatusID,@StartTime,@EndTime)
	
END
GO
/****** Object:  StoredProcedure [dbo].[sPPostTimeTableUpdate]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPPostTimeTableUpdate]
@ID tinyint, @ActivityID tinyint ,@ClassID tinyint,@StatusID tinyint,@StartTime time,@EndTime time
AS
BEGIN
	Update tblTimeTable
	Set ActivityID=@ActivityID,ClassID=@ClassID,StatusID=@StatusID,StartTime=@StartTime,EndTime=@EndTime
	Where Id=@ID
END

GO
/****** Object:  StoredProcedure [dbo].[sPPostTulabaRegistrationSave]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sPPostTulabaRegistrationSave] 
	-- Add the parameters for the stored procedure here
	@MudrisaID tinyint,@FirstName varchar(10),@LastName varchar(10),@FatherName varchar(20),@CNIC_FROmB bigint,
@PhotoPath nvarchar(50),@ISParentMartioyed bigint,@Accomodation bigint,@GenderID tinyint,@StatusID tinyint,@DateOFBirth date,
@AdmissionDate date
AS
BEGIN
	Insert tblTulabaRegistration(MudrisaID,FirstName,LastName,FatherName,[CNIC_FROM B],PhotoPath,IsParentMartioyed,Accomodation,GenderID,StatusID,DateOfBirth,AdmissionDate)
	Values(@MudrisaID,@FirstName,@LastName,@FatherName,@CNIC_FROmB,@PhotoPath,@ISParentMartioyed,@Accomodation,@GenderID,@StatusID,@DateOFBirth,@AdmissionDate)
END
GO
/****** Object:  StoredProcedure [dbo].[sPTulabaRegistration]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sPTulabaRegistration]  
	 -- Add the parameters for the stored procedure here
	 @RegistrationID smallint,@MudrisaID tinyint,@FirstName varchar(40),@LastName varchar(40), @FatherName varchar(40), @CNIC_FormB Bigint
	 ,@PhotoPath nvarchar(50),@IsParentMartioyed bit,@Accomodation bit,@GenderID tinyint,@StatusID tinyint,@DateOFBirth date,
	 @Street nvarchar(50),@CityID smallint,@ProvinceID tinyint,@CountryID tinyint,	@NationalityID tinyint, @ContactNumber Bigint
	 
AS
BEGIN
 INSERT INTO tblTulabaRegistration(MudrisaID,FirstName,LastName,FatherName,[CNIC_FROM B],PhotoPath,IsParentMartioyed,
 Accomodation,GenderID,StatusID,DateOfBirth)
 
 VALUES(@MudrisaID,@FirstName,@LastName,@FatherName,@CNIC_FormB,@PhotoPath,@IsParentMartioyed,@Accomodation,@GenderID
 ,@StatusID,@DateOfBirth)
 
	
	INSERT INTO tblTulabaAddress(RegistrationID,Street,CityID,ProvincceID,CountryID,NationalityID)
	Values(@RegistrationID,@Street,@CityID,@ProvinceID,@CountryID,@NationalityID)
	INSERT INTO tblTulabaContactNumber(RegistrationID,ContactNumber) 
	Values(@RegistrationID,@ContactNumber)
	 
END
GO
/****** Object:  Trigger [dbo].[trg_InsertActivity]    Script Date: 12/19/2024 1:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_InsertActivity]
ON [dbo].[tblActivities]
AFTER INSERT 
AS 
BEGIN 

print'Values insert successfully'

END
GO
ALTER TABLE [dbo].[tblActivities] ENABLE TRIGGER [trg_InsertActivity]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblLibraries"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'less than greater than'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'less than greater than'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblAdvertisment"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblMudrisaInformation"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MudrisaAdvertisementwithCompleteDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MudrisaAdvertisementwithCompleteDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 275
               Bottom = 136
               Right = 461
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'totalbooks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'totalbooks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblTulabaRegistration"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTulabaContactNumber"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 119
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTulabaAddress"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 136
               Right = 644
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblClasses"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblActivities"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwActivitiesinClasses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwActivitiesinClasses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblTulabaRegistration"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 9
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAdmissionDateAND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAdmissionDateAND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblLibraries"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwbetween'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwbetween'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 136
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBookCatalogueinLibraries'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBookCatalogueinLibraries'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[15] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblMudrisaInformation"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTulabaRegistration"
            Begin Extent = 
               Top = 6
               Left = 251
               Bottom = 136
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblBooks"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 136
               Right = 657
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tblBookCategories"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 234
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblBookIssue"
            Begin Extent = 
               Top = 138
               Left = 246
               Bottom = 268
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tblLibraries"
            Begin Extent = 
               Top = 229
               Left = 469
               Bottom = 359
               Right = 639
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblGender"
            Begin Extent = 
               Top = 265
               Left = 20
               Bottom = 361
               Right = 190' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBooksIssue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblStatuses"
            Begin Extent = 
               Top = 339
               Left = 232
               Bottom = 435
               Right = 402
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBooksIssue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBooksIssue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[17] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 102
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 136
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 102
               Left = 259
               Bottom = 232
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "E"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "F"
            Begin Extent = 
               Top = 138
               Left = 467
               Bottom = 268
               Right = 652
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "G"
            Begin Extent = 
               Top = 234
               Left = 251
               Bottom = 330
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBooksIssue11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Begin Table = "H"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 366
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBooksIssue11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBooksIssue11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 251
               Bottom = 136
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 459
               Bottom = 119
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 6
               Left = 667
               Bottom = 119
               Right = 837
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "F"
            Begin Extent = 
               Top = 120
               Left = 459
               Bottom = 233
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCompleteInformationOfMudrisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCompleteInformationOfMudrisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCompleteInformationOfMudrisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblMudrisaInformation"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tblPostType"
            Begin Extent = 
               Top = 6
               Left = 251
               Bottom = 102
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwHifzUstaadpost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwHifzUstaadpost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblBooks"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tblBookIssue"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 136
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwissueDateIsNull'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwissueDateIsNull'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 119
               Right = 649
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 6
               Left = 687
               Bottom = 136
               Right = 857
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "E"
            Begin Extent = 
               Top = 120
               Left = 474
               Bottom = 216
               Right = 644
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "F"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 251
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "G"
            Begin Extent = 
               Top = 138
               Left = 246
               Bottom = 251
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwMudrisainformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Begin Table = "H"
            Begin Extent = 
               Top = 138
               Left = 682
               Bottom = 251
               Right = 852
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "I"
            Begin Extent = 
               Top = 216
               Left = 454
               Bottom = 312
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwMudrisainformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwMudrisainformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblClasses"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTeacherRegistration"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tblMudrisaInformation"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTeacherAssignClasses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTeacherAssignClasses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwtimetable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwtimetable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 136
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTotalBooksInLibraries'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTotalBooksInLibraries'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 119
               Right = 649
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 6
               Left = 687
               Bottom = 136
               Right = 857
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "E"
            Begin Extent = 
               Top = 120
               Left = 474
               Bottom = 216
               Right = 644
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "F"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 251
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "G"
            Begin Extent = 
               Top = 138
               Left = 246
               Bottom = 251
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vwtulabaaddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Begin Table = "H"
            Begin Extent = 
               Top = 138
               Left = 682
               Bottom = 251
               Right = 852
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "I"
            Begin Extent = 
               Top = 216
               Left = 454
               Bottom = 312
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vwtulabaaddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vwtulabaaddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -132
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblTulabaRegistration"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblMudrisaInformation"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTulabaAddress"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 136
               Right = 644
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tblTulabaContactNumber"
            Begin Extent = 
               Top = 6
               Left = 682
               Bottom = 119
               Right = 857
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblProvinces"
            Begin Extent = 
               Top = 120
               Left = 682
               Bottom = 233
               Right = 852
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblNationalities"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 234
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblGender"
            Begin Extent = 
               Top = 138
               Left = 246
               Bottom = 234
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTulabaProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCountries"
            Begin Extent = 
               Top = 138
               Left = 454
               Bottom = 251
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCities"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 347
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTulabaProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTulabaProfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[25] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblTulabaRegistration"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "tblTulabaContactNumber"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 119
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTulabaAddress"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 136
               Right = 644
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwtulabaregistration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwtulabaregistration'
GO
