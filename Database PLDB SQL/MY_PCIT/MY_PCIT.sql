USE [ProLine]

DELETE FROM SGM WHERE SID=200
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC,Seq) VALUES(20001,200,'PJ','Project','Proj',NULL,'RXQS',1)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC,Seq) VALUES(20002,200,'CON','Contract','Con',NULL,'RXQS',2)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC,Seq) VALUES(20003,200,'OTH','Others','Oth',NULL,'RXQS',3)

DELETE FROM SGM WHERE SID=207
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20701,207,'ISP','Inspection/Checking','R',1,'D')
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20702,207,'DLV','Delivery','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20703,207,'INS','Installation','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20704,207,'DAI','Delivery & Installation','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20705,207,'OSR','On-site Repairs','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20706,207,'REM','Remote Support','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20707,207,'MNT','Maintenance','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20708,207,'COL','Collected','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20709,207,'RET','Returned','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20710,207,'WAR','Warranty','R',1,NULL)
INSERT INTO SGM(GID,SID,UGC,[Desc],Abbrev,Val,SCC)VALUES(20711,207,'OTH','Others','R',1,NULL)