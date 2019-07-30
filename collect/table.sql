USE [JDBM]
GO
/****** Object:  Table [dbo].[TB_DB_ALARM]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DB_ALARM](
	[DB_SEQ] [smallint] NOT NULL,
	[GBN] [varchar](50) NOT NULL,
	[W_VALUE] [varchar](10) NULL,
	[C_VALUE] [varchar](10) NULL,
	[ALARM_FLAG] [varchar](1) NULL,
	[DB_BATCH_FLAG] [varchar](2) NULL,
 CONSTRAINT [PK_TB_DB_ALARM] PRIMARY KEY CLUSTERED 
(
	[DB_SEQ] ASC,
	[GBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DB_INFO]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DB_INFO](
	[DB_SEQ] [smallint] IDENTITY(1,1) NOT NULL,
	[SVR_NM] [varchar](100) NOT NULL,
	[DB_NM] [varchar](100) NULL,
	[DB_KIND] [varchar](100) NULL,
	[DB_MEMO] [varchar](1000) NULL,
	[DB_IP] [varchar](30) NULL,
	[DB_PORT] [varchar](10) NOT NULL,
	[DB_SID] [varchar](50) NOT NULL,
	[COLLECT_FLAG] [varchar](1) NULL,
	[MOD_DT] [datetime] NULL,
	[CHK_DT] [datetime] NULL,
 CONSTRAINT [PK_TB_DB_INFO] PRIMARY KEY NONCLUSTERED 
(
	[DB_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DB_INFO_COLLECT_FLAG]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DB_INFO_COLLECT_FLAG](
	[COLLECT_FLAG] [varchar](1) NULL,
	[FLAG_NM] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DB_INFO_LOG]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DB_INFO_LOG](
	[LOG_SEQ] [smallint] IDENTITY(1,1) NOT NULL,
	[DB_SEQ] [smallint] NOT NULL,
	[SVR_NM] [varchar](100) NOT NULL,
	[GBN] [varchar](1) NOT NULL,
	[COMPLETE_FLAG] [varchar](1) NULL,
	[MOD_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_GROUP_DB]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_GROUP_DB](
	[GROUP_SEQ] [smallint] NOT NULL,
	[DB_SEQ] [smallint] NOT NULL,
	[MOD_DT] [datetime] NULL,
 CONSTRAINT [PK_TB_GROUP_DB] PRIMARY KEY CLUSTERED 
(
	[GROUP_SEQ] ASC,
	[DB_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_GROUP_MST]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_GROUP_MST](
	[GROUP_SEQ] [smallint] IDENTITY(1,1) NOT NULL,
	[GROUP_NM] [varchar](100) NOT NULL,
	[MOD_DT] [datetime] NULL,
 CONSTRAINT [PK_TB_GROUP_MST] PRIMARY KEY CLUSTERED 
(
	[GROUP_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_GROUP_USER]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_GROUP_USER](
	[GROUP_SEQ] [smallint] NOT NULL,
	[USR] [varchar](100) NOT NULL,
	[MOD_DT] [datetime] NULL,
 CONSTRAINT [PK_TB_GROUP_USER] PRIMARY KEY CLUSTERED 
(
	[GROUP_SEQ] ASC,
	[USR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_OBJECT_LOG]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OBJECT_LOG](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[OBJECT_NM] [varchar](100) NULL,
	[GBN] [varchar](20) NULL,
	[SQLCMD] [varchar](max) NULL,
	[MOD_HOST] [varchar](20) NULL,
	[MOD_DT] [datetime] NULL,
 CONSTRAINT [XPKSPLOG] PRIMARY KEY NONCLUSTERED 
(
	[SID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PUSH]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PUSH](
	[PID] [bigint] IDENTITY(1,1) NOT NULL,
	[DB_SEQ] [smallint] NOT NULL,
	[GBN] [varchar](100) NULL,
	[MSG] [varchar](8000) NULL,
	[MSG_CNT] [bigint] NULL,
	[SEND_FLAG] [varchar](2) NULL,
	[REG_DT] [datetime] NULL,
 CONSTRAINT [PK_TB_PUSH] PRIMARY KEY CLUSTERED 
(
	[PID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PUSH_HST]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PUSH_HST](
	[PID] [bigint] NOT NULL,
	[DB_SEQ] [smallint] NOT NULL,
	[GBN] [varchar](100) NULL,
	[MSG] [varchar](8000) NULL,
	[MSG_CNT] [bigint] NULL,
	[SEND_FLAG] [varchar](2) NULL,
	[REG_DT] [datetime] NULL,
 CONSTRAINT [PK_TB_PUSH_HST] PRIMARY KEY CLUSTERED 
(
	[PID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_QRY_LOG]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_QRY_LOG](
	[DB_SEQ] [smallint] NOT NULL,
	[REG_DT] [datetime] NOT NULL,
	[SPID] [smallint] NULL,
	[READS] [bigint] NULL,
	[WRITES] [bigint] NULL,
	[BLKD] [smallint] NULL,
	[DUR_TIME] [int] NULL,
	[TX] [int] NULL,
	[LOGIN] [nvarchar](256) NULL,
	[HOST_NAME] [nvarchar](256) NULL,
	[PROGRAM] [nvarchar](200) NULL,
	[CMD] [nvarchar](50) NULL,
	[SQL] [nvarchar](max) NULL,
	[STATUS] [varchar](10) NULL,
	[WAIT] [int] NULL,
	[LAST_WAIT_TYPE] [nvarchar](60) NULL,
	[WAIT_RESOURCE] [nvarchar](256) NULL,
	[DBNAME] [nvarchar](128) NULL,
	[CPU_TIME] [int] NULL,
	[START_TIME] [datetime] NULL,
	[PLAN_HANDLE] [varbinary](64) NULL,
	[STATEMENT_START_OFFSET] [int] NULL,
	[STATEMENT_END_OFFSET] [int] NULL,
	[OBJECTID] [varchar](200) NULL,
	[OBJECTNAME] [varchar](200) NULL,
	[LOG_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[END_TIME] [datetime] NULL,
	[CLIENT_IP] [varchar](30) NULL,
	[SPID2] [int] NULL,
	[BLKD2] [int] NULL,
 CONSTRAINT [PK_TB_QRY_LOG] PRIMARY KEY NONCLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_QRY_LOG_HST]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_QRY_LOG_HST](
	[DB_SEQ] [smallint] NOT NULL,
	[REG_DT] [datetime] NOT NULL,
	[SPID] [smallint] NULL,
	[READS] [bigint] NULL,
	[WRITES] [bigint] NULL,
	[BLKD] [smallint] NULL,
	[DUR_TIME] [int] NULL,
	[TX] [int] NULL,
	[LOGIN] [nvarchar](256) NULL,
	[HOST_NAME] [nvarchar](256) NULL,
	[PROGRAM] [nvarchar](200) NULL,
	[CMD] [nvarchar](50) NULL,
	[SQL] [nvarchar](max) NULL,
	[STATUS] [varchar](10) NULL,
	[WAIT] [int] NULL,
	[LAST_WAIT_TYPE] [nvarchar](60) NULL,
	[WAIT_RESOURCE] [nvarchar](256) NULL,
	[DBNAME] [nvarchar](128) NULL,
	[CPU_TIME] [int] NULL,
	[START_TIME] [datetime] NULL,
	[PLAN_HANDLE] [varbinary](64) NULL,
	[STATEMENT_START_OFFSET] [int] NULL,
	[STATEMENT_END_OFFSET] [int] NULL,
	[OBJECTID] [varchar](200) NULL,
	[OBJECTNAME] [varchar](200) NULL,
	[LOG_ID] [bigint] NOT NULL,
	[END_TIME] [datetime] NULL,
	[CLIENT_IP] [varchar](30) NULL,
	[SPID2] [int] NULL,
	[BLKD2] [int] NULL,
 CONSTRAINT [PK_TB_QRY_LOG_HST] PRIMARY KEY NONCLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_QRY_STAT]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_QRY_STAT](
	[DB_SEQ] [smallint] NOT NULL,
	[OBJECT_NM] [varchar](500) NULL,
	[STAT_NM] [varchar](100) NOT NULL,
	[STAT_CNT] [smallint] NULL,
	[STAT_DT] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_QRY_STAT_HST]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_QRY_STAT_HST](
	[DB_SEQ] [smallint] NOT NULL,
	[OBJECT_NM] [varchar](500) NULL,
	[STAT_NM] [varchar](100) NOT NULL,
	[STAT_CNT] [smallint] NULL,
	[STAT_DT] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_STAT_TIME]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_STAT_TIME](
	[GBN] [varchar](100) NULL,
	[STAT_TIME] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USER_DB_INFO]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USER_DB_INFO](
	[USR] [varchar](100) NOT NULL,
	[DB_SEQ] [smallint] NOT NULL,
 CONSTRAINT [PK_TB_USER_DB_INFO] PRIMARY KEY NONCLUSTERED 
(
	[USR] ASC,
	[DB_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USER_INFO]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USER_INFO](
	[USR] [varchar](100) NOT NULL,
	[USR_NAME] [varchar](100) NULL,
	[PWD] [varbinary](64) NULL,
	[ADMIN_YN] [varchar](1) NULL,
	[MEMO] [varchar](2000) NULL,
 CONSTRAINT [PK_TB_USER_INFO] PRIMARY KEY NONCLUSTERED 
(
	[USR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_1]    Script Date: 2019-07-30 오후 4:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_1](
	[A] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_DB_ALARM] ADD  DEFAULT ('N') FOR [ALARM_FLAG]
GO
ALTER TABLE [dbo].[TB_DB_ALARM] ADD  CONSTRAINT [DF_TB_DB_ALARM_DBBATCH_INC_FLAG]  DEFAULT ('N') FOR [DB_BATCH_FLAG]
GO
ALTER TABLE [dbo].[TB_DB_INFO] ADD  DEFAULT ('') FOR [DB_PORT]
GO
ALTER TABLE [dbo].[TB_DB_INFO] ADD  DEFAULT ('') FOR [DB_SID]
GO
ALTER TABLE [dbo].[TB_DB_INFO] ADD  DEFAULT (getdate()) FOR [MOD_DT]
GO
ALTER TABLE [dbo].[TB_DB_INFO] ADD  DEFAULT (getdate()) FOR [CHK_DT]
GO
ALTER TABLE [dbo].[TB_DB_INFO_LOG] ADD  DEFAULT ('N') FOR [COMPLETE_FLAG]
GO
ALTER TABLE [dbo].[TB_DB_INFO_LOG] ADD  DEFAULT (getdate()) FOR [MOD_DT]
GO
ALTER TABLE [dbo].[TB_GROUP_DB] ADD  DEFAULT (getdate()) FOR [MOD_DT]
GO
ALTER TABLE [dbo].[TB_GROUP_MST] ADD  DEFAULT (getdate()) FOR [MOD_DT]
GO
ALTER TABLE [dbo].[TB_GROUP_USER] ADD  DEFAULT (getdate()) FOR [MOD_DT]
GO
ALTER TABLE [dbo].[TB_PUSH] ADD  CONSTRAINT [DF__TB_PUSH__SEND_FL__65370702]  DEFAULT ('N') FOR [SEND_FLAG]
GO
ALTER TABLE [dbo].[TB_PUSH] ADD  CONSTRAINT [DF__TB_PUSH__REG_DT__662B2B3B]  DEFAULT (getdate()) FOR [REG_DT]
GO
ALTER TABLE [dbo].[TB_PUSH_HST] ADD  CONSTRAINT [DF__TB_PUSH_H__SEND___10216507]  DEFAULT ('N') FOR [SEND_FLAG]
GO
ALTER TABLE [dbo].[TB_PUSH_HST] ADD  CONSTRAINT [DF__TB_PUSH_H__REG_D__11158940]  DEFAULT (getdate()) FOR [REG_DT]
GO
ALTER TABLE [dbo].[TB_USER_INFO] ADD  CONSTRAINT [DF__TB_USER_I__ADMIN__6C190EBB]  DEFAULT ('N') FOR [ADMIN_YN]
GO
