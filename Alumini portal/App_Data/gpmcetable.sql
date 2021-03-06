
CREATE DATABASE [gpmce]
USE [gpmce]

CREATE TABLE [dbo].[addevent](
	[Eventid] [int] IDENTITY(1,1) NOT NULL,
	[Eventname] [varchar](50) NULL,
	[Eventdetail] [varchar](max) NULL,
	[Eventdate] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[assignment]    Script Date: 30/11/2014 00:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[assignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Assignmentname] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[Filename] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[attandance]    Script Date: 30/11/2014 00:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[attandance](
	[Attandanceid] [int] IDENTITY(1,1) NOT NULL,
	[enrollment] [varchar](100) NULL,
	[date] [varchar](100) NULL,
	[mark] [varchar](100) NULL
) ON [PRIMARY]


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

insert into id values('0','0','0','0','0','0','0','0','0')
CREATE TABLE [dbo].[imagegalery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[images] [varchar](max) NULL,
 CONSTRAINT [PK_imagegalery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 30/11/2014 00:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marks](
	[Marksid] [int] NULL,
	[Studentid] [varchar](50) NULL,
	[Marks] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News]    Script Date: 30/11/2014 00:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[Newsid] [int] IDENTITY(1,1) NOT NULL,
	[Newsheading] [varchar](50) NULL,
	[News] [varchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Newsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student_Record]    Script Date: 30/11/2014 00:03:35 ******/
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
	[DateTime] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher_Record]    Script Date: 30/11/2014 00:03:35 ******/
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
	[Type] [varchar](50) NULL
) ON [PRIMARY]


