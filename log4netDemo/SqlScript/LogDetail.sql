USE [test]
GO

/****** Object:  Table [dbo].[LogDetail]    Script Date: 2024/4/30 11:46:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LogDetail](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[LogLevel] [nvarchar](10) NULL,
	[LogThread] [nvarchar](10) NULL,
	[Logger] [nvarchar](50) NULL,
	[LogMessage] [nvarchar](3000) NULL,
 CONSTRAINT [PK_LogDetail] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


