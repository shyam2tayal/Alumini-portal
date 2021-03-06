USE [master]
GO
/****** Object:  Database [Aluminiportal]    Script Date: 19/04/2016 15:15:03 ******/
CREATE DATABASE [Aluminiportal] ON  PRIMARY 
( NAME = N'Aluminiportal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Aluminiportal.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Aluminiportal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Aluminiportal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Aluminiportal] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Aluminiportal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Aluminiportal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Aluminiportal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Aluminiportal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Aluminiportal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Aluminiportal] SET ARITHABORT OFF 
GO
ALTER DATABASE [Aluminiportal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Aluminiportal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Aluminiportal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Aluminiportal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Aluminiportal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Aluminiportal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Aluminiportal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Aluminiportal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Aluminiportal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Aluminiportal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Aluminiportal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Aluminiportal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Aluminiportal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Aluminiportal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Aluminiportal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Aluminiportal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Aluminiportal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Aluminiportal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Aluminiportal] SET  MULTI_USER 
GO
ALTER DATABASE [Aluminiportal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Aluminiportal] SET DB_CHAINING OFF 
GO
USE [Aluminiportal]
GO
/****** Object:  Table [dbo].[addevent]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addevent](
	[Eventid] [int] IDENTITY(1,1) NOT NULL,
	[Eventname] [varchar](500) NULL,
	[Eventdetail] [nvarchar](max) NULL,
	[Eventdate] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aluminiregistration]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aluminiregistration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EnrollmentNo] [varchar](50) NULL,
	[Email] [varchar](150) NULL,
	[Password] [varchar](500) NULL,
	[PassingYear] [varchar](50) NULL,
	[Branch] [varchar](50) NULL,
	[CompanyPlaced] [varchar](150) NULL,
	[JobProfile] [varchar](150) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Id]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Id](
	[TeacherId] [varchar](100) NULL,
	[StudentId] [varchar](100) NULL,
	[ClassId] [varchar](100) NULL,
	[BatchId] [varchar](100) NULL,
	[TutorialId] [varchar](100) NULL,
	[QueryId] [varchar](100) NULL,
	[AssignmentId] [varchar](100) NULL,
	[StudentSub_No] [varchar](100) NULL,
	[RegistrationId] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[news]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[news](
	[Newsid] [int] IDENTITY(1,1) NOT NULL,
	[Newsheading] [varchar](500) NULL,
	[News] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Participantdetail]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Participantdetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Eventid] [int] NULL,
	[EventName] [varchar](500) NULL,
	[Name] [varchar](500) NULL,
	[Contact] [varchar](50) NULL,
	[Email] [varchar](500) NULL,
	[Role] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Request]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Request](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AluminiName] [varchar](500) NULL,
	[AluminiEmail] [varchar](500) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](500) NULL,
	[Contact] [varchar](50) NULL,
	[Message] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student_Record]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student_Record](
	[Enrollment] [varchar](500) NULL,
	[Class] [varchar](500) NULL,
	[Name] [varchar](500) NULL,
	[FatherName] [varchar](500) NULL,
	[DoB] [varchar](500) NULL,
	[Sex] [varchar](500) NULL,
	[Phone] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[PinCode] [varchar](500) NULL,
	[Email] [varchar](500) NULL,
	[UserName] [varchar](500) NULL,
	[Password] [varchar](500) NULL,
	[DateTime] [varchar](500) NULL,
	[ProfileImages] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher_Record]    Script Date: 19/04/2016 15:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher_Record](
	[Enrollment] [varchar](500) NULL,
	[Name] [varchar](500) NULL,
	[FatherName] [varchar](500) NULL,
	[DoB] [varchar](500) NULL,
	[Sex] [varchar](500) NULL,
	[Phone] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[PinCode] [varchar](500) NULL,
	[Email] [varchar](500) NULL,
	[Subject] [varchar](500) NULL,
	[UserName] [varchar](500) NULL,
	[Password] [varchar](500) NULL,
	[DateTime] [varchar](500) NULL,
	[Type] [varchar](50) NULL,
	[ProfileImages] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[addevent] ON 

INSERT [dbo].[addevent] ([Eventid], [Eventname], [Eventdetail], [Eventdate]) VALUES (2, N'Abcd', N'wertyuiooiuyfdxkjhgflkjglkjkkjgkjkj', N'12/2/2016')
SET IDENTITY_INSERT [dbo].[addevent] OFF
SET IDENTITY_INSERT [dbo].[Aluminiregistration] ON 

INSERT [dbo].[Aluminiregistration] ([Id], [Name], [EnrollmentNo], [Email], [Password], [PassingYear], [Branch], [CompanyPlaced], [JobProfile], [Status]) VALUES (1, N'Somil', N'STU9087', N'somilloani@hotmail.com', N'somil', N'2005', N'CS', N'Spaul', N'Developer', N'Pending')
INSERT [dbo].[Aluminiregistration] ([Id], [Name], [EnrollmentNo], [Email], [Password], [PassingYear], [Branch], [CompanyPlaced], [JobProfile], [Status]) VALUES (2, N'shiva jhjd', N'abc', N'shiva121@gmail.com', N'shiva@123', N'2131', N'IT', N'tcsjjf', N'engineerkjkf', N'Approved')
SET IDENTITY_INSERT [dbo].[Aluminiregistration] OFF
INSERT [dbo].[Id] ([TeacherId], [StudentId], [ClassId], [BatchId], [TutorialId], [QueryId], [AssignmentId], [StudentSub_No], [RegistrationId]) VALUES (N'4', N'3', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([Newsid], [Newsheading], [News]) VALUES (4, N'testing', N'check')
INSERT [dbo].[news] ([Newsid], [Newsheading], [News]) VALUES (2, N'test', N'test')
SET IDENTITY_INSERT [dbo].[news] OFF
SET IDENTITY_INSERT [dbo].[Participantdetail] ON 

INSERT [dbo].[Participantdetail] ([Id], [Eventid], [EventName], [Name], [Contact], [Email], [Role]) VALUES (1, 2, N'Abcd', N'somil', N'9599929953', N's@gmail.com', N'Singer')
SET IDENTITY_INSERT [dbo].[Participantdetail] OFF
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([Id], [AluminiName], [AluminiEmail], [Name], [Email], [Contact], [Message]) VALUES (1, N'Somil', N'somilloani@hotmail.com', N'raghav', N'ggg@gmail.com', N'9599929953', NULL)
INSERT [dbo].[Request] ([Id], [AluminiName], [AluminiEmail], [Name], [Email], [Contact], [Message]) VALUES (2, N'Somil', N'somilloani@hotmail.com', N'ajay', N'ajay@gmail.com', N'5896587452', N'testing')
SET IDENTITY_INSERT [dbo].[Request] OFF
INSERT [dbo].[Student_Record] ([Enrollment], [Class], [Name], [FatherName], [DoB], [Sex], [Phone], [Address], [PinCode], [Email], [UserName], [Password], [DateTime], [ProfileImages]) VALUES (N'STU907330', N'Btech IT', N'somil', N'abcd', N'7/13/2015', N'Male', N'8586808442', N'delhi', N'110008', N'somillohani@yahoo.com', N'somil', N'somil', N'24 July 2015,19:44:15', NULL)
INSERT [dbo].[Student_Record] ([Enrollment], [Class], [Name], [FatherName], [DoB], [Sex], [Phone], [Address], [PinCode], [Email], [UserName], [Password], [DateTime], [ProfileImages]) VALUES (N'STU907331', N'Btech IT', N'sumit', N'abcd', N'7/14/2015', N'Male', N'8965454545', N'Kolkata', N'110008', N'somillohani@hotmail.com', N'karan', N'karan', N'24 July 2015,21:03:16', N'Voltas-2-Ton-5-Star-SDL938711930-1-65fc1.jpg')
INSERT [dbo].[Student_Record] ([Enrollment], [Class], [Name], [FatherName], [DoB], [Sex], [Phone], [Address], [PinCode], [Email], [UserName], [Password], [DateTime], [ProfileImages]) VALUES (N'STU907332', N'Mtech', N'shubhi jfjrfj', N'kamal jkjej', N'23/01/1994', N'Female', N'1111111112', N'jfrfjrif', N'444444', N'shubhuverma1000@gmail.com', N'shubjkjkj', N'shubhi@123', N'19 April 2016,13:12:19', N'image1.JPG')
INSERT [dbo].[Teacher_Record] ([Enrollment], [Name], [FatherName], [DoB], [Sex], [Phone], [Address], [PinCode], [Email], [Subject], [UserName], [Password], [DateTime], [Type], [ProfileImages]) VALUES (N'FAC904540', N'kaita', N'abcd', N'6/4/2015', N'Male', N'8965454545', N'mumbai', N'110008', N'somillohani@hotmail.com', N'maths', N'kaita', N'd', N'24 July 2015,19:40:49', N'Teacher', NULL)
INSERT [dbo].[Teacher_Record] ([Enrollment], [Name], [FatherName], [DoB], [Sex], [Phone], [Address], [PinCode], [Email], [Subject], [UserName], [Password], [DateTime], [Type], [ProfileImages]) VALUES (N'FAC904541', N'karan', N'abcd', N'7/14/2015', N'Male', N'8965454545', N'delhi', N'110008', N'somillohani@hotmail.com', N'Sciene', N'karan', N'karan', N'24 July 2015,21:02:02', N'Teacher', N'LG-1-5-Ton-3-SDL060104403-1-3d492.JPG')
INSERT [dbo].[Teacher_Record] ([Enrollment], [Name], [FatherName], [DoB], [Sex], [Phone], [Address], [PinCode], [Email], [Subject], [UserName], [Password], [DateTime], [Type], [ProfileImages]) VALUES (N'FAC904542', N'anmol', N'amit', N'1/1/1989', N'Male', N'9865475210', N'Mumbai', N'110005', N'somillohani@hotmail.com', N'Maths', N'anmol', N'anmol', N'14 January 2016,12:17:13', N'Teacher', N'20150124_171944.jpg')
INSERT [dbo].[Teacher_Record] ([Enrollment], [Name], [FatherName], [DoB], [Sex], [Phone], [Address], [PinCode], [Email], [Subject], [UserName], [Password], [DateTime], [Type], [ProfileImages]) VALUES (N'FAC904543', N'tanushjhjhj', N'kamal hhjhjh', N'23/1/1994', N'Male', N'9999999999', N'fkgjkgjtjtjkjg', N'111110', N'tanushree121@gmail.com', N'dbms', N'tanu', N'tanu1', N'19 April 2016,13:14:24', N'Teacher', N'image1.JPG')
USE [master]
GO
ALTER DATABASE [Aluminiportal] SET  READ_WRITE 
GO
