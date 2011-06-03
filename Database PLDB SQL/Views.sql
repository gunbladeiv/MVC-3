USE [ProLine]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [dbo].[SchedTech]    Script Date: 01/10/2011 16:26:52 ******/
CREATE VIEW [dbo].[SchedTech] AS SELECT dbo.CSS.ID, dbo.CSS.CLDID, dbo.CSS.StartDT, dbo.CSS.ScheduleDT AS SchSDT, DATEADD(Hour, dbo.CSS.Duration, dbo.CSS.ScheduleDT) AS SchEDT, dbo.CST.TechID
FROM dbo.CSS LEFT OUTER JOIN dbo.CST ON dbo.CST.CSSID = dbo.CSS.ID
GO

/****** Object:  View [dbo].[SchedTechM]    Script Date: 01/10/2011 16:26:52 ******/
CREATE VIEW [dbo].[SchedTechM] AS SELECT dbo.CSS.ID, dbo.CSS.CLDID, dbo.CSS.StartDT, dbo.CSS.ScheduleDT AS SchSDT, DATEADD(Minute, dbo.CSS.Duration, dbo.CSS.ScheduleDT) AS SchEDT, dbo.CST.TechID
FROM dbo.CSS LEFT OUTER JOIN dbo.CST ON dbo.CST.CSSID = dbo.CSS.ID
GO

/****** Object:  View [dbo].[vwAML]    Script Date: 01/10/2011 16:26:52 ******/
--must apply in sequence with 1.531
CREATE VIEW [dbo].[vwAML]
AS
SELECT     dbo.AML.ID, dbo.AML.ACCID, dbo.AML.Status, dbo.AML.G205, dbo.AML.Add1, dbo.AML.Add2, dbo.AML.Add3, dbo.AML.Add4, dbo.AML.Add5, 
                      dbo.AML.LUAID, dbo.AML.G216, dbo.AML.Contact, dbo.AML.Gender, dbo.AML.ZIP, dbo.AML.State, dbo.AML.PhO, dbo.AML.PhH, dbo.AML.PhM, 
                      dbo.AML.Fax, dbo.AML.Email, dbo.AML.Name, dbo.AML.ContactAsst, dbo.AML.Position, dbo.AML.Code, dbo.AML.Website, SGM_1.UGC AS G205UGC, 
                      SGM_2.UGC AS G216UGC, SGM_3.UGC AS LUAIDUGC, SGM_1.Abbrev AS G205Abbrev, SGM_2.Abbrev AS G216Abbrev, 
                      SGM_3.Abbrev AS LUAIDAbbrev, SGM_1.[Desc] AS G205Desc, SGM_2.[Desc] AS G216Desc, SGM_3.[Desc] AS LUAIDDesc, dbo.AMF.AccNo, 
                      dbo.AMF.Name AS AccName
FROM         dbo.AML INNER JOIN
                      dbo.AMF ON dbo.AML.ACCID = dbo.AMF.ID LEFT JOIN
                      dbo.SGM AS SGM_1 ON SGM_1.GID = dbo.AML.G205 LEFT JOIN
                      dbo.SGM AS SGM_2 ON SGM_2.GID = dbo.AML.G216 LEFT JOIN
                      dbo.SGM AS SGM_3 ON SGM_3.GID = dbo.AML.LUAID
GO

/****** Object:  View [dbo].[vwCSS]    Script Date: 01/10/2011 16:26:52 ******/
CREATE VIEW [dbo].[vwCSS] AS SELECT CSS.*, CAST(CASE WHEN year(startdt)>1900 THEN 1 ELSE 0 END as int) as Done, sgm.abbrev as SType FROM CSS inner join sgm on sgm.gid=css.g207
GO
