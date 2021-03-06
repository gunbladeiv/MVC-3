USE [PROLINE]
GO

/****** Object:  Table [dbo].[QSF]    Script Date: 01/10/2011 16:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QSF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UGC] [varchar](30) NOT NULL,
	[SrcTable] [char](5) NOT NULL,
	[Filter] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_QSF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LUAW]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUAW](
	[FRID] [int] NOT NULL,
	[TOID] [int] NOT NULL,
	[Weight] [float] NOT NULL,
	[TimeFr] [smalldatetime] NULL,
	[TimeTo] [smalldatetime] NULL,
 CONSTRAINT [PK_LUAW] PRIMARY KEY CLUSTERED 
(
	[FRID] ASC,
	[TOID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSE]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CSSID] [int] NOT NULL,
	[G201] [int] NOT NULL,
 CONSTRAINT [PK_CSE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYSU]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSU](
	[ID] [char](10) NOT NULL,
	[UID] [int] NOT NULL,
	[Text] [varchar](255) NULL,
	[Number] [float] NULL,
	[DT] [datetime] NULL,
 CONSTRAINT [SYSU_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC,
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_SYSU_c_7_443148624__K1_K2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE CLUSTERED INDEX [_dta_index_SYSU_c_7_443148624__K1_K2] ON [dbo].[SYSU] 
(
	[ID] ASC,
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UMF](
	[UserID] [char](12) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](50) NULL,
	[Retries] [smallint] NULL,
	[Status] [char](1) NULL,
	[GroupID] [int] NULL,
	[Name] [varchar](50) NULL,
	[DN] [varchar](50) NULL,
	[Notes] [varchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[Position] [varchar](50) NULL,
	[RoleID] [int] NULL,
	[Dept] [varchar](50) NULL,
	[OGID] [int] NULL,
	[AcctID] [int] NULL,
 CONSTRAINT [UMF_PK] PRIMARY KEY NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [UserID]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [UserID] ON [dbo].[UMF] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMF](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GMF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MAP]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAP](
	[ID] [varchar](50) NOT NULL,
	[Map] [image] NULL,
 CONSTRAINT [PK_MAP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WFR]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WFR](
	[GMFID] [int] NOT NULL,
	[G226] [int] NOT NULL,
	[G310] [int] NOT NULL,
	[G310To] [int] NOT NULL,
	[Notes] [varchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TSTD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSTD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TSTFID] [int] NOT NULL,
	[Desc] [varchar](500) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[OPrice] [money] NULL,
	[LPrice] [money] NULL,
	[Qty] [real] NULL,
	[UOM] [int] NULL,
	[StockID] [int] NULL,
	[RefNo] [varchar](50) NULL,
	[Rates] [float] NULL,
	[ETA] [datetime] NULL,
	[G250] [int] NULL,
	[CSSID] [int] NULL,
	[GLID] [bigint] NULL,
	[SCC] [varchar](50) NULL,
	[Tag] [varchar](50) NULL,
	[G199] [int] NULL,
	[G201] [int] NULL,
	[G202] [int] NULL,
	[StartDT] [datetime] NULL,
	[EndDT] [datetime] NULL,
	[Duration] [float] NULL,
	[G206] [int] NULL,
	[LastQty] [real] NULL,
	[CommPct] [real] NULL,
	[OComm] [money] NULL,
	[LComm] [money] NULL,
	[DiscPct] [real] NULL,
	[ODisc] [money] NULL,
	[LDisc] [money] NULL,
	[T1G60] [int] NULL,
	[T2G60] [int] NULL,
	[Tax1Pct] [real] NULL,
	[OTax1] [money] NULL,
	[LTax1] [money] NULL,
	[Tax2Pct] [real] NULL,
	[OTax2] [money] NULL,
	[LTax2] [money] NULL,
	[BatchID] [int] NULL,
	[BatchNo] [varchar](50) NULL,
 CONSTRAINT [PK_TSTD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_TSTD_7_2105058535__K2_1_3_4_5_6_7_8_9_10_11_12_14_15_16_17_18_19_20_21_22_23_24]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTD_7_2105058535__K2_1_3_4_5_6_7_8_9_10_11_12_14_15_16_17_18_19_20_21_22_23_24] ON [dbo].[TSTD] 
(
	[TSTFID] ASC
)
INCLUDE ( [ID],
[Desc],
[OAmt],
[LAmt],
[OPrice],
[LPrice],
[Qty],
[UOM],
[StockID],
[RefNo],
[Rates],
[ETA],
[G250],
[GLID],
[SCC],
[Tag],
[G199],
[G201],
[G202],
[StartDT],
[EndDT],
[Duration]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_2105058535_1_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_2105058535_1_2] ON [dbo].[TSTD]([ID], [TSTFID])
GO
/****** Object:  Table [dbo].[INFD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[INFID] [int] NOT NULL,
	[CrDT] [datetime] NOT NULL,
	[srcTable] [char](5) NOT NULL,
	[XDocID] [int] NOT NULL,
	[XDocRef] [varchar](50) NULL,
 CONSTRAINT [PK_INFD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CCF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCF](
	[CurrCode] [char](3) NOT NULL,
	[SS] [char](1) NULL,
	[Desc] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
	[PrintSeq] [varchar](2) NULL,
 CONSTRAINT [aaaaaCCF_PK] PRIMARY KEY NONCLUSTERED 
(
	[CurrCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSI]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CSSID] [int] NULL,
	[G202] [int] NULL,
	[G206] [int] NULL,
	[Remarks] [varchar](100) NULL,
	[G199] [int] NULL,
	[AG199] [int] NULL,
	[PDSID] [int] NULL,
	[G209] [int] NULL,
	[Qty] [real] NULL,
	[AQty] [real] NULL,
 CONSTRAINT [PK_CSI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [IX_CSI_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [IX_CSI_1] ON [dbo].[CSI] 
(
	[CSSID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QST]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QST](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SPID] [smallint] NOT NULL,
	[SrcTable] [char](5) NOT NULL,
	[XDocID] [int] NOT NULL,
	[DocID] [int] NOT NULL,
	[ver] [int] NOT NULL,
	[Lock] [tinyint] NOT NULL,
 CONSTRAINT [PK_QST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AMT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AMT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AMFID] [int] NOT NULL,
	[AMLID] [int] NULL,
	[AddDT] [datetime] NOT NULL,
	[G206] [int] NOT NULL,
	[Tag] [varchar](50) NOT NULL,
	[Notes] [varchar](2000) NULL,
 CONSTRAINT [PK_AMT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PPD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PPD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PDSID] [int] NOT NULL,
	[SID] [int] NULL,
	[AMFID] [int] NULL,
	[EffDT] [datetime] NOT NULL,
	[MinQty] [float] NOT NULL,
	[CCID] [char](3) NULL,
	[Price] [money] NULL,
	[Markup] [float] NULL,
	[MaxDisc] [float] NULL,
 CONSTRAINT [PK_PPD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ENR]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENR](
	[ENSID] [int] NOT NULL,
	[DTStamp] [datetime] NOT NULL,
	[Recipient] [varchar](100) NOT NULL,
	[Status] [char](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLR]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[UserID] [char](12) NOT NULL,
	[EnterDT] [datetime] NOT NULL,
	[Remarks] [varchar](8000) NULL,
	[G226] [int] NULL,
 CONSTRAINT [PK_CLR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSC]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CSSID] [int] NOT NULL,
	[ProdID] [int] NOT NULL,
	[G209] [int] NULL,
	[Qty] [real] NOT NULL,
 CONSTRAINT [PK_CSC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PDSID] [int] NOT NULL,
	[OGID] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[StartDT] [datetime] NOT NULL,
	[EndDT] [datetime] NOT NULL,
	[TS] [int] NOT NULL,
	[Notes] [varchar](2000) NULL,
 CONSTRAINT [PK_SMF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCLSA]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCLSA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLSID] [int] NULL,
	[G202] [int] NULL,
	[Remarks] [varchar](255) NULL,
	[G201] [int] NULL,
	[G199] [int] NULL,
	[Tag] [varchar](100) NULL,
	[Qty] [float] NOT NULL,
	[AQty] [float] NOT NULL,
 CONSTRAINT [PK_QCLSA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOL]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Yr] [smallint] NULL,
	[Title] [varchar](50) NULL,
	[StartDT] [datetime] NULL,
	[EndDT] [datetime] NULL,
	[IsFixed] [bit] NULL,
	[G80] [int] NOT NULL,
 CONSTRAINT [PK_HOL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SDF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SDF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SMFID] [int] NOT NULL,
	[AMFID] [int] NULL,
	[PDSID] [int] NULL,
	[StartDT] [datetime] NULL,
	[EndDT] [datetime] NULL,
	[SS] [char](1) NOT NULL,
 CONSTRAINT [PK_SDF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CBD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CBFID] [int] NOT NULL,
	[CLDNo] [smallint] NULL,
	[CLBNo] [smallint] NULL,
	[Desc] [varchar](500) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[OPrice] [money] NULL,
	[LPrice] [money] NULL,
	[Qty] [smallint] NULL,
	[UOM] [int] NULL,
	[StockID] [int] NULL,
	[RefNo] [varchar](50) NULL,
	[Rates] [float] NULL,
	[Freq] [smallint] NULL,
	[AStockID] [int] NULL,
	[G250] [int] NULL,
 CONSTRAINT [PK_CBD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ATT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocID] [int] NOT NULL,
	[FileName] [varchar](50) NULL,
	[FileType] [varchar](10) NULL,
	[FileURL] [varchar](255) NULL,
	[FileDate] [datetime] NULL,
	[SaveAsBlob] [bit] NULL,
	[Remarks] [varchar](255) NULL,
 CONSTRAINT [PK_ATT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AOFSS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AOFSS](
	[AOFSID] [int] NOT NULL,
	[SNo] [varchar](50) NOT NULL,
	[SS] [smallint] NULL,
 CONSTRAINT [PK_AOFSS] PRIMARY KEY CLUSTERED 
(
	[AOFSID] ASC,
	[SNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TSTF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSTF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[G2] [int] NOT NULL,
	[TrxDT] [datetime] NOT NULL,
	[UDNo] [varchar](50) NULL,
	[AcctID] [int] NULL,
	[AcctName] [varchar](200) NULL,
	[Add1] [varchar](100) NULL,
	[Add2] [varchar](100) NULL,
	[Add3] [varchar](100) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[ZIP] [varchar](10) NULL,
	[LUAID] [int] NULL,
	[State] [int] NULL,
	[PhO] [varchar](100) NULL,
	[PhH] [varchar](100) NULL,
	[PhM] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Contact] [varchar](100) NULL,
	[AccMth] [int] NULL,
	[Narration] [varchar](100) NULL,
	[EnterBy] [varchar](12) NULL,
	[UpdateBy] [varchar](12) NULL,
	[InputDT] [datetime] NULL,
	[UpdateDT] [datetime] NULL,
	[PrintBy] [varchar](12) NULL,
	[PrintNo] [int] NULL,
	[PrintDT] [datetime] NULL,
	[Handler] [int] NOT NULL,
	[OGID] [int] NULL,
	[CCID] [char](3) NULL,
	[ER] [float] NOT NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[Info] [varchar](800) NULL,
	[Info2] [varchar](800) NULL,
	[TS] [char](1) NULL,
	[SS] [char](1) NULL,
	[InstNo] [tinyint] NULL,
	[Remarks] [varchar](500) NULL,
	[IsDCNote] [bit] NULL,
	[RefNo] [varchar](20) NULL,
	[LSTax1] [money] NULL,
	[OSTax1] [money] NULL,
	[STax1] [float] NULL,
	[LGross] [money] NULL,
	[OGross] [money] NULL,
	[PymtTerms] [int] NULL,
	[DONo] [varchar](20) NULL,
	[XDocID] [int] NULL,
	[GSTIncl] [bit] NOT NULL,
	[Header] [varchar](500) NULL,
	[CustRef] [varchar](50) NULL,
	[DONotes] [varchar](500) NULL,
	[IsBadDebt] [bit] NOT NULL,
	[DelDT] [datetime] NULL,
	[ETA] [datetime] NULL,
	[G250] [int] NULL,
	[G260] [int] NULL,
	[AMLID] [int] NULL,
	[OldDocNo] [int] NULL,
	[CMFID] [int] NULL,
	[SrcID] [int] NULL,
	[XOGID] [bigint] NULL,
	[ARXML] [varchar](2000) NULL,
	[ARText] [varchar](100) NULL,
	[AMLID2] [int] NULL,
	[G207] [int] NULL,
	[G208] [int] NULL,
	[StartDT] [datetime] NULL,
	[EndDT] [datetime] NULL,
	[Duration] [float] NULL,
	[Rating] [smallint] NULL,
	[CLDID] [int] NULL,
 CONSTRAINT [PK_TSTF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K2] ON [dbo].[TSTF] 
(
	[G2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K3_K2_K39_K1_K40_K30_4_6_22_35_38_43_50_54]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K3_K2_K39_K1_K40_K30_4_6_22_35_38_43_50_54] ON [dbo].[TSTF] 
(
	[TrxDT] ASC,
	[G2] ASC,
	[SS] ASC,
	[ID] ASC,
	[InstNo] ASC,
	[Handler] ASC
)
INCLUDE ( [UDNo],
[AcctName],
[Narration],
[LAmt],
[TS],
[RefNo],
[DONo],
[CustRef]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K3_K2_K39_K1_K40_K5_4_6_22_35_38_43_50_54]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K3_K2_K39_K1_K40_K5_4_6_22_35_38_43_50_54] ON [dbo].[TSTF] 
(
	[TrxDT] ASC,
	[G2] ASC,
	[SS] ASC,
	[ID] ASC,
	[InstNo] ASC,
	[AcctID] ASC
)
INCLUDE ( [UDNo],
[AcctName],
[Narration],
[LAmt],
[TS],
[RefNo],
[DONo],
[CustRef]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K5_K2_K39_K1_3_4_6_22_35_38_40_43_50_54]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K5_K2_K39_K1_3_4_6_22_35_38_40_43_50_54] ON [dbo].[TSTF] 
(
	[AcctID] ASC,
	[G2] ASC,
	[SS] ASC,
	[ID] ASC
)
INCLUDE ( [TrxDT],
[UDNo],
[AcctName],
[Narration],
[LAmt],
[TS],
[InstNo],
[RefNo],
[DONo],
[CustRef]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K5_K54]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K5_K54] ON [dbo].[TSTF] 
(
	[AcctID] ASC,
	[CustRef] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K54]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K54] ON [dbo].[TSTF] 
(
	[CustRef] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K62_1_3_4_50_63]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K62_1_3_4_50_63] ON [dbo].[TSTF] 
(
	[OldDocNo] ASC
)
INCLUDE ( [ID],
[TrxDT],
[UDNo],
[DONo],
[CMFID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K62_1_4_50]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K62_1_4_50] ON [dbo].[TSTF] 
(
	[OldDocNo] ASC
)
INCLUDE ( [ID],
[UDNo],
[DONo]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_TSTF_7_770101784__K63]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_TSTF_7_770101784__K63] ON [dbo].[TSTF] 
(
	[CMFID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_770101784_1_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_2] ON [dbo].[TSTF]([ID], [G2])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_3_2_39_40_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_3_2_39_40_5] ON [dbo].[TSTF]([ID], [TrxDT], [G2], [SS], [InstNo], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_3] ON [dbo].[TSTF]([ID], [InstNo], [TrxDT])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_3_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_3_2] ON [dbo].[TSTF]([ID], [InstNo], [TrxDT], [G2])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_30_3_39_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_30_3_39_2] ON [dbo].[TSTF]([ID], [InstNo], [Handler], [TrxDT], [SS], [G2])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_5_2_39]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_5_2_39] ON [dbo].[TSTF]([ID], [InstNo], [AcctID], [G2], [SS])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_5_2_63]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_5_2_63] ON [dbo].[TSTF]([ID], [InstNo], [AcctID], [G2], [CMFID])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_5_2_63_39]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_5_2_63_39] ON [dbo].[TSTF]([ID], [InstNo], [AcctID], [G2], [CMFID], [SS])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_5_3_39]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_5_3_39] ON [dbo].[TSTF]([ID], [InstNo], [AcctID], [TrxDT], [SS])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_63]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_63] ON [dbo].[TSTF]([ID], [InstNo], [CMFID])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_40_63_39_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_40_63_39_5] ON [dbo].[TSTF]([ID], [InstNo], [CMFID], [SS], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_1_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_1_5] ON [dbo].[TSTF]([ID], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_1_40]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_1_40] ON [dbo].[TSTF]([G2], [ID], [InstNo])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_1_40_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_1_40_3] ON [dbo].[TSTF]([G2], [ID], [InstNo], [TrxDT])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_1_40_5_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_1_40_5_3] ON [dbo].[TSTF]([G2], [ID], [InstNo], [AcctID], [TrxDT])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_22]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_22] ON [dbo].[TSTF]([G2], [Narration])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_39_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_39_1] ON [dbo].[TSTF]([G2], [SS], [ID])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_62]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_62] ON [dbo].[TSTF]([G2], [OldDocNo])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_63]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_63] ON [dbo].[TSTF]([G2], [CMFID])
GO
/****** Object:  Statistic [_dta_stat_770101784_2_63_39_1_40]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_2_63_39_1_40] ON [dbo].[TSTF]([G2], [CMFID], [SS], [ID], [InstNo])
GO
/****** Object:  Statistic [_dta_stat_770101784_3_2_39_5_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_3_2_39_5_1] ON [dbo].[TSTF]([TrxDT], [G2], [SS], [AcctID], [ID])
GO
/****** Object:  Statistic [_dta_stat_770101784_3_2_39_5_1_40]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_3_2_39_5_1_40] ON [dbo].[TSTF]([TrxDT], [G2], [SS], [AcctID], [ID], [InstNo])
GO
/****** Object:  Statistic [_dta_stat_770101784_3_39_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_3_39_2] ON [dbo].[TSTF]([TrxDT], [SS], [G2])
GO
/****** Object:  Statistic [_dta_stat_770101784_3_39_2_1_40]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_3_39_2_1_40] ON [dbo].[TSTF]([TrxDT], [SS], [G2], [ID], [InstNo])
GO
/****** Object:  Statistic [_dta_stat_770101784_39_1_40_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_39_1_40_2] ON [dbo].[TSTF]([SS], [ID], [InstNo], [G2])
GO
/****** Object:  Statistic [_dta_stat_770101784_39_1_40_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_39_1_40_3] ON [dbo].[TSTF]([SS], [ID], [InstNo], [TrxDT])
GO
/****** Object:  Statistic [_dta_stat_770101784_39_1_40_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_39_1_40_5] ON [dbo].[TSTF]([SS], [ID], [InstNo], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_39_1_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_39_1_5] ON [dbo].[TSTF]([SS], [ID], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_39_2_38]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_39_2_38] ON [dbo].[TSTF]([SS], [G2], [TS])
GO
/****** Object:  Statistic [_dta_stat_770101784_5_2_39_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_5_2_39_1] ON [dbo].[TSTF]([AcctID], [G2], [SS], [ID])
GO
/****** Object:  Statistic [_dta_stat_770101784_5_3_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_5_3_2] ON [dbo].[TSTF]([AcctID], [TrxDT], [G2])
GO
/****** Object:  Statistic [_dta_stat_770101784_5_63]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_5_63] ON [dbo].[TSTF]([AcctID], [CMFID])
GO
/****** Object:  Statistic [_dta_stat_770101784_54_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_54_5] ON [dbo].[TSTF]([CustRef], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_56_63]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_56_63] ON [dbo].[TSTF]([IsBadDebt], [CMFID])
GO
/****** Object:  Statistic [_dta_stat_770101784_63_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_63_3] ON [dbo].[TSTF]([CMFID], [TrxDT])
GO
/****** Object:  Statistic [_dta_stat_770101784_63_39_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_63_39_1] ON [dbo].[TSTF]([CMFID], [SS], [ID])
GO
/****** Object:  Statistic [_dta_stat_770101784_63_39_1_40_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_63_39_1_40_5] ON [dbo].[TSTF]([CMFID], [SS], [ID], [InstNo], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_63_39_2_1_40_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_63_39_2_1_40_5] ON [dbo].[TSTF]([CMFID], [SS], [G2], [ID], [InstNo], [AcctID])
GO
/****** Object:  Statistic [_dta_stat_770101784_63_39_5_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_770101784_63_39_5_1] ON [dbo].[TSTF]([CMFID], [SS], [AcctID], [ID])
GO
/****** Object:  Table [dbo].[ERM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERM](
	[GID] [int] NOT NULL,
	[EffDT] [datetime] NOT NULL,
	[Val] [float] NULL,
 CONSTRAINT [PK_ERM] PRIMARY KEY CLUSTERED 
(
	[GID] ASC,
	[EffDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CBF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NOT NULL,
	[TrxDT] [datetime] NULL,
	[InvNo] [varchar](20) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[InvInfo] [varchar](800) NULL,
	[InvDT] [datetime] NULL,
	[Status] [char](1) NULL,
	[Posted] [bit] NULL,
	[InstNo] [tinyint] NULL,
	[InvInfo2] [varchar](500) NULL,
	[Remarks] [varchar](500) NULL,
	[IsDCNote] [bit] NULL,
	[RefNo] [varchar](20) NULL,
	[LSTax1] [money] NULL,
	[OSTax1] [money] NULL,
	[STax1] [float] NULL,
	[LGross] [money] NULL,
	[OGross] [money] NULL,
	[PymtTerms] [int] NULL,
	[DONo] [varchar](20) NULL,
	[XDocID] [int] NULL,
	[GSTIncl] [bit] NOT NULL,
	[Header] [varchar](500) NULL,
	[CustRef] [varchar](50) NULL,
	[DONotes] [varchar](500) NULL,
	[IsAuto] [bit] NOT NULL,
	[IsBadDebt] [bit] NOT NULL,
	[AccNo] [varchar](12) NULL,
	[G2] [int] NULL,
 CONSTRAINT [PK_CBF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CST]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CSSID] [int] NOT NULL,
	[TechID] [int] NOT NULL,
 CONSTRAINT [PK_CST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [IX_CST]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [IX_CST] ON [dbo].[CST] 
(
	[CSSID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLL]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLL](
	[CMFID] [int] NOT NULL,
	[CMFID2] [int] NOT NULL,
 CONSTRAINT [PK_CLL] PRIMARY KEY CLUSTERED 
(
	[CMFID] ASC,
	[CMFID2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMF](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocType] [char](1) NOT NULL,
	[RefNo] [varchar](25) NULL,
	[SS] [char](1) NULL,
	[TS] [char](1) NULL,
	[Narration] [varchar](30) NULL,
	[AccEntry] [bit] NOT NULL,
	[AccID] [bigint] NOT NULL,
	[AccName] [varchar](200) NULL,
	[CashID] [bigint] NOT NULL,
	[DocDT] [datetime] NULL,
	[InputDT] [datetime] NULL,
	[UpdateDT] [datetime] NULL,
	[AccMth] [int] NULL,
	[CC] [char](3) NULL,
	[ER] [float] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[PrintNo] [int] NULL,
	[PrintDT] [datetime] NULL,
	[EnterBy] [varchar](12) NULL,
	[UpdateBy] [varchar](12) NULL,
	[PrintBy] [varchar](12) NULL,
	[OGID] [int] NULL,
	[G50] [int] NULL,
	[Remarks] [varchar](100) NULL,
	[UDNo] [varchar](50) NULL,
	[DueDT] [datetime] NULL,
	[IsDeferred] [bit] NOT NULL,
	[OldDocNo] [int] NULL,
 CONSTRAINT [aaaaaTMF_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INFS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[INFID] [int] NOT NULL,
	[G310] [int] NULL,
	[UserID] [char](12) NOT NULL,
	[UpdateDT] [datetime] NOT NULL,
	[Notes] [varchar](500) NULL,
	[ToSend] [bit] NOT NULL,
	[MsgSent] [bit] NOT NULL,
 CONSTRAINT [PK_INFS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blob]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blob](
	[id] [varchar](50) NULL,
	[blob] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUM](
	[AuditID] [bigint] IDENTITY(1,1) NOT NULL,
	[AppID] [varchar](10) NULL,
	[UserID] [varchar](12) NULL,
	[DTStamp] [datetime] NULL,
	[Desc] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ARD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARD](
	[AccID] [int] NOT NULL,
	[OGID] [int] NULL,
	[APID] [int] NULL,
	[Src] [varchar](30) NULL,
	[TDate] [datetime] NULL,
	[UDNo] [varchar](50) NULL,
	[RefNo] [varchar](30) NULL,
	[Desc] [varchar](250) NULL,
	[Remarks] [varchar](250) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[OXAmt] [money] NULL,
	[LXAmt] [money] NULL,
	[ODiff] [money] NULL,
	[LDiff] [money] NULL,
	[Applied] [bit] NULL,
	[AccMth] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[srcTable] [char](5) NOT NULL,
	[XDocID] [int] NOT NULL,
	[XDocRef] [varchar](30) NOT NULL,
	[UserID] [char](12) NOT NULL,
	[DueDT] [datetime] NOT NULL,
	[CreateDT] [datetime] NOT NULL,
	[UpdateDT] [datetime] NULL,
	[UpdateUID] [char](12) NULL,
	[G226] [int] NULL,
	[Subject] [varchar](100) NULL,
	[Notes] [varchar](500) NULL,
	[G310] [int] NULL,
	[Rating] [smallint] NULL,
	[Contact] [varchar](200) NULL,
	[AMFID] [int] NULL,
	[SS] [char](1) NULL,
	[ARXML] [varchar](2000) NULL,
	[ARText] [varchar](100) NULL,
	[ToSend] [bit] NOT NULL,
	[MsgSent] [bit] NOT NULL,
	[Emails] [varchar](1000) NULL,
	[ARDT] [datetime] NULL,
	[ARRec] [varchar](10) NULL,
 CONSTRAINT [PK_INF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_INF_7_1237579447__K3_K2_K23_K1_K10_K13_K8_4_6_7_9_11_20]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_INF_7_1237579447__K3_K2_K23_K1_K10_K13_K8_4_6_7_9_11_20] ON [dbo].[INF] 
(
	[XDocID] ASC,
	[srcTable] ASC,
	[SS] ASC,
	[ID] ASC,
	[G226] ASC,
	[G310] ASC,
	[UpdateDT] ASC
)
INCLUDE ( [XDocRef],
[DueDT],
[CreateDT],
[UpdateUID],
[Subject],
[Contact]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_1237579447_1_10_13_3_2_23_8]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1237579447_1_10_13_3_2_23_8] ON [dbo].[INF]([ID], [G226], [G310], [XDocID], [srcTable], [SS], [UpdateDT])
GO
/****** Object:  Statistic [_dta_stat_1237579447_8_3_2_23]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1237579447_8_3_2_23] ON [dbo].[INF]([UpdateDT], [XDocID], [srcTable], [SS])
GO
/****** Object:  Table [dbo].[MRL]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRL](
	[RelID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[CID] [int] NOT NULL,
 CONSTRAINT [PK_MRL] PRIMARY KEY CLUSTERED 
(
	[RelID] ASC,
	[PID] ASC,
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Statistic [_dta_stat_418100530_3_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_418100530_3_1] ON [dbo].[MRL]([CID], [RelID])
GO
/****** Object:  Statistic [_dta_stat_875150163_1_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_875150163_1_3] ON [dbo].[MRL]([RelID], [CID])
GO
/****** Object:  Table [dbo].[QCBD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCBD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CBFID] [int] NOT NULL,
	[CLDNo] [smallint] NULL,
	[CLBNo] [smallint] NULL,
	[Desc] [varchar](500) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[OPrice] [money] NULL,
	[LPrice] [money] NULL,
	[Qty] [real] NULL,
	[UOM] [int] NULL,
	[StockID] [int] NULL,
	[RefNo] [varchar](50) NULL,
	[Rates] [float] NULL,
	[Freq] [smallint] NULL,
	[G250] [int] NULL,
	[SrcID] [int] NULL,
 CONSTRAINT [PK_QCBD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SID]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SID](
	[SID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Sys] [tinyint] NOT NULL,
 CONSTRAINT [PK_SID] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ATM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATM](
	[TypeID] [smallint] NOT NULL,
	[Name] [varchar](50) NULL,
	[Seq] [int] NULL,
	[DCFlag] [char](1) NULL,
	[RPTGrp] [char](1) NULL,
	[Print] [bit] NOT NULL,
	[SkipZero] [bit] NOT NULL,
 CONSTRAINT [aaaaaATM_PK] PRIMARY KEY NONCLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PCD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PDSID] [int] NOT NULL,
	[SID] [int] NULL,
	[AMFID] [int] NULL,
	[G30] [int] NULL,
	[EffDT] [datetime] NOT NULL,
	[MinQty] [float] NOT NULL,
	[CCID] [char](3) NULL,
	[OComm] [money] NULL,
	[CommP] [float] NULL,
 CONSTRAINT [PK_PCD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AHM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AHM](
	[HdrID] [int] IDENTITY(1,1) NOT NULL,
	[G45] [int] NULL,
	[RptName] [varchar](50) NULL,
	[OGID] [int] NULL,
 CONSTRAINT [PK_AHM] PRIMARY KEY CLUSTERED 
(
	[HdrID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFL]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFL](
	[List_ID] [int] IDENTITY(1,1) NOT NULL,
	[List_CFFID] [int] NOT NULL,
	[List_OptID] [int] NOT NULL,
	[List_Value] [varchar](255) NULL,
 CONSTRAINT [PK__CFL__5105F123] PRIMARY KEY CLUSTERED 
(
	[List_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CBFT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBFT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NOT NULL,
	[TrxDT] [datetime] NULL,
	[InvNo] [varchar](20) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[InvInfo] [varchar](800) NULL,
	[InvDT] [datetime] NULL,
	[Status] [char](1) NULL,
	[Posted] [bit] NULL,
	[InstNo] [tinyint] NULL,
	[InvInfo2] [varchar](500) NULL,
	[Remarks] [varchar](500) NULL,
	[IsDCNote] [bit] NULL,
	[RefNo] [varchar](20) NULL,
	[LSTax1] [money] NULL,
	[OSTax1] [money] NULL,
	[STax1] [float] NULL,
	[LGross] [money] NULL,
	[OGross] [money] NULL,
	[PymtTerms] [smallint] NULL,
	[DONo] [varchar](20) NULL,
	[XDocID] [int] NULL,
	[GSTIncl] [bit] NOT NULL,
	[Header] [varchar](500) NULL,
	[CustRef] [varchar](50) NULL,
	[DONotes] [varchar](500) NULL,
	[IsAuto] [bit] NOT NULL,
 CONSTRAINT [PK_CBFT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCMF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocNo] [int] NOT NULL,
	[UDNo] [varchar](50) NULL,
	[DocType] [char](1) NULL,
	[AccEntry] [bit] NULL,
	[AccType] [char](1) NULL,
	[OldDocNo] [int] NULL,
	[CustID] [int] NOT NULL,
	[CustName] [varchar](200) NULL,
	[G200] [int] NOT NULL,
	[G203] [int] NULL,
	[Add1] [varchar](100) NULL,
	[Add2] [varchar](100) NULL,
	[Add3] [varchar](100) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[ZIP] [varchar](10) NULL,
	[LUAID] [int] NULL,
	[State] [int] NULL,
	[G204] [int] NULL,
	[TS] [char](1) NOT NULL,
	[SS] [char](1) NOT NULL,
	[PhO] [varchar](100) NULL,
	[PhH] [varchar](100) NULL,
	[PhM] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Sales] [int] NOT NULL,
	[Period] [smallint] NULL,
	[EffDT] [datetime] NULL,
	[ExpDT] [datetime] NULL,
	[EndEffDT] [datetime] NULL,
	[EndExpDT] [datetime] NULL,
	[DocDT] [datetime] NULL,
	[Contractor] [int] NULL,
	[PrintPDA] [bit] NULL,
	[Contact] [nvarchar](200) NULL,
	[AccMth] [int] NULL,
	[EnterBy] [varchar](12) NULL,
	[UpdateBy] [varchar](12) NULL,
	[InputDT] [datetime] NULL,
	[UpdateDT] [datetime] NULL,
	[PrintBy] [varchar](12) NULL,
	[PrintNo] [int] NULL,
	[PrintDT] [datetime] NULL,
	[CCAmt] [char](3) NULL,
	[ERAmt] [float] NULL,
	[OldUDNo] [varchar](20) NULL,
	[SysType] [varchar](1) NULL,
	[IsRenewal] [bit] NULL,
	[XDocNo] [int] NULL,
	[TPPClass] [int] NULL,
	[TPPNCB] [float] NULL,
	[Grade] [int] NULL,
	[Remarks] [varchar](800) NULL,
	[OGID] [int] NULL,
	[scf_title] [varchar](100) NULL,
	[scf_maincon] [varchar](100) NULL,
	[scf_subcon] [varchar](100) NULL,
	[scf_attn] [varchar](100) NULL,
	[scf_SubDT] [smalldatetime] NULL,
	[SaveTS] [datetime] NULL,
	[SaveUID] [varchar](12) NULL,
	[G229] [int] NULL,
	[PymtTerms] [int] NULL,
	[AMLID] [int] NULL,
	[Origin] [varchar](100) NULL,
	[PONo] [varchar](100) NULL,
	[RenNo] [smallint] NOT NULL,
 CONSTRAINT [PK_QCMF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLSA]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLSA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLSID] [int] NULL,
	[G202] [int] NULL,
	[Remarks] [varchar](255) NULL,
	[G201] [int] NULL,
	[G199] [int] NULL,
	[Tag] [varchar](100) NULL,
	[Qty] [float] NOT NULL,
	[AQty] [float] NOT NULL,
 CONSTRAINT [PK_CLSA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TDF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TDF](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocType] [char](1) NOT NULL,
	[DocNo] [bigint] NOT NULL,
	[AccID] [bigint] NOT NULL,
	[XDocNo] [int] NOT NULL,
	[InstNo] [smallint] NOT NULL,
	[AccType] [char](1) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[Desc] [varchar](100) NULL,
 CONSTRAINT [aaaaaTDF_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SCF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NOT NULL,
	[AMFID] [int] NOT NULL,
	[Nationality] [varchar](50) NULL,
	[WPNo] [varchar](50) NULL,
	[WPExpDT] [smalldatetime] NULL,
	[VehNo] [varchar](20) NULL,
	[FinNo] [varchar](50) NULL,
	[SOCIDNo] [varchar](50) NULL,
	[SOCExpDT] [smalldatetime] NULL,
 CONSTRAINT [PK_SCF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QSD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QSD](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[QSTID] [bigint] NOT NULL,
	[ver] [int] NOT NULL,
	[Diff] [varchar](8000) NOT NULL,
	[DT] [datetime] NOT NULL,
 CONSTRAINT [PK_QSD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCLC]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCLC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[ProdID] [int] NOT NULL,
	[G209] [int] NULL,
	[Qty] [real] NOT NULL,
	[Freq] [smallint] NULL,
	[Price] [money] NULL,
	[TotalPrice] [money] NULL,
 CONSTRAINT [PK_QCLC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QPF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QPF](
	[ID] [int] NOT NULL,
	[ProdType] [int] NULL,
	[SysType] [smallint] NULL,
	[AppType] [smallint] NULL,
	[PropType] [int] NULL,
	[Coring] [float] NULL,
	[LMeter] [real] NULL,
	[LabourNor] [float] NULL,
	[LabourSun] [float] NULL,
	[LabourPub] [float] NULL,
	[LabourNorOT] [float] NULL,
	[LabourSunOT] [float] NULL,
	[LabourPubOT] [float] NULL,
	[LabourNorOTX] [float] NULL,
	[LabourSunOTX] [float] NULL,
	[LabourPubOTX] [float] NULL,
	[Renewal] [real] NULL,
	[HRStorey] [smallint] NULL,
	[HRRate] [int] NULL,
	[Premise] [float] NULL,
	[Lentrek] [float] NULL,
	[MinTrip] [smallint] NULL,
	[ExtraTrip] [float] NULL,
	[MinFumigant] [smallint] NULL,
	[Fumigant] [float] NULL,
	[Ventilation] [float] NULL,
	[MinVentilation] [smallint] NULL,
	[ExtraVentilation] [smallint] NULL,
	[ExtraVentilationCost] [float] NULL,
	[LabourVentilation] [float] NULL,
	[WaitTime] [float] NULL,
	[ExpoTime] [smallint] NULL,
	[LabourNorSub] [bit] NOT NULL,
	[LabourSunSub] [bit] NOT NULL,
	[LabourPubSub] [bit] NOT NULL,
	[EffDT] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INFU]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[INFID] [int] NOT NULL,
	[UserID] [varchar](12) NOT NULL,
	[Mode] [char](1) NULL,
 CONSTRAINT [PK_INFU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UGA]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UGA](
	[GID] [int] NOT NULL,
	[UID] [char](12) NOT NULL,
 CONSTRAINT [PK_UGA] PRIMARY KEY CLUSTERED 
(
	[GID] ASC,
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCCT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCCT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NOT NULL,
	[Text1] [nvarchar](100) NULL,
	[Text2] [nvarchar](100) NULL,
	[Text3] [nvarchar](100) NULL,
	[Text4] [nvarchar](100) NULL,
	[Text5] [nvarchar](100) NULL,
	[CertType] [varchar](5) NULL,
	[SerialNo] [varchar](20) NULL,
	[IssuanceDT] [datetime] NULL,
	[EffDT] [datetime] NULL,
	[ExpDT] [datetime] NULL,
	[TS] [varchar](1) NULL,
	[CertFormat] [smallint] NULL,
	[ReceivedDT] [datetime] NULL,
	[WarrantyYear] [smallint] NULL,
	[NoOfCopy] [smallint] NULL,
	[DeliveryMethod] [int] NULL,
 CONSTRAINT [PK_QCCT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSA]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CSIID] [int] NOT NULL,
	[G201] [int] NULL,
	[G202] [int] NULL,
	[Remarks] [varchar](100) NULL,
	[Status] [char](1) NULL,
	[G199] [int] NULL,
	[Tag] [varchar](100) NULL,
	[Qty] [float] NOT NULL,
	[AQty] [float] NOT NULL,
 CONSTRAINT [PK_CSA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS](
	[ID] [char](25) NOT NULL,
	[Text] [varchar](2000) NULL,
	[Number] [float] NULL,
	[DT] [datetime] NULL,
 CONSTRAINT [aaaaaSYS_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [Number]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [Number] ON [dbo].[SYS] 
(
	[Number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AML]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AML](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ACCID] [int] NOT NULL,
	[Status] [char](1) NULL,
	[G205] [int] NOT NULL,
	[Add1] [varchar](100) NULL,
	[Add2] [varchar](100) NULL,
	[Add3] [varchar](100) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[LUAID] [int] NULL,
	[G216] [int] NULL,
	[Contact] [varchar](50) NULL,
	[Gender] [char](1) NULL,
	[ZIP] [varchar](10) NULL,
	[State] [int] NULL,
	[PhO] [varchar](100) NULL,
	[PhH] [varchar](100) NULL,
	[PhM] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Name] [nvarchar](200) NULL,
	[ContactAsst] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Website] [varchar](100) NULL,
 CONSTRAINT [PK_AML] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_AML_7_683149479__K1_K11]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_AML_7_683149479__K1_K11] ON [dbo].[AML] 
(
	[ID] ASC,
	[G216] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_AML_7_683149479__K2_1_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_AML_7_683149479__K2_1_5] ON [dbo].[AML] 
(
	[ACCID] ASC
)
INCLUDE ( [ID],
[Add1]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_683149479_11_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_683149479_11_1] ON [dbo].[AML]([G216], [ID])
GO
/****** Object:  Statistic [_dta_stat_683149479_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_683149479_3] ON [dbo].[AML]([Status])
GO
/****** Object:  Table [dbo].[CMR]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NULL,
	[DocDT] [datetime] NULL,
	[EffDT] [datetime] NULL,
	[ExpDT] [datetime] NULL,
	[Period] [smallint] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[Remarks] [varchar](800) NULL,
	[UserID] [varchar](12) NULL,
	[RptID] [smallint] NULL,
	[Freq] [smallint] NULL,
 CONSTRAINT [PK_CMR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NOT NULL,
	[UserID] [char](12) NOT NULL,
	[EnterDT] [datetime] NOT NULL,
	[Remarks] [varchar](8000) NULL,
	[G226] [int] NULL,
 CONSTRAINT [PK_CFD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[APM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APM](
	[APID] [int] NOT NULL,
	[ModID] [smallint] NOT NULL,
	[OGID] [int] NOT NULL,
	[FinYr] [varchar](15) NULL,
	[StartDT] [datetime] NULL,
	[EndDT] [datetime] NULL,
	[Closed] [bit] NOT NULL,
	[YDigit] [smallint] NULL,
 CONSTRAINT [aaaaaAPM_PK] PRIMARY KEY NONCLUSTERED 
(
	[APID] ASC,
	[ModID] ASC,
	[OGID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CBDT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBDT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CBFID] [int] NOT NULL,
	[CLDNo] [smallint] NULL,
	[CLBNo] [smallint] NULL,
	[Desc] [varchar](500) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[OPrice] [money] NULL,
	[LPrice] [money] NULL,
	[Qty] [smallint] NULL,
	[UOM] [int] NULL,
	[StockID] [int] NULL,
	[RefNo] [varchar](50) NULL,
	[Rates] [float] NULL,
	[Freq] [smallint] NULL,
 CONSTRAINT [PK_CBDT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AMF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccNo] [varchar](50) NULL,
	[Status] [char](1) NULL,
	[Name] [nvarchar](200) NULL,
	[Abbrev] [varchar](15) NULL,
	[CSince] [datetime] NULL,
	[OPhone] [varchar](100) NULL,
	[HPhone] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Contact] [nvarchar](200) NULL,
	[Add1] [varchar](100) NULL,
	[Add2] [varchar](100) NULL,
	[Add3] [varchar](100) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[NRIC] [varchar](15) NULL,
	[DOB] [datetime] NULL,
	[Gender] [char](1) NULL,
	[G30] [int] NULL,
	[G31] [int] NULL,
	[G32] [int] NULL,
	[G33] [int] NULL,
	[G34] [int] NULL,
	[G35] [int] NULL,
	[G55_1] [int] NULL,
	[G55_2] [int] NULL,
	[BActNo1] [varchar](20) NULL,
	[BActNo2] [varchar](20) NULL,
	[Handler] [int] NULL,
	[Asst] [int] NULL,
	[SubBroker] [varchar](12) NULL,
	[CurrCode] [varchar](4) NULL,
	[GroupAcc] [varchar](6) NULL,
	[OGID] [int] NULL,
	[RefAct] [int] NULL,
	[HoldAct] [varchar](12) NULL,
	[GLAct] [char](10) NULL,
	[GreetCNY] [bit] NULL,
	[GreetChr] [bit] NULL,
	[GreetDpv] [bit] NULL,
	[GreetHR] [bit] NULL,
	[Notes] [varchar](250) NULL,
	[BsReg] [varchar](20) NULL,
	[FinanceCo] [varchar](50) NULL,
	[FinanceBr] [varchar](50) NULL,
	[Ethnic] [varchar](20) NULL,
	[Occupation] [varchar](50) NULL,
	[State] [int] NULL,
	[City] [varchar](30) NULL,
	[Zip] [varchar](10) NULL,
	[Salutation] [varchar](15) NULL,
	[AreaID] [int] NULL,
	[OldNRIC] [varchar](15) NULL,
	[AcctContact] [varchar](255) NULL,
	[AMLID] [int] NULL,
	[G101] [int] NULL,
	[CrLimit] [money] NULL,
	[KITDays] [int] NOT NULL,
	[G180] [int] NULL,
	[G204] [int] NULL,
	[ContactAsst] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Website] [varchar](100) NULL,
	[HoldAccID] [int] NULL,
	[IntroducerID] [int] NULL,
	[SCC] [varchar](50) NULL,
 CONSTRAINT [PK_AMF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_AMF_7_779149821__K1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_AMF_7_779149821__K1] ON [dbo].[AMF] 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [iAsst_AMF]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [iAsst_AMF] ON [dbo].[AMF] 
(
	[Asst] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [iHandler_AMF]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [iHandler_AMF] ON [dbo].[AMF] 
(
	[Handler] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [iRefAct_AMF]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [iRefAct_AMF] ON [dbo].[AMF] 
(
	[RefAct] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_779149821_1_31_2_33]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_1_31_2_33] ON [dbo].[AMF]([ID], [Handler], [AccNo], [SubBroker])
GO
/****** Object:  Statistic [_dta_stat_779149821_1_31_33_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_1_31_33_2] ON [dbo].[AMF]([ID], [Handler], [SubBroker], [AccNo])
GO
/****** Object:  Statistic [_dta_stat_779149821_31_57_2_33]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_31_57_2_33] ON [dbo].[AMF]([Handler], [AMLID], [AccNo], [SubBroker])
GO
/****** Object:  Statistic [_dta_stat_779149821_31_57_2_33_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_31_57_2_33_1] ON [dbo].[AMF]([Handler], [AMLID], [AccNo], [SubBroker], [ID])
GO
/****** Object:  Statistic [_dta_stat_779149821_33_2_1_31_21]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_33_2_1_31_21] ON [dbo].[AMF]([SubBroker], [AccNo], [ID], [Handler], [G30])
GO
/****** Object:  Statistic [_dta_stat_779149821_33_57_2_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_33_57_2_1] ON [dbo].[AMF]([SubBroker], [AMLID], [AccNo], [ID])
GO
/****** Object:  Statistic [_dta_stat_779149821_42]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_42] ON [dbo].[AMF]([GreetDpv])
GO
/****** Object:  Statistic [_dta_stat_779149821_57_1_31_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_57_1_31_2] ON [dbo].[AMF]([AMLID], [ID], [Handler], [AccNo])
GO
/****** Object:  Statistic [_dta_stat_779149821_57_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_57_2] ON [dbo].[AMF]([AMLID], [AccNo])
GO
/****** Object:  Statistic [_dta_stat_779149821_57_2_33_1_31_21]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_57_2_33_1_31_21] ON [dbo].[AMF]([AMLID], [AccNo], [SubBroker], [ID], [Handler], [G30])
GO
/****** Object:  Statistic [_dta_stat_779149821_57_33]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_779149821_57_33] ON [dbo].[AMF]([AMLID], [SubBroker])
GO
/****** Object:  Table [dbo].[MSG]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SrcID] [int] NULL,
	[G204] [int] NULL,
	[Abbrev] [varchar](50) NULL,
	[UserID] [char](12) NOT NULL,
	[CreateDT] [datetime] NOT NULL,
	[UpdateDT] [datetime] NULL,
	[UpdateUID] [char](12) NULL,
	[Subject] [varchar](200) NULL,
	[Notes] [varchar](500) NULL,
	[OGID] [int] NOT NULL,
	[SS] [char](1) NULL,
 CONSTRAINT [PK_MSG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CCT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NOT NULL,
	[Text1] [nvarchar](100) NULL,
	[Text2] [nvarchar](100) NULL,
	[Text3] [nvarchar](100) NULL,
	[Text4] [nvarchar](100) NULL,
	[Text5] [nvarchar](100) NULL,
	[CertType] [varchar](5) NULL,
	[SerialNo] [varchar](20) NULL,
	[IssuanceDT] [datetime] NULL,
	[EffDT] [datetime] NULL,
	[ExpDT] [datetime] NULL,
	[TS] [varchar](1) NULL,
	[CertFormat] [smallint] NULL,
	[ReceivedDT] [datetime] NULL,
	[WarrantyYear] [smallint] NULL,
	[NoOfCopy] [smallint] NULL,
	[DeliveryMethod] [int] NULL,
 CONSTRAINT [PK_CCT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TSTT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSTT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TSTFID] [int] NOT NULL,
	[AMFID] [int] NULL,
	[Qty] [float] NULL,
	[G209] [int] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
 CONSTRAINT [PK_TSTT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CBT]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TempID] [int] NULL,
	[ItemName] [varchar](255) NULL,
	[OPrice] [money] NULL,
	[LPrice] [money] NULL,
	[Qty] [smallint] NULL,
	[UOM] [int] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[Title] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OGA]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OGA](
	[OGID] [int] NOT NULL,
	[UID] [char](12) NULL,
	[GID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AOFS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AOFS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AMFID] [int] NOT NULL,
	[PDSID] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[InstNo] [int] NULL,
	[TrxSeq] [int] NOT NULL,
	[G2] [int] NOT NULL,
	[G250] [int] NOT NULL,
	[SrcID] [int] NOT NULL,
	[Qty] [real] NOT NULL,
	[AQty] [real] NULL,
	[XQty] [real] NULL,
	[AOFSID] [int] NULL,
	[OUPrice] [money] NULL,
	[LUPrice] [money] NULL,
	[OUCost] [money] NULL,
	[LUCost] [money] NULL,
	[Desc] [varchar](500) NOT NULL,
	[TrxDT] [datetime] NULL,
	[AccMth] [int] NULL,
	[OGID] [int] NULL,
 CONSTRAINT [PK_AOFS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GAF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GAF](
	[GroupID] [int] NOT NULL,
	[AccID] [int] NOT NULL,
	[SID] [int] NOT NULL,
 CONSTRAINT [aaaaaGAF_PK] PRIMARY KEY NONCLUSTERED 
(
	[GroupID] ASC,
	[AccID] ASC,
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TSTP]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSTP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TSTFID] [int] NOT NULL,
	[G231] [int] NOT NULL,
	[Rate] [float] NOT NULL,
	[CCID] [int] NOT NULL,
	[ER] [float] NOT NULL,
	[OAmt] [money] NOT NULL,
	[LAmt] [money] NOT NULL,
	[DrAMF] [int] NOT NULL,
	[DrGL] [int] NOT NULL,
	[CrAMF] [int] NOT NULL,
	[CrGL] [int] NOT NULL,
	[FromLine] [int] NULL,
 CONSTRAINT [PK_TSTP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCLSV]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCLSV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[DTStamp] [datetime] NOT NULL,
	[G206] [int] NULL,
	[G209] [int] NULL,
	[ProdID] [int] NULL,
	[Qty] [real] NOT NULL,
	[Freq] [int] NULL,
	[UPrice] [money] NOT NULL,
	[Remarks] [varchar](255) NULL,
	[Amt] [money] NULL,
	[DeltaQty] [float] NULL,
	[DeltaAmt] [money] NULL,
	[FreqNo] [smallint] NULL,
	[DeltaFreqNo] [smallint] NULL,
	[SCC] [varchar](50) NULL,
	[Title] [varchar](100) NULL,
	[OSP] [money] NULL,
	[LSP] [money] NULL,
	[CommP] [float] NULL,
	[OComm] [money] NULL,
	[LComm] [money] NULL,
	[Descp] [varchar](255) NULL,
 CONSTRAINT [PK_QCLSV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CDF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDF](
	[OGID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[CompReg] [varchar](15) NULL,
	[Description] [varchar](200) NULL,
	[Add1] [varchar](50) NULL,
	[Add2] [varchar](50) NULL,
	[Add3] [varchar](50) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[Phone] [varchar](100) NULL,
	[Fax] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[RPT1] [varchar](200) NULL,
	[RPT2] [varchar](200) NULL,
	[RPT3] [varchar](200) NULL,
	[Contact] [varchar](100) NULL,
	[Position] [varchar](100) NULL,
	[Motto] [varchar](100) NULL,
	[WebSite] [varchar](100) NULL,
	[FreePhone] [varchar](20) NULL,
	[Bank] [varchar](50) NULL,
 CONSTRAINT [PK_CDF] PRIMARY KEY CLUSTERED 
(
	[OGID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCBF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCBF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NOT NULL,
	[TrxDT] [datetime] NULL,
	[InvNo] [varchar](20) NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[InvInfo] [varchar](800) NULL,
	[InvDT] [datetime] NULL,
	[Status] [char](1) NULL,
	[Posted] [bit] NULL,
	[InstNo] [tinyint] NULL,
	[InvInfo2] [varchar](500) NULL,
	[Remarks] [varchar](500) NULL,
	[IsDCNote] [bit] NULL,
	[RefNo] [varchar](20) NULL,
	[LSTax1] [money] NULL,
	[OSTax1] [money] NULL,
	[STax1] [float] NULL,
	[LGross] [money] NULL,
	[OGross] [money] NULL,
	[PymtTerms] [int] NULL,
	[DONo] [varchar](20) NULL,
	[XDocID] [int] NULL,
	[GSTIncl] [bit] NOT NULL,
	[Header] [varchar](500) NULL,
	[CustRef] [varchar](50) NULL,
	[DONotes] [varchar](500) NULL,
	[IsAuto] [bit] NOT NULL,
	[G2] [int] NULL,
 CONSTRAINT [PK_QCBF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLC]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[ProdID] [int] NOT NULL,
	[G209] [int] NULL,
	[Qty] [real] NOT NULL,
	[Freq] [smallint] NULL,
	[Price] [money] NULL,
	[TotalPrice] [money] NULL,
 CONSTRAINT [PK_CLC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UAF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UAF](
	[UserID] [varchar](12) NOT NULL,
	[AccessCode] [int] NOT NULL,
 CONSTRAINT [aaaaaUAF_PK] PRIMARY KEY NONCLUSTERED 
(
	[UserID] ASC,
	[AccessCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLSV]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLSV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[DTStamp] [datetime] NOT NULL,
	[G206] [int] NULL,
	[G209] [int] NULL,
	[ProdID] [int] NULL,
	[Qty] [real] NOT NULL,
	[Freq] [int] NULL,
	[UPrice] [money] NOT NULL,
	[Remarks] [varchar](255) NULL,
	[Amt] [money] NULL,
	[DeltaQty] [float] NULL,
	[DeltaAmt] [money] NULL,
	[DeltaFreqNo] [smallint] NULL,
	[FreqNo] [smallint] NULL,
	[SCC] [varchar](50) NULL,
	[Title] [varchar](100) NULL,
	[OSP] [money] NULL,
	[LSP] [money] NULL,
	[CommP] [float] NULL,
	[OComm] [money] NULL,
	[LComm] [money] NULL,
	[Descp] [varchar](255) NULL,
 CONSTRAINT [PK_CLSV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TSTS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TSTFID] [int] NOT NULL,
	[TSTDID] [int] NOT NULL,
	[SNo] [varchar](50) NOT NULL,
	[CSSID] [int] NOT NULL,
	[Amt] [money] NULL,
 CONSTRAINT [PK_TSTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFV]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFV](
	[Val_ID] [int] NOT NULL,
	[Val_Module] [varchar](5) NULL,
	[Val_DocID] [int] NULL,
	[Val_CFFID] [int] NULL,
	[Val_Text] [varchar](255) NULL,
	[Val_Number] [float] NULL,
	[Val_Date] [datetime] NULL,
	[Val_List] [int] NULL,
 CONSTRAINT [PK__CFV__66F53242] PRIMARY KEY CLUSTERED 
(
	[Val_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[StartDT] [datetime] NOT NULL,
	[Duration] [float] NULL,
	[G207] [int] NOT NULL,
	[G208] [int] NOT NULL,
	[OPV] [smallmoney] NULL,
	[LPV] [smallmoney] NULL,
	[Remarks] [varchar](800) NULL,
	[ScheduleDT] [datetime] NULL,
	[InvNo] [varchar](20) NULL,
	[Billable] [bit] NULL,
	[CFromDT] [datetime] NULL,
	[SRNo] [varchar](30) NULL,
	[AreaCompleted] [float] NULL,
	[HolesCompleted] [smallint] NULL,
	[Old] [bit] NOT NULL,
	[COD] [bit] NOT NULL,
	[AutoFlag] [char](1) NULL,
	[IntNotes] [varchar](255) NULL,
	[Confirmed] [bit] NOT NULL,
	[InvNoT] [varchar](12) NULL,
	[Contact] [varchar](50) NULL,
	[EndDT] [datetime] NULL,
	[AckType] [smallint] NULL,
	[AckID] [int] NULL,
	[TS] [int] NULL,
	[G198] [int] NULL,
	[NAppDT] [datetime] NULL,
	[NAppMode] [char](1) NULL,
	[NAppDuration] [float] NULL,
	[NAppConfirm] [bit] NULL,
	[OCharge] [money] NULL,
	[LCharge] [money] NULL,
	[NAppG207] [int] NULL,
	[PayMode] [int] NULL,
	[PayNo] [varchar](50) NULL,
	[PayAmt] [money] NULL,
	[Comment] [varchar](500) NULL,
	[PrNo] [smallint] NULL,
	[PrDT] [datetime] NULL,
	[PrUID] [int] NULL,
	[UpUID] [int] NULL,
	[UpDT] [datetime] NULL,
	[Hist] [bit] NULL,
	[OldCSSID] [int] NULL,
	[NextCSSID] [int] NULL,
	[CMFID] [int] NULL,
	[TSTFID] [int] NULL,
	[SCC] [varchar](50) NULL,
 CONSTRAINT [PK_CSS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [IX_CSS]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [IX_CSS] ON [dbo].[CSS] 
(
	[CLDID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_CSS_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [IX_CSS_1] ON [dbo].[CSS] 
(
	[ScheduleDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JDF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JDF](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[JID] [bigint] NOT NULL,
	[JNo] [int] NOT NULL,
	[AccID] [bigint] NOT NULL,
	[AccType] [char](1) NULL,
	[DCFlag] [char](1) NULL,
	[CC] [char](3) NULL,
	[ER] [float] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
 CONSTRAINT [aaaaaJDF_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ENS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Cron] [varchar](100) NOT NULL,
	[From] [varchar](200) NOT NULL,
	[To] [varchar](200) NOT NULL,
	[CC] [varchar](200) NOT NULL,
	[BCC] [varchar](200) NOT NULL,
	[Subject] [varchar](200) NOT NULL,
	[Template] [varchar](2000) NOT NULL,
	[TempType] [char](1) NOT NULL,
	[SQL] [varchar](4000) NOT NULL,
 CONSTRAINT [PK_ENS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PDP]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PDSID] [int] NOT NULL,
	[EffDT] [datetime] NULL,
	[MinQty] [float] NULL,
	[CC] [char](3) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_PDP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ACC]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACC](
	[AccID] [int] NOT NULL,
	[Desc] [varchar](50) NULL,
	[G1] [int] NULL,
 CONSTRAINT [aaaaaACC_PK] PRIMARY KEY NONCLUSTERED 
(
	[AccID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCLD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCLD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NOT NULL,
	[G205] [int] NOT NULL,
	[Add1] [varchar](100) NULL,
	[Add2] [varchar](100) NULL,
	[Add3] [varchar](100) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[Freq] [smallint] NOT NULL,
	[G208] [int] NOT NULL,
	[G203] [int] NOT NULL,
	[LUAID] [int] NULL,
	[OInitialPV] [money] NULL,
	[LInitialPV] [money] NULL,
	[OSubPV] [money] NULL,
	[LSubPV] [money] NULL,
	[Billing] [smallint] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[Contact] [nvarchar](200) NULL,
	[AreaCovered] [varchar](50) NULL,
	[Instruction] [varchar](800) NULL,
	[ZIP] [varchar](10) NULL,
	[State] [int] NULL,
	[PhO] [varchar](100) NULL,
	[PhH] [varchar](100) NULL,
	[PhM] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Map] [varchar](50) NULL,
	[FreqList] [varchar](100) NULL,
	[XDocID] [int] NULL,
	[G212] [int] NULL,
	[ODownPymt] [money] NULL,
	[LDownPymt] [money] NULL,
	[DownPymtPct] [float] NULL,
	[PaymentMode] [int] NULL,
	[Title] [varchar](50) NULL,
	[FixTech] [int] NULL,
	[SvcDesc] [varchar](255) NULL,
	[EffDT] [datetime] NULL,
	[ExpDT] [datetime] NULL,
	[Renewable] [bit] NULL,
	[RetentionP] [float] NULL,
	[ORetention] [money] NULL,
	[LRetention] [money] NULL,
	[AgReceivedDT] [datetime] NULL,
	[AgReceivedBy] [varchar](50) NULL,
	[AMLID] [int] NULL,
	[CommP] [float] NULL,
	[OComm] [money] NULL,
	[LComm] [money] NULL,
	[EstTime] [datetime] NULL,
	[EstDuration] [float] NULL,
	[Period] [smallint] NULL,
	[AMFID] [int] NULL,
	[AB_TSTFID] [int] NULL,
	[PL_TSTFID] [int] NULL,
 CONSTRAINT [PK_QCLD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BTM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTM](
	[BID] [varchar](6) NOT NULL,
	[Desc] [varchar](50) NULL,
 CONSTRAINT [aaaaaBTM_PK] PRIMARY KEY NONCLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[APC]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APC](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OGID] [bigint] NOT NULL,
	[AccID] [bigint] NOT NULL,
	[APID] [int] NOT NULL,
	[CC] [char](3) NULL,
	[ER] [real] NULL,
	[ODr] [money] NULL,
	[LDr] [money] NULL,
	[OCr] [money] NULL,
	[LCr] [money] NULL,
	[OBal] [money] NULL,
	[LBal] [money] NULL,
 CONSTRAINT [PK_APC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QSM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QSM](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[ver] [int] NOT NULL,
	[UGC] [varchar](30) NOT NULL,
	[Main] [bit] NOT NULL,
 CONSTRAINT [PK_QSM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocNo] [int] NOT NULL,
	[UDNo] [varchar](50) NULL,
	[DocType] [char](1) NULL,
	[AccEntry] [bit] NULL,
	[AccType] [char](1) NULL,
	[OldDocNo] [int] NULL,
	[CustID] [int] NOT NULL,
	[CustName] [varchar](200) NULL,
	[G200] [int] NOT NULL,
	[G203] [int] NULL,
	[Add1] [varchar](100) NULL,
	[Add2] [varchar](100) NULL,
	[Add3] [varchar](100) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[ZIP] [varchar](10) NULL,
	[LUAID] [int] NULL,
	[State] [int] NULL,
	[G204] [int] NULL,
	[TS] [char](1) NOT NULL,
	[SS] [char](1) NOT NULL,
	[PhO] [varchar](100) NULL,
	[PhH] [varchar](100) NULL,
	[PhM] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Sales] [int] NOT NULL,
	[Period] [smallint] NULL,
	[EffDT] [datetime] NULL,
	[ExpDT] [datetime] NULL,
	[EndEffDT] [datetime] NULL,
	[EndExpDT] [datetime] NULL,
	[DocDT] [datetime] NULL,
	[Contractor] [int] NULL,
	[PrintPDA] [bit] NULL,
	[Contact] [nvarchar](200) NULL,
	[AccMth] [int] NULL,
	[EnterBy] [varchar](12) NULL,
	[UpdateBy] [varchar](12) NULL,
	[InputDT] [datetime] NULL,
	[UpdateDT] [datetime] NULL,
	[PrintBy] [varchar](12) NULL,
	[PrintNo] [int] NULL,
	[PrintDT] [datetime] NULL,
	[CCAmt] [char](3) NULL,
	[ERAmt] [float] NULL,
	[OldUDNo] [varchar](20) NULL,
	[SysType] [varchar](1) NULL,
	[IsRenewal] [bit] NULL,
	[XDocNo] [int] NULL,
	[TPPClass] [int] NULL,
	[TPPNCB] [float] NULL,
	[Grade] [int] NULL,
	[Remarks] [varchar](800) NULL,
	[OGID] [int] NULL,
	[scf_title] [varchar](100) NULL,
	[scf_maincon] [varchar](100) NULL,
	[scf_subcon] [varchar](100) NULL,
	[scf_attn] [varchar](100) NULL,
	[scf_SubDT] [smalldatetime] NULL,
	[SaveTS] [datetime] NULL,
	[SaveUID] [varchar](12) NULL,
	[G229] [int] NULL,
	[PymtTerms] [int] NULL,
	[AMLID] [int] NULL,
	[Origin] [varchar](100) NULL,
	[PONo] [varchar](100) NULL,
	[RenNo] [smallint] NOT NULL,
 CONSTRAINT [PK_CMF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_CMF_7_306100131__K1_K10_K11_K30_3_9_12_13_14_17_34_37]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_CMF_7_306100131__K1_K10_K11_K30_3_9_12_13_14_17_34_37] ON [dbo].[CMF] 
(
	[ID] ASC,
	[G200] ASC,
	[G203] ASC,
	[EffDT] ASC
)
INCLUDE ( [UDNo],
[CustName],
[Add1],
[Add2],
[Add3],
[ZIP],
[DocDT],
[Contact]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_CMF_7_306100131__K1_K34_3_9_48]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_CMF_7_306100131__K1_K34_3_9_48] ON [dbo].[CMF] 
(
	[ID] ASC,
	[DocDT] ASC
)
INCLUDE ( [UDNo],
[CustName],
[OldUDNo]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_CMF_7_306100131__K30D_K34_1_3_9_10_11_12_13_14_17_37]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_CMF_7_306100131__K30D_K34_1_3_9_10_11_12_13_14_17_37] ON [dbo].[CMF] 
(
	[EffDT] DESC,
	[DocDT] ASC
)
INCLUDE ( [ID],
[UDNo],
[CustName],
[G200],
[G203],
[Add1],
[Add2],
[Add3],
[ZIP],
[Contact]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_306100131_1_34_10]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_306100131_1_34_10] ON [dbo].[CMF]([ID], [DocDT], [G200])
GO
/****** Object:  Statistic [_dta_stat_306100131_10_11_1_34_30]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_306100131_10_11_1_34_30] ON [dbo].[CMF]([G200], [G203], [ID], [DocDT], [EffDT])
GO
/****** Object:  Statistic [_dta_stat_306100131_22_7]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_306100131_22_7] ON [dbo].[CMF]([SS], [OldDocNo])
GO
/****** Object:  Statistic [_dta_stat_306100131_34_10_11]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_306100131_34_10_11] ON [dbo].[CMF]([DocDT], [G200], [G203])
GO
/****** Object:  Table [dbo].[CLE]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[FromDT] [datetime] NOT NULL,
	[ToDT] [datetime] NOT NULL,
	[Reason] [varchar](250) NULL,
 CONSTRAINT [PK_CLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGM](
	[GID] [int] NOT NULL,
	[SID] [int] NULL,
	[UGC] [varchar](30) NULL,
	[Desc] [varchar](100) NULL,
	[Abbrev] [varchar](20) NULL,
	[Val] [int] NULL,
	[SCC] [varchar](50) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [aaaaaSGM_PK] PRIMARY KEY NONCLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_SGM_c_7_1669580986__K2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE CLUSTERED INDEX [_dta_index_SGM_c_7_1669580986__K2] ON [dbo].[SGM] 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1474104292__K2_K1_K8_3_4_5_6_7]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1474104292__K2_K1_K8_3_4_5_6_7] ON [dbo].[SGM] 
(
	[SID] ASC,
	[GID] ASC,
	[Seq] ASC
)
INCLUDE ( [UGC],
[Desc],
[Abbrev],
[Val],
[SCC]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1474104292__K2_K8_K4_1_7]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1474104292__K2_K8_K4_1_7] ON [dbo].[SGM] 
(
	[SID] ASC,
	[Seq] ASC,
	[Desc] ASC
)
INCLUDE ( [GID],
[SCC]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1669580986__K1_2_3_4_5_6_7_8]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1669580986__K1_2_3_4_5_6_7_8] ON [dbo].[SGM] 
(
	[GID] ASC
)
INCLUDE ( [SID],
[UGC],
[Desc],
[Abbrev],
[Val],
[SCC],
[Seq]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1669580986__K1_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1669580986__K1_4] ON [dbo].[SGM] 
(
	[GID] ASC
)
INCLUDE ( [Desc]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1669580986__K1_K2_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1669580986__K1_K2_4] ON [dbo].[SGM] 
(
	[GID] ASC,
	[SID] ASC
)
INCLUDE ( [Desc]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1669580986__K1_K2_K8_3_4_5_6_7]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1669580986__K1_K2_K8_3_4_5_6_7] ON [dbo].[SGM] 
(
	[GID] ASC,
	[SID] ASC,
	[Seq] ASC
)
INCLUDE ( [UGC],
[Desc],
[Abbrev],
[Val],
[SCC]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1669580986__K2_K1_K8_3_4_5_6_7]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1669580986__K2_K1_K8_3_4_5_6_7] ON [dbo].[SGM] 
(
	[SID] ASC,
	[GID] ASC,
	[Seq] ASC
)
INCLUDE ( [UGC],
[Desc],
[Abbrev],
[Val],
[SCC]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_SGM_7_1669580986__K2_K5_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_SGM_7_1669580986__K2_K5_1] ON [dbo].[SGM] 
(
	[SID] ASC,
	[Abbrev] ASC
)
INCLUDE ( [GID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [GID1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [GID1] ON [dbo].[SGM] 
(
	[GID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_1474104292_1_2_6_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_1_2_6_3] ON [dbo].[SGM]([GID], [SID], [Val], [UGC])
GO
/****** Object:  Statistic [_dta_stat_1474104292_1_2_8_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_1_2_8_3] ON [dbo].[SGM]([GID], [SID], [Seq], [UGC])
GO
/****** Object:  Statistic [_dta_stat_1474104292_1_4_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_1_4_2] ON [dbo].[SGM]([GID], [Desc], [SID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_1_5_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_1_5_4] ON [dbo].[SGM]([GID], [Abbrev], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_1_6_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_1_6_4] ON [dbo].[SGM]([GID], [Val], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_2_1_3_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_2_1_3_4] ON [dbo].[SGM]([SID], [GID], [UGC], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_2_1_5_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_2_1_5_4] ON [dbo].[SGM]([SID], [GID], [Abbrev], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_2_1_6_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_2_1_6_4] ON [dbo].[SGM]([SID], [GID], [Val], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_2_1_8_6_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_2_1_8_6_4] ON [dbo].[SGM]([SID], [GID], [Seq], [Val], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_2_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_2_5] ON [dbo].[SGM]([SID], [Abbrev])
GO
/****** Object:  Statistic [_dta_stat_1474104292_2_6_1_5_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_2_6_1_5_4] ON [dbo].[SGM]([SID], [Val], [GID], [Abbrev], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_2_6_8]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_2_6_8] ON [dbo].[SGM]([SID], [Val], [Seq])
GO
/****** Object:  Statistic [_dta_stat_1474104292_3_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_3_1] ON [dbo].[SGM]([UGC], [GID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_3_2_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_3_2_1] ON [dbo].[SGM]([UGC], [SID], [GID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_4_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_4_1] ON [dbo].[SGM]([Desc], [GID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_4_2_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_4_2_3] ON [dbo].[SGM]([Desc], [SID], [UGC])
GO
/****** Object:  Statistic [_dta_stat_1474104292_5_4_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_5_4_2] ON [dbo].[SGM]([Abbrev], [Desc], [SID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_5_4_6_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_5_4_6_2] ON [dbo].[SGM]([Abbrev], [Desc], [Val], [SID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_6_1_5_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_6_1_5_4] ON [dbo].[SGM]([Val], [GID], [Abbrev], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_8_2_1_4]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_8_2_1_4] ON [dbo].[SGM]([Seq], [SID], [GID], [Desc])
GO
/****** Object:  Statistic [_dta_stat_1474104292_8_3_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_8_3_2] ON [dbo].[SGM]([Seq], [UGC], [SID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_8_4_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_8_4_1] ON [dbo].[SGM]([Seq], [Desc], [GID])
GO
/****** Object:  Statistic [_dta_stat_1474104292_8_4_2_6]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1474104292_8_4_2_6] ON [dbo].[SGM]([Seq], [Desc], [SID], [Val])
GO
/****** Object:  Statistic [_dta_stat_1669580986_1_2_8]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1669580986_1_2_8] ON [dbo].[SGM]([GID], [SID], [Seq])
GO
/****** Object:  Statistic [_dta_stat_1669580986_1_6]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1669580986_1_6] ON [dbo].[SGM]([GID], [Val])
GO
/****** Object:  Statistic [_dta_stat_1669580986_2_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1669580986_2_1] ON [dbo].[SGM]([SID], [GID])
GO
/****** Object:  Statistic [_dta_stat_1669580986_2_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1669580986_2_3] ON [dbo].[SGM]([SID], [UGC])
GO
/****** Object:  Statistic [_dta_stat_1669580986_2_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1669580986_2_5] ON [dbo].[SGM]([SID], [Abbrev])
GO
/****** Object:  Statistic [_dta_stat_1669580986_4_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1669580986_4_1] ON [dbo].[SGM]([Desc], [GID])
GO
/****** Object:  Statistic [_dta_stat_1669580986_8_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1669580986_8_2] ON [dbo].[SGM]([Seq], [SID])
GO
/****** Object:  Table [dbo].[AOF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AOF](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccType] [char](1) NOT NULL,
	[AccID] [bigint] NOT NULL,
	[DocNo] [bigint] NOT NULL,
	[InstNo] [tinyint] NOT NULL,
	[TrxSeq] [smallint] NOT NULL,
	[SrcNo] [bigint] NULL,
	[SS] [char](1) NULL,
	[TrxType] [char](1) NULL,
	[Desc] [varchar](100) NULL,
	[DocDT] [datetime] NULL,
	[XDocDT] [datetime] NULL,
	[InputDT] [datetime] NULL,
	[EnterBy] [varchar](50) NULL,
	[CC] [char](3) NULL,
	[ER] [real] NULL,
	[AccMth] [int] NULL,
	[PDDT] [datetime] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[OXAmt] [money] NULL,
	[LXAmt] [money] NULL,
	[Ref1] [varchar](50) NULL,
	[Ref2] [varchar](50) NULL,
	[RefNo] [varchar](25) NULL,
	[OGID] [int] NULL,
	[GLID] [bigint] NULL,
 CONSTRAINT [aaaaaAOF_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_AOF_c_7_1067150847__K3_K6_K5_K7]    Script Date: 01/10/2011 16:20:29 ******/
CREATE CLUSTERED INDEX [_dta_index_AOF_c_7_1067150847__K3_K6_K5_K7] ON [dbo].[AOF] 
(
	[AccID] ASC,
	[InstNo] ASC,
	[DocNo] ASC,
	[TrxSeq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_AOF_7_1067150847__K3_5_6_7_33]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_AOF_7_1067150847__K3_5_6_7_33] ON [dbo].[AOF] 
(
	[AccID] ASC
)
INCLUDE ( [DocNo],
[InstNo],
[TrxSeq],
[LXAmt]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_AOF_7_1067150847__K3_K5_K6_7_33]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_AOF_7_1067150847__K3_K5_K6_7_33] ON [dbo].[AOF] 
(
	[AccID] ASC,
	[DocNo] ASC,
	[InstNo] ASC
)
INCLUDE ( [TrxSeq],
[LXAmt]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_1067150847_3_6]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1067150847_3_6] ON [dbo].[AOF]([AccID], [InstNo])
GO
/****** Object:  Statistic [_dta_stat_1067150847_5_3_6_7]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1067150847_5_3_6_7] ON [dbo].[AOF]([DocNo], [AccID], [InstNo], [TrxSeq])
GO
/****** Object:  Statistic [_dta_stat_1067150847_5_6]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1067150847_5_6] ON [dbo].[AOF]([DocNo], [InstNo])
GO
/****** Object:  Statistic [_dta_stat_1067150847_5_6_3]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1067150847_5_6_3] ON [dbo].[AOF]([DocNo], [InstNo], [AccID])
GO
/****** Object:  Table [dbo].[AGM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGM](
	[OGID] [int] NOT NULL,
	[AccNo] [varchar](12) NOT NULL,
	[GLCode] [char](10) NULL,
 CONSTRAINT [aaaaaAGM_PK] PRIMARY KEY NONCLUSTERED 
(
	[OGID] ASC,
	[AccNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLD]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CMFID] [int] NOT NULL,
	[G205] [int] NOT NULL,
	[Add1] [varchar](100) NULL,
	[Add2] [varchar](100) NULL,
	[Add3] [varchar](100) NULL,
	[Add4] [varchar](50) NULL,
	[Add5] [varchar](50) NULL,
	[Freq] [smallint] NOT NULL,
	[G208] [int] NOT NULL,
	[G203] [int] NOT NULL,
	[LUAID] [int] NULL,
	[OInitialPV] [money] NULL,
	[LInitialPV] [money] NULL,
	[OSubPV] [money] NULL,
	[LSubPV] [money] NULL,
	[Billing] [smallint] NULL,
	[OAmt] [money] NULL,
	[LAmt] [money] NULL,
	[Contact] [nvarchar](200) NULL,
	[AreaCovered] [varchar](50) NULL,
	[Instruction] [varchar](800) NULL,
	[ZIP] [varchar](10) NULL,
	[State] [int] NULL,
	[PhO] [varchar](100) NULL,
	[PhH] [varchar](100) NULL,
	[PhM] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Map] [varchar](50) NULL,
	[FreqList] [varchar](100) NULL,
	[XDocID] [int] NULL,
	[G212] [int] NULL,
	[ODownPymt] [money] NULL,
	[LDownPymt] [money] NULL,
	[DownPymtPct] [float] NULL,
	[PaymentMode] [int] NULL,
	[Title] [varchar](50) NULL,
	[FixTech] [int] NULL,
	[SvcDesc] [varchar](255) NULL,
	[EffDT] [datetime] NULL,
	[ExpDT] [datetime] NULL,
	[Renewable] [bit] NULL,
	[RetentionP] [float] NULL,
	[ORetention] [money] NULL,
	[LRetention] [money] NULL,
	[AgReceivedDT] [datetime] NULL,
	[AgReceivedBy] [varchar](50) NULL,
	[AMLID] [int] NULL,
	[CommP] [float] NULL,
	[OComm] [money] NULL,
	[LComm] [money] NULL,
	[EstTime] [datetime] NULL,
	[EstDuration] [float] NULL,
	[Period] [smallint] NULL,
	[AMFID] [int] NULL,
	[AB_TSTFID] [int] NULL,
	[PL_TSTFID] [int] NULL,
 CONSTRAINT [PK_CLD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_CLD_7_642101328__K2_19]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_CLD_7_642101328__K2_19] ON [dbo].[CLD] 
(
	[CMFID] ASC
)
INCLUDE ( [LAmt]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_CLD_7_642101328__K2_K1_17_19_86]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_CLD_7_642101328__K2_K1_17_19_86] ON [dbo].[CLD] 
(
	[CMFID] ASC,
	[ID] ASC
)
INCLUDE ( [Billing],
[LAmt],
[Title]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_CLD_7_642101328__K2_K1_19_86]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_CLD_7_642101328__K2_K1_19_86] ON [dbo].[CLD] 
(
	[CMFID] ASC,
	[ID] ASC
)
INCLUDE ( [LAmt],
[Title]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_CLD]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [IX_CLD] ON [dbo].[CLD] 
(
	[CMFID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_642101328_85_2]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_642101328_85_2] ON [dbo].[CLD]([PaymentMode], [CMFID])
GO
/****** Object:  Table [dbo].[PDS]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[UOM] [int] NULL,
	[Remarks] [varchar](4000) NULL,
	[Cost] [money] NULL,
	[Unit] [float] NULL,
	[BarCode] [varchar](50) NULL,
	[WithSerial] [bit] NULL,
	[DiluteX] [float] NULL,
	[DiluteY] [float] NULL,
	[UOMDX] [int] NULL,
	[UOMDY] [int] NULL,
	[Reorder] [real] NULL,
	[Code] [varchar](20) NULL,
	[G230] [int] NULL,
	[G233] [int] NULL,
	[G234] [int] NULL,
	[Model] [varchar](100) NULL,
	[PurchaseInfo] [varchar](200) NULL,
	[Notes] [varchar](500) NULL,
	[MarkupPct] [float] NULL,
	[DiscPct] [float] NULL,
	[T1G60] [int] NULL,
	[T2G60] [int] NULL,
	[CommPct] [float] NULL,
	[SCC] [varchar](50) NULL,
	[OGID] [int] NULL,
 CONSTRAINT [PK_PDS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [_dta_index_PDS_7_1445580188__K1_K25_K5_20]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_PDS_7_1445580188__K1_K25_K5_20] ON [dbo].[PDS] 
(
	[ID] ASC,
	[G230] ASC,
	[Name] ASC
)
INCLUDE ( [Reorder]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [_dta_index_PDS_7_1445580188__K5_1]    Script Date: 01/10/2011 16:20:29 ******/
CREATE NONCLUSTERED INDEX [_dta_index_PDS_7_1445580188__K5_1] ON [dbo].[PDS] 
(
	[Name] ASC
)
INCLUDE ( [ID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Statistic [_dta_stat_1445580188_1_25_5]    Script Date: 01/10/2011 16:20:29 ******/
CREATE STATISTICS [_dta_stat_1445580188_1_25_5] ON [dbo].[PDS]([ID], [G230], [Name])
GO
/****** Object:  Table [dbo].[CLI]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[G202] [int] NULL,
	[G206] [int] NULL,
	[Freq] [int] NULL,
	[Remarks] [varchar](255) NULL,
 CONSTRAINT [PK_CLI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GAM]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GAM](
	[GACode] [nvarchar](6) NOT NULL,
	[SS] [nvarchar](1) NULL,
	[Type] [nvarchar](1) NULL,
	[Name] [nvarchar](40) NULL,
	[Abbrev] [nvarchar](10) NULL,
	[CurrCode] [nvarchar](3) NULL,
 CONSTRAINT [aaaaaGAM_PK] PRIMARY KEY NONCLUSTERED 
(
	[GACode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFF](
	[Fld_ID] [int] IDENTITY(1,1) NOT NULL,
	[Fld_Module] [varchar](5) NULL,
	[Fld_SubModule] [varchar](5) NULL,
	[Fld_Type] [varchar](20) NULL,
	[Fld_Seq] [int] NULL,
	[Fld_Name] [varchar](100) NULL,
	[Fld_Tags] [varchar](255) NULL,
	[Fld_Desc] [varchar](255) NULL,
	[Fld_Mandatory] [bit] NULL,
	[Fld_Script] [varchar](255) NULL,
 CONSTRAINT [PK__CFF__52EE3995] PRIMARY KEY CLUSTERED 
(
	[Fld_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QCLI]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QCLI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLDID] [int] NOT NULL,
	[G202] [int] NULL,
	[G206] [int] NULL,
	[Freq] [int] NULL,
	[Remarks] [varchar](255) NULL,
 CONSTRAINT [PK_QCLI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JMF]    Script Date: 01/10/2011 16:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JMF](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BID] [int] NULL,
	[SID] [int] NULL,
	[SS] [char](1) NULL,
	[JType] [char](1) NULL,
	[JSrc] [char](1) NULL,
	[DocDT] [datetime] NULL,
	[InputDT] [datetime] NULL,
	[EnterBy] [nvarchar](8) NULL,
	[UpdateBy] [nvarchar](8) NULL,
	[UpdateDT] [datetime] NULL,
	[PrintBy] [varchar](12) NULL,
	[PrintDT] [datetime] NULL,
	[PrintNo] [int] NULL,
	[AccMth] [int] NULL,
	[Ref] [varchar](20) NULL,
	[Narration] [varchar](30) NULL,
	[OGID] [int] NULL,
	[Remarks] [varchar](100) NULL,
	[UDNo] [varchar](50) NULL,
 CONSTRAINT [aaaaaJMF_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SYSU] ADD  DEFAULT ((0)) FOR [Number]
GO
ALTER TABLE [dbo].[UMF] ADD  CONSTRAINT [DF_UMF_Retries]  DEFAULT ((0)) FOR [Retries]
GO
ALTER TABLE [dbo].[UMF] ADD  CONSTRAINT [DF_UMF_GroupID]  DEFAULT ((0)) FOR [GroupID]
GO
ALTER TABLE [dbo].[INFD] ADD  DEFAULT (getdate()) FOR [CrDT]
GO
ALTER TABLE [dbo].[AMT] ADD  DEFAULT (getdate()) FOR [AddDT]
GO
ALTER TABLE [dbo].[QCLSA] ADD  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[QCLSA] ADD  DEFAULT ((0)) FOR [AQty]
GO
ALTER TABLE [dbo].[HOL] ADD  DEFAULT ((0)) FOR [G80]
GO
ALTER TABLE [dbo].[SDF] ADD  DEFAULT ('A') FOR [SS]
GO
ALTER TABLE [dbo].[TSTF] ADD  CONSTRAINT [DF__TSTF__GSTIncl__00B50445]  DEFAULT ((0)) FOR [GSTIncl]
GO
ALTER TABLE [dbo].[TSTF] ADD  CONSTRAINT [DF__TSTF__IsBadDebt__28C2F59F]  DEFAULT ((0)) FOR [IsBadDebt]
GO
ALTER TABLE [dbo].[CBF] ADD  CONSTRAINT [DF__CBF__GSTIncl__772B9A0B]  DEFAULT ((0)) FOR [GSTIncl]
GO
ALTER TABLE [dbo].[CBF] ADD  CONSTRAINT [DF__CBF__IsAuto__1798699D]  DEFAULT ((0)) FOR [IsAuto]
GO
ALTER TABLE [dbo].[CBF] ADD  CONSTRAINT [DF__CBF__IsBadDebt__27CED166]  DEFAULT ((0)) FOR [IsBadDebt]
GO
ALTER TABLE [dbo].[TMF] ADD  CONSTRAINT [DF__TMF__AccEntry__3C89F72A]  DEFAULT ((0)) FOR [AccEntry]
GO
ALTER TABLE [dbo].[TMF] ADD  CONSTRAINT [DF_TMF_AccID_1]  DEFAULT ((0)) FOR [AccID]
GO
ALTER TABLE [dbo].[TMF] ADD  CONSTRAINT [DF_TMF_CashID_1]  DEFAULT ((0)) FOR [CashID]
GO
ALTER TABLE [dbo].[TMF] ADD  CONSTRAINT [DF__TMF__OAmt__3E723F9C]  DEFAULT ((0)) FOR [OAmt]
GO
ALTER TABLE [dbo].[TMF] ADD  CONSTRAINT [DF__TMF__LAmt__3F6663D5]  DEFAULT ((0)) FOR [LAmt]
GO
ALTER TABLE [dbo].[TMF] ADD  CONSTRAINT [DF__TMF__PrintNo__405A880E]  DEFAULT ((0)) FOR [PrintNo]
GO
ALTER TABLE [dbo].[TMF] ADD  CONSTRAINT [DF__TMF__G50__414EAC47]  DEFAULT ((0)) FOR [G50]
GO
ALTER TABLE [dbo].[TMF] ADD  DEFAULT ((0)) FOR [IsDeferred]
GO
ALTER TABLE [dbo].[INFS] ADD  DEFAULT ((0)) FOR [ToSend]
GO
ALTER TABLE [dbo].[INFS] ADD  DEFAULT ((0)) FOR [MsgSent]
GO
ALTER TABLE [dbo].[ARD] ADD  CONSTRAINT [DF_ARD_AccID]  DEFAULT ((0)) FOR [AccID]
GO
ALTER TABLE [dbo].[INF] ADD  DEFAULT ((0)) FOR [ToSend]
GO
ALTER TABLE [dbo].[INF] ADD  DEFAULT ((0)) FOR [MsgSent]
GO
ALTER TABLE [dbo].[SID] ADD  DEFAULT ((0)) FOR [Sys]
GO
ALTER TABLE [dbo].[CBFT] ADD  CONSTRAINT [DF_CBFT_GSTIncl]  DEFAULT ((0)) FOR [GSTIncl]
GO
ALTER TABLE [dbo].[CBFT] ADD  CONSTRAINT [DF_CBFT_IsAuto]  DEFAULT ((0)) FOR [IsAuto]
GO
ALTER TABLE [dbo].[QCMF] ADD  DEFAULT ((0)) FOR [RenNo]
GO
ALTER TABLE [dbo].[CLSA] ADD  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[CLSA] ADD  DEFAULT ((0)) FOR [AQty]
GO
ALTER TABLE [dbo].[TDF] ADD  CONSTRAINT [DF__TDF__DocNo__33F4B129]  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[TDF] ADD  CONSTRAINT [DF_TDF_AccID_1]  DEFAULT ((0)) FOR [AccID]
GO
ALTER TABLE [dbo].[TDF] ADD  CONSTRAINT [DF__TDF__XDocNo__34E8D562]  DEFAULT ((0)) FOR [XDocNo]
GO
ALTER TABLE [dbo].[TDF] ADD  CONSTRAINT [DF__TDF__InstNo__35DCF99B]  DEFAULT ((0)) FOR [InstNo]
GO
ALTER TABLE [dbo].[TDF] ADD  CONSTRAINT [DF__TDF__OAmt__36D11DD4]  DEFAULT ((0)) FOR [OAmt]
GO
ALTER TABLE [dbo].[TDF] ADD  CONSTRAINT [DF__TDF__LAmt__37C5420D]  DEFAULT ((0)) FOR [LAmt]
GO
ALTER TABLE [dbo].[QSD] ADD  DEFAULT (getdate()) FOR [DT]
GO
ALTER TABLE [dbo].[CSA] ADD  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[CSA] ADD  DEFAULT ((0)) FOR [AQty]
GO
ALTER TABLE [dbo].[SYS] ADD  CONSTRAINT [DF__SYS__Number__1FEDB87C]  DEFAULT ((0)) FOR [Number]
GO
ALTER TABLE [dbo].[APM] ADD  CONSTRAINT [DF__APM__ModID__42ACE4D4]  DEFAULT ((0)) FOR [ModID]
GO
ALTER TABLE [dbo].[APM] ADD  CONSTRAINT [DF__APM__G1__43A1090D]  DEFAULT ((0)) FOR [OGID]
GO
ALTER TABLE [dbo].[APM] ADD  CONSTRAINT [DF__APM__Closed__44952D46]  DEFAULT ((0)) FOR [Closed]
GO
ALTER TABLE [dbo].[APM] ADD  CONSTRAINT [DF__APM__YDigit__4589517F]  DEFAULT ((0)) FOR [YDigit]
GO
ALTER TABLE [dbo].[AMF] ADD  CONSTRAINT [DF_AMF_GreetCNY]  DEFAULT ((0)) FOR [GreetCNY]
GO
ALTER TABLE [dbo].[AMF] ADD  CONSTRAINT [DF_AMF_GreetChr]  DEFAULT ((0)) FOR [GreetChr]
GO
ALTER TABLE [dbo].[AMF] ADD  CONSTRAINT [DF_AMF_GreetDpv]  DEFAULT ((0)) FOR [GreetDpv]
GO
ALTER TABLE [dbo].[AMF] ADD  CONSTRAINT [DF_AMF_GreetHR]  DEFAULT ((0)) FOR [GreetHR]
GO
ALTER TABLE [dbo].[AMF] ADD  DEFAULT ((0)) FOR [KITDays]
GO
ALTER TABLE [dbo].[OGA]  WITH CHECK ADD  CONSTRAINT [FK_OGA_GMF] FOREIGN KEY([GID])
REFERENCES [dbo].[GMF] ([ID])
GO
ALTER TABLE [dbo].[OGA] CHECK CONSTRAINT [FK_OGA_GMF]
GO
ALTER TABLE [dbo].[OGA]  WITH NOCHECK ADD  CONSTRAINT [FK_OGA_UMF] FOREIGN KEY([UID])
REFERENCES [dbo].[UMF] ([UserID])
GO
ALTER TABLE [dbo].[OGA] CHECK CONSTRAINT [FK_OGA_UMF]
GO
ALTER TABLE [dbo].[OGA] ADD  CONSTRAINT [DF_OGA_UID]  DEFAULT (NULL) FOR [UID]
GO
ALTER TABLE [dbo].[OGA] ADD  CONSTRAINT [DF_OGA_GID]  DEFAULT (NULL) FOR [GID]
GO
ALTER TABLE [dbo].[GAF] ADD  CONSTRAINT [DF__GAF__GroupID__7AF13DF7]  DEFAULT ((0)) FOR [GroupID]
GO
ALTER TABLE [dbo].[GAF] ADD  CONSTRAINT [DF__GAF__AccessCode__7BE56230]  DEFAULT ((0)) FOR [AccID]
GO
ALTER TABLE [dbo].[GAF] ADD  DEFAULT ((0)) FOR [SID]
GO
ALTER TABLE [dbo].[QCBF] ADD  CONSTRAINT [DF__QCBF__GSTIncl__772B9A0B]  DEFAULT ((0)) FOR [GSTIncl]
GO
ALTER TABLE [dbo].[QCBF] ADD  CONSTRAINT [DF__QCBF__IsAuto__1798699D]  DEFAULT ((0)) FOR [IsAuto]
GO
ALTER TABLE [dbo].[UAF] ADD  CONSTRAINT [DF__UAF__AccessCode__46136164]  DEFAULT ((0)) FOR [AccessCode]
GO
ALTER TABLE [dbo].[CSS] ADD  CONSTRAINT [DF__CSS__Old__75435199]  DEFAULT ((0)) FOR [Old]
GO
ALTER TABLE [dbo].[CSS] ADD  CONSTRAINT [DF__CSS__COD__763775D2]  DEFAULT ((0)) FOR [COD]
GO
ALTER TABLE [dbo].[CSS] ADD  CONSTRAINT [DF__CSS__Confirmed__3528CC84]  DEFAULT ((0)) FOR [Confirmed]
GO
ALTER TABLE [dbo].[JDF] ADD  CONSTRAINT [DF__JDF__JID__2DD1C37F]  DEFAULT ((0)) FOR [JID]
GO
ALTER TABLE [dbo].[JDF] ADD  CONSTRAINT [DF__JDF__JNo__2EC5E7B8]  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[JDF] ADD  CONSTRAINT [DF__JDF__OAmt__30AE302A]  DEFAULT ((0)) FOR [OAmt]
GO
ALTER TABLE [dbo].[JDF] ADD  CONSTRAINT [DF__JDF__LAmt__31A25463]  DEFAULT ((0)) FOR [LAmt]
GO
ALTER TABLE [dbo].[ACC] ADD  CONSTRAINT [DF__ACC__AccessCode__03BB8E22]  DEFAULT ((0)) FOR [AccID]
GO
ALTER TABLE [dbo].[ACC] ADD  CONSTRAINT [DF__ACC__ModID__04AFB25B]  DEFAULT ((0)) FOR [G1]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF_APC_OGID_1]  DEFAULT ((0)) FOR [OGID]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF_APC_AccID_1]  DEFAULT ((0)) FOR [AccID]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__APID__373B3228]  DEFAULT ((0)) FOR [APID]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__ER__382F5661]  DEFAULT ((0)) FOR [ER]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__ODr__39237A9A]  DEFAULT ((0)) FOR [ODr]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__LDr__3A179ED3]  DEFAULT ((0)) FOR [LDr]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__OCr__3B0BC30C]  DEFAULT ((0)) FOR [OCr]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__LCr__3BFFE745]  DEFAULT ((0)) FOR [LCr]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__OBal__3CF40B7E]  DEFAULT ((0)) FOR [OBal]
GO
ALTER TABLE [dbo].[APC] ADD  CONSTRAINT [DF__APC__LBal__3DE82FB7]  DEFAULT ((0)) FOR [LBal]
GO
ALTER TABLE [dbo].[CMF] ADD  DEFAULT ((0)) FOR [RenNo]
GO
ALTER TABLE [dbo].[SGM] ADD  CONSTRAINT [DF__SGM__GID__025D5595]  DEFAULT ((0)) FOR [GID]
GO
ALTER TABLE [dbo].[SGM] ADD  CONSTRAINT [DF__SGM__SID__035179CE]  DEFAULT ((0)) FOR [SID]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF_AOF_AccID_1]  DEFAULT ((0)) FOR [AccID]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__DocNo__15DA3E5D]  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__InstNo__16CE6296]  DEFAULT ((0)) FOR [InstNo]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__TrxSeq__17C286CF]  DEFAULT ((0)) FOR [TrxSeq]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__SrcNo__18B6AB08]  DEFAULT ((0)) FOR [SrcNo]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__ER__19AACF41]  DEFAULT ((0)) FOR [ER]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__AccMth__1A9EF37A]  DEFAULT ((0)) FOR [AccMth]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__OAmt__1D7B6025]  DEFAULT ((0)) FOR [OAmt]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__LAmt__1E6F845E]  DEFAULT ((0)) FOR [LAmt]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__OXAmt__1F63A897]  DEFAULT ((0)) FOR [OXAmt]
GO
ALTER TABLE [dbo].[AOF] ADD  CONSTRAINT [DF__AOF__LXAmt__2057CCD0]  DEFAULT ((0)) FOR [LXAmt]
GO
ALTER TABLE [dbo].[AGM] ADD  CONSTRAINT [DF__AGM__G1__09746778]  DEFAULT ((0)) FOR [OGID]
GO
