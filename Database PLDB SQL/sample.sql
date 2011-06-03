USE [ProLine]

-- Contacts
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('SA/01','E','Salesperson - 01','SA/01','03-xxxx','Salesman - 01',123,304,12020,NULL,'MYR',30,10912,46150)
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('SA/02','E','Salesperson - 02','SA/02','03-xxxx','Salesman - 02',123,304,12020,NULL,'MYR',30,10912,46150)
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('TEC/01','E','Technician - 01','TEC/01','03-xxxx','Technician - 01',123,306,12020,NULL,'MYR',30,10912,46150)
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('TEC/02','E','Technician - 02','TEC/02','03-xxxx','Technician - 02',123,306,12020,NULL,'MYR',30,10912,46150)
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('REF001','E','Introducer - A','REF001','03-xxxx','Introducer - A',123,303,12020,NULL,'MYR',30,10912,46150)
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('REF002','E','Introducer - B','REF002','03-xxxx','Introducer - B',123,303,12020,NULL,'MYR',30,10912,46150)
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('CLI/001','E','Client - A','CLI/001','03-xxxx','Client - A',123,301,12020,NULL,'MYR',30,10912,46150)
INSERT INTO AMF(AccNo,Status,Name,Abbrev,OPhone,Contact,Add1,G30,G32,G34,CurrCode,OGID,State,Zip)VALUES('CLI/002','E','Client - B','CLI/002','03-xxxx','Client - B',123,301,12020,NULL,'MYR',30,10912,46150)

-- Items
INSERT INTO PDS(Name,UOM,Reorder,Code,G230,G233)VALUES('A4 Paper',20901,2,'00001',23001,23301)
INSERT INTO PDS(Name,UOM,Reorder,Code,G230,G233)VALUES('Stationery',20903,5,'00002',23001,23301)
INSERT INTO PDS(Name,UOM,Reorder,Code,G230,G233)VALUES('Printer Toner',20900,1,'00003',23001,23301)
