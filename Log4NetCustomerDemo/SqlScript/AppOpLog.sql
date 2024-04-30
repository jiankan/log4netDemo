USE [test]
GO

/****** Object:  Table [dbo].[AppOpLog]    Script Date: 2024/4/30 11:46:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AppOpLog](
	[IntId] [int] IDENTITY(1,1) NOT NULL,
	[UserCharId] [varchar](50) NULL,
	[UserPhone] [varchar](20) NULL,
	[LogTime] [datetime] NOT NULL,
	[IP] [varchar](20) NOT NULL,
	[ControllerName] [varchar](20) NOT NULL,
	[ActionName] [varchar](20) NOT NULL,
	[ActionParam] [varchar](max) NOT NULL,
	[Url] [varchar](max) NOT NULL,
	[HttpHeader] [varchar](max) NULL,
	[HttpMethod] [varchar](5) NULL,
	[UserAgent] [varchar](100) NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[RunTime] [varchar](50) NOT NULL,
	[Level] [varchar](10) NOT NULL,
	[ThreadId] [int] NOT NULL,
	[Message] [varchar](max) NULL,
	[Exception] [varchar](max) NULL,
	[CreateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


