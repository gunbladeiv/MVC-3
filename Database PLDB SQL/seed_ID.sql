USE [ProLine]

UPDATE SGM SET SCC='D'WHERE GID=413

DELETE SGM WHERE SID=216
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21600,216,NULL,'Mdm.',NULL,0,'F')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21601,216,NULL,'Mrs.',NULL,0,'F')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21602,216,NULL,'Ms.',NULL,0,'F')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21603,216,NULL,'Dr.',NULL,0,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21604,216,NULL,'Mr.',NULL,0,'M')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21605,216,NULL,'Prof.',NULL,0,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21606,216,NULL,'Sir',NULL,0,'M')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21607,216,NULL,'Pak',NULL,0,'M')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21608,216,NULL,'Bu',NULL,0,'F')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21609,216,NULL,'Tuan',NULL,0,'M')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC) VALUES(21610,216,NULL,'Nyonya',NULL,0,'F')