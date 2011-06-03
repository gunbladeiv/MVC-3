USE [ProLine]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[DateSerial]    Script Date: 01/10/2011 16:53:04 ******/
CREATE FUNCTION DateSerial(@day int, @month int, @year int )
RETURNS datetime AS
BEGIN
	DECLARE @date datetime
	SET @date = DateAdd(yy, @year - 1900, 0)
	SET @date = DateAdd(mm, @month - 1, @date)
	SET @date = DateAdd(dd, @day - 1, @date)
	RETURN @date
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetDeliverableAreas]    Script Date: 01/10/2011 16:53:05 ******/
CREATE FUNCTION [dbo].[GetDeliverableAreas]
( @CLDID int )    
RETURNS varchar(2000)    
AS
BEGIN
 DECLARE @Result varchar(2000)
 DECLARE @LastT varchar(100), @CurrT varchar(100), @Area varchar(100)
 SELECT @CurrT = ISNULL(T.Abbrev,ISNULL(T.[Desc],'')),
   @Area = ISNULL(A.Abbrev,ISNULL(A.[Desc],'')),
   @Result = COALESCE(@Result + ', ','') + CASE WHEN @CurrT=@LastT THEN '' ELSE @CurrT + ' -' END +
   CASE WHEN LEN(@Area)>0 THEN ' ' + @Area ELSE '' END, @LastT=@CurrT
 FROM CLSV INNER JOIN CLSA ON CLSA.CLSID=CLSV.ID
 LEFT JOIN SGM T ON G206=T.GID
 LEFT JOIN SGM A ON G202=A.GID
 WHERE CLDID=@CLDID AND DTStamp=(SELECT MAX(DTStamp) FROM CLSV WHERE CLDID=@CLDID) ORDER BY T.Abbrev,T.[Desc],A.Abbrev,A.[Desc]
 RETURN @Result
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetDeliverables]    Script Date: 01/10/2011 16:53:05 ******/
CREATE FUNCTION [dbo].[GetDeliverables]
( @CLDID int )  
RETURNS varchar(2000)  
AS 
BEGIN  
 DECLARE @Result varchar(2000)
 DECLARE @LastF varchar(100), @CurrF varchar(100), @Tgt varchar(100)
 SELECT @CurrF = ISNULL(F.Abbrev,ISNULL(F.[Desc],'')),
   @Tgt = ISNULL(T.Abbrev,ISNULL(T.[Desc],'')),
   @Result = COALESCE(@Result + ', ','') + CASE WHEN @CurrF=@LastF THEN '' ELSE @CurrF END + CASE WHEN LEN(@Tgt)>0 THEN ' ' + @Tgt ELSE '' END + ISNULL(' ' + PDS.Name,''),
 @LastF=@CurrF FROM CLSV LEFT JOIN SGM T ON G206=T.GID
 LEFT JOIN SGM F ON F.GID=CLSV.Freq LEFT JOIN PDS ON ProdID=PDS.ID
 WHERE CLDID=@CLDID AND DTStamp=(SELECT MAX(DTStamp) FROM CLSV WHERE CLDID=@CLDID) ORDER BY F.Abbrev DESC, F.[Desc] DESC
 RETURN @Result
END  
GO

/****** Object:  UserDefinedFunction [dbo].[GetDeliverablesQ]    Script Date: 01/10/2011 16:53:05 ******/
CREATE FUNCTION [dbo].[GetDeliverablesQ]
( @CLDID int )  
RETURNS varchar(2000)  
AS 
BEGIN  
 DECLARE @Result varchar(2000)
 DECLARE @LastF varchar(100), @CurrF varchar(100), @Tgt varchar(100)
 SELECT @CurrF = ISNULL(F.Abbrev,ISNULL(F.[Desc],'')),
   @Tgt = ISNULL(T.Abbrev,ISNULL(T.[Desc],'')),
   @Result = COALESCE(@Result + ', ','') + CASE WHEN @CurrF=@LastF THEN '' ELSE @CurrF END + CASE WHEN LEN(@Tgt)>0 THEN ' ' + @Tgt ELSE '' END + ISNULL(' ' + PDS.Name,''),
 @LastF=@CurrF FROM QCLSV LEFT JOIN SGM T ON G206=T.GID
 LEFT JOIN SGM F ON F.GID=QCLSV.Freq LEFT JOIN PDS ON ProdID=PDS.ID
 WHERE CLDID=@CLDID AND DTStamp=(SELECT MAX(DTStamp) FROM QCLSV WHERE CLDID=@CLDID) ORDER BY F.Abbrev DESC, F.[Desc] DESC
 RETURN @Result
END  
GO

/****** Object:  UserDefinedFunction [dbo].[GetItems]    Script Date: 01/10/2011 16:53:05 ******/
CREATE FUNCTION dbo.GetItems ( @CSSID int )  
RETURNS varchar(2000)  
AS  
BEGIN  
 DECLARE @Result varchar(2000)  
 SELECT @Result = COALESCE(@Result + ', ','') + ISNULL(Name,'') FROM CSI INNER JOIN PDS on PDSID=PDS.ID where CSSID=@CSSID AND G206 IS NULL
 RETURN @Result  
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetOrderNo]    Script Date: 01/10/2011 16:53:05 ******/
CREATE FUNCTION [dbo].[GetOrderNo]
( @AMFID int )
RETURNS varchar(2000)
AS
BEGIN
 DECLARE @Result varchar(2000)
 SELECT TOP 25 @Result = COALESCE(@Result + ', ','') + ISNULL(UDNo,'')
 FROM CMF WHERE CustID=@AMFID ORDER BY DocDT DESC
 RETURN @Result
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetPests]    Script Date: 01/10/2011 16:53:05 ******/
CREATE FUNCTION [dbo].[GetPests] 
( @CSSID int )
RETURNS varchar(2000)
AS
BEGIN
 DECLARE @Result varchar(2000)
 SELECT @Result = COALESCE(@Result + ', ','') + ISNULL(UGC,[Desc]) FROM csi inner join sgm on G206=GID where cssid=@CSSID
 RETURN @Result
END
GO

/****** Object:  UserDefinedFunction [dbo].[GetTargetFreq]    Script Date: 01/10/2011 16:53:05 ******/
CREATE FUNCTION [dbo].[GetTargetFreq]
( @CSSID int )
RETURNS varchar(2000)
AS
BEGIN
 DECLARE @Result varchar(2000)
 DECLARE @LastF varchar(100), @CurrF varchar(100)
 SELECT @CurrF = ISNULL(F.Abbrev,ISNULL(F.[Desc],'')), @Result = COALESCE(@Result + ', ','') + CASE WHEN @CurrF=@LastF THEN '' ELSE @CurrF END + ' ' + ISNULL(T.Abbrev,T.[Desc]),
 @LastF=@CurrF FROM CSI INNER JOIN CSS ON CSS.ID=CSI.CSSID INNER JOIN SGM T ON G206=T.GID
 LEFT JOIN CLSV ON CLSV.G206=CSI.G206 LEFT JOIN SGM F ON F.GID=CLSV.Freq
 WHERE CSSID=@CSSID AND CLSV.CLDID=CSS.CLDID AND CLSV.DTStamp=(SELECT MAX(DTStamp) FROM CLSV WHERE CLDID=CSS.CLDID) ORDER BY F.Abbrev DESC, F.[Desc] DESC
 RETURN @Result
END
GO

CREATE FUNCTION [dbo].[GetTechs] 
( @CSSID int )
RETURNS varchar(2000) WITH ENCRYPTION
AS
BEGIN
 -- Declare the return variable here
 DECLARE @Result varchar(2000)
 SELECT @Result = COALESCE(@Result + ', ','') + ISNULL(Abbrev,Name) FROM CST inner join AMF on TechID=AMF.ID where CSSID=@CSSID
 -- Return the result of the function
 RETURN @Result
END
GO
