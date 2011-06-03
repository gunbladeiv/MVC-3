USE [ProLine]

INSERT INTO UMF(UserID,Password,Status,GroupID,Name,DN,AcctID) VALUES('NEWID','NEWPW','E',100,'Administrator','Administrator',1)

INSERT INTO SYS(ID,Text) VALUES('OOBEUID','NEWID')
INSERT INTO SYS(ID,Text) VALUES('OOBEPW','NEWPW')

USE [master]
ALTER LOGIN [BUILTIN\Users] WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]

USE [ProLine]
CREATE USER [BUILTIN\Users] FOR LOGIN [BUILTIN\Users]
EXEC sp_addrolemember N'db_owner', N'BUILTIN\Users'

IF EXISTS(SELECT * FROM SYS WHERE ID='#DOEXCLROW')  UPDATE SYS SET Number=NULL WHERE ID='#DOEXCLROW' ELSE  INSERT INTO SYS(ID,Number) VALUES('#DOEXCLROW',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#DOPRTALL')  UPDATE SYS SET Number=NULL WHERE ID='#DOPRTALL' ELSE  INSERT INTO SYS(ID,Number) VALUES('#DOPRTALL',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFAZONE')  UPDATE SYS SET Number=1 WHERE ID='#CONFAZONE' ELSE  INSERT INTO SYS(ID,Number) VALUES('#CONFAZONE',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSLMAR')  UPDATE SYS SET [Text]=NULL WHERE ID='#CONFSLMAR' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#CONFSLMAR',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#QUO1NAME')  UPDATE SYS SET [Text]=NULL WHERE ID='#QUO1NAME' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#QUO1NAME',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#QUO4NAME')  UPDATE SYS SET [Text]=NULL WHERE ID='#QUO4NAME' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#QUO4NAME',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#QUO3NAME')  UPDATE SYS SET [Text]=NULL WHERE ID='#QUO3NAME' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#QUO3NAME',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#QUO5NAME')  UPDATE SYS SET [Text]=NULL WHERE ID='#QUO5NAME' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#QUO5NAME',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFGST')  UPDATE SYS SET [Text]='GST (%)' WHERE ID='#CONFGST' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#CONFGST','GST (%)')
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPV')  UPDATE SYS SET [Text]='SP' WHERE ID='#CONFPV' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#CONFPV','SP')
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFTERMS')  UPDATE SYS SET [Text]=NULL WHERE ID='#CONFTERMS' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#CONFTERMS',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#QUO2NAME')  UPDATE SYS SET [Text]=NULL WHERE ID='#QUO2NAME' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#QUO2NAME',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='OEMShort')  UPDATE SYS SET [Text]='DCSB' WHERE ID='OEMShort' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('OEMShort','DCSB')
IF EXISTS(SELECT * FROM SYS WHERE ID='OEMLong')  UPDATE SYS SET [Text]='DATUM CLEARMIND (M) SDN. BHD.' WHERE ID='OEMLong' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('OEMLong','DATUM CLEARMIND (M) SDN. BHD.')
IF EXISTS(SELECT * FROM SYS WHERE ID='#COLCBF')  UPDATE SYS SET [Text]=NULL WHERE ID='#COLCBF' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#COLCBF',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFAZONE')  UPDATE SYS SET [Text]='99999' WHERE ID='#CONFAZONE' ELSE  INSERT INTO SYS(ID,[Text]) VALUES('#CONFAZONE','99999')
IF EXISTS(SELECT * FROM SYS WHERE ID='DBVER')  UPDATE SYS SET Number=1.555 WHERE ID='DBVER' ELSE  INSERT INTO SYS(ID,Number) VALUES('DBVER',1.555)
IF EXISTS(SELECT * FROM SYS WHERE ID='#DBTIMEOUT')  UPDATE SYS SET Number=NULL WHERE ID='#DBTIMEOUT' ELSE  INSERT INTO SYS(ID,Number) VALUES('#DBTIMEOUT',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFGST')  UPDATE SYS SET Number=NULL WHERE ID='#CONFGST' ELSE  INSERT INTO SYS(ID,Number) VALUES('#CONFGST',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFTERMS')  UPDATE SYS SET Number=30 WHERE ID='#CONFTERMS' ELSE  INSERT INTO SYS(ID,Number) VALUES('#CONFTERMS',30)
IF EXISTS(SELECT * FROM SYS WHERE ID='#PDA-JS')  UPDATE SYS SET Number=NULL WHERE ID='#PDA-JS' ELSE  INSERT INTO SYS(ID,Number) VALUES('#PDA-JS',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='$QC')  UPDATE SYS SET Number=NULL WHERE ID='$QC' ELSE  INSERT INTO SYS(ID,Number) VALUES('$QC',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='$FILE')  UPDATE SYS SET Number=1 WHERE ID='$FILE' ELSE  INSERT INTO SYS(ID,Number) VALUES('$FILE',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFQUOTE')  UPDATE SYS SET Number=1 WHERE ID='#CONFQUOTE' ELSE  INSERT INTO SYS(ID,Number) VALUES('#CONFQUOTE',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#RPQUOTE')  UPDATE SYS SET Number=NULL WHERE ID='#RPQUOTE' ELSE  INSERT INTO SYS(ID,Number) VALUES('#RPQUOTE',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#SHOWTDL')  UPDATE SYS SET Number=1 WHERE ID='#SHOWTDL' ELSE  INSERT INTO SYS(ID,Number) VALUES('#SHOWTDL',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#DURIMIN')  UPDATE SYS SET Number=NULL WHERE ID='#DURIMIN' ELSE  INSERT INTO SYS(ID,Number) VALUES('#DURIMIN',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#SHOWZONE')  UPDATE SYS SET Number=1 WHERE ID='#SHOWZONE' ELSE  INSERT INTO SYS(ID,Number) VALUES('#SHOWZONE',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='$OGID0')  UPDATE SYS SET Number=NULL WHERE ID='$OGID0' ELSE  INSERT INTO SYS(ID,Number) VALUES('$OGID0',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFMAP')  UPDATE SYS SET Number=NULL WHERE ID='#CONFMAP' ELSE  INSERT INTO SYS(ID,Number) VALUES('#CONFMAP',NULL)
IF EXISTS(SELECT * FROM SYS WHERE ID='#MULTICURR')  UPDATE SYS SET Number=1 WHERE ID='#MULTICURR' ELSE  INSERT INTO SYS(ID,Number) VALUES('#MULTICURR',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#MULTICURD')  UPDATE SYS SET Number=3 WHERE ID='#MULTICURD' ELSE  INSERT INTO SYS(ID,Number) VALUES('#MULTICURD',3)

IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG301')  UPDATE SYS SET [Text]='{T!}CUS{YY}-99999',Number=1 WHERE ID='#CONFG301' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG301','{T!}CUS{YY}-99999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG302')  UPDATE SYS SET [Text]='{T!}SUP{YY}-9999',Number=1 WHERE ID='#CONFG302' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG302','{T!}SUP{YY}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG303')  UPDATE SYS SET [Text]='{T!}INT{YY}-9999',Number=1 WHERE ID='#CONFG303' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG303','{T!}INT{YY}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG304')  UPDATE SYS SET [Text]='{T!}SP{YY}-9999',Number=1 WHERE ID='#CONFG304' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG304','{T!}SP{YY}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG305')  UPDATE SYS SET [Text]='{T!}CON{YY}-9999',Number=1 WHERE ID='#CONFG305' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG305','{T!}CON{YY}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG306')  UPDATE SYS SET [Text]='{T!}TEC{YY}-9999',Number=1 WHERE ID='#CONFG306' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG306','{T!}TEC{YY}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG309')  UPDATE SYS SET [Text]='{T!}OFC{YY}-9999',Number=1 WHERE ID='#CONFG309' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG309','{T!}OFC{YY}-9999',1)

IF EXISTS(SELECT * FROM SYS WHERE ID='#Q')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-999{R}',Number=1 WHERE ID='#Q' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#Q','{OG!}{T}{YY}{MM}-999{R}',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#B')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-999{R}',Number=1 WHERE ID='#B' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#B','{OG!}{T}{YY}{MM}-999{R}',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#R')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-999{R}',Number=1 WHERE ID='#R' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#R','{OG!}{T}{YY}{MM}-999{R}',1)

IF EXISTS(SELECT * FROM SYS WHERE ID='#WC')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-999{R}',Number=1 WHERE ID='#WC' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#WC','{OG!}{T}{YY}{MM}-999{R}',1)

IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCSN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCSN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCSN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCDN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCDN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCDN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCCN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCCN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCCN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCPN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCPN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCPN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCPD')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCPD' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCPD','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCPC')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCPC' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCPC','{OG!}{T}{YY}{MM}-9999',1)

IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSINV')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSINV' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSINV','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSDN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSDN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSDN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSCN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSCN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSCN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPRD')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPRD' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPRD','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFQT')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFQT' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFQT','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFEC')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFEC' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFEC','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFEN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFEN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFEN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFEDN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFEDN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFEDN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFECN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFECN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFECN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCCLM')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCCLM' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCCLM','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCCDN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCCDN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCCDN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCCCN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCCCN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCCCN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPRO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPRO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPRO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPIN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPIN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPIN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPOUT')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPOUT' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPOUT','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFINV')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFINV' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFINV','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFDN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFDN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFDN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSF')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSF' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSF','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFRN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFRN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFRN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFQTN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFQTN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFQTN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPRN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPRN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPRN','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSFC')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSFC' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSFC','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPFI')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPFI' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPFI','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSTN')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSTN' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSTN','{OG!}{T}{YY}{MM}-9999',1)

IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFTAT')  UPDATE SYS SET [Text]='{OG!}{T!}OR-{YY}{MM}-999',Number=1 WHERE ID='#CONFTAT' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFTAT','{OG!}{T!}OR-{YY}{MM}-999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFTAP')  UPDATE SYS SET [Text]='{OG!}{T!}PV-{YY}{MM}-999',Number=1 WHERE ID='#CONFTAP' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFTAP','{OG!}{T!}PV-{YY}{MM}-999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFTAJ')  UPDATE SYS SET [Text]='{OG!}{T!}JV-{YY}{MM}-999',Number=1 WHERE ID='#CONFTAJ' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFTAJ','{OG!}{T!}JV-{YY}{MM}-999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSAT')  UPDATE SYS SET [Text]='{OG!}{T!}ORS-{YY}{MM}-999',Number=1 WHERE ID='#CONFSAT' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSAT','{OG!}{T!}ORS-{YY}{MM}-999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSAP')  UPDATE SYS SET [Text]='{OG!}{T!}PVS-{YY}{MM}-999',Number=1 WHERE ID='#CONFSAP' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSAP','{OG!}{T!}PVS-{YY}{MM}-999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSAJ')  UPDATE SYS SET [Text]='{OG!}{T!}JVS-{YY}{MM}-999',Number=1 WHERE ID='#CONFSAJ' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSAJ','{OG!}{T!}JVS-{YY}{MM}-999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFG')  UPDATE SYS SET [Text]='{OG!}{T!}GJ-{YY}{MM}-999',Number=1 WHERE ID='#CONFG' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFG','{OG!}{T!}GJ-{YY}{MM}-999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFGS')  UPDATE SYS SET [Text]='{OG!}{T!}SGJ-{YY}{MM}-999',Number=1 WHERE ID='#CONFGS' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFGS','{OG!}{T!}SGJ-{YY}{MM}-999',1)

IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSTF')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSTF' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSTF','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSTL')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSTL' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSTL','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCSI')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCSI' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCSI','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFCSO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFCSO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFCSO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFDO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFDO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFDO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFRO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFRO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFRO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFREC')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFREC' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFREC','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFRJC')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFRJC' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFRJC','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFRTI')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFRTI' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFRTI','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFRTO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFRTO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFRTO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFWI')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFWI' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFWI','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFWO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFWO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFWO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFPOS')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFPOS' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFPOS','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSVR')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSVR' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSVR','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFSVD')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFSVD' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFSVD','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFWST')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFWST' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFWST','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFWSR')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFWSR' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFWSR','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFTRI')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFTRI' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFTRI','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFTRO')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFTRO' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFTRO','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFINC')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFINC' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFINC','{OG!}{T}{YY}{MM}-9999',1)
IF EXISTS(SELECT * FROM SYS WHERE ID='#CONFINU')  UPDATE SYS SET [Text]='{OG!}{T}{YY}{MM}-9999',Number=1 WHERE ID='#CONFINU' ELSE  INSERT INTO SYS(ID,[Text],Number) VALUES('#CONFINU','{OG!}{T}{YY}{MM}-9999',1)
