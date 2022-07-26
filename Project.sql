
CREATE DATABASE BLOOD_DONATION_SYSTEM 


CREATE TABLE DONOR( SSN Char(10) NOT NULL PRIMARY KEY,FirstName Varchar(128) NOT NULL
,MiddleName Varchar(128) NOT NULL,LastName Varchar(128) NOT NULL,Birth_Date DATE NOT
NULL, Gender Varchar (7) NOT NULL ,Height float NOT NULL , The_Weight float NOT NULL
CHECK(The_Weight>50) , Medical_History Varchar(200) ,Donation_Count INT NOT NULL,Phone 
Char(10) NOT NULL ,Street Varchar(200) NOT NULL , City Varchar(200) NOT NULL ,
Region Varchar(200) NOT NULL,Age AS (year(CURRENT_TIMESTAMP) - year(Birth_Date)))



INSERT INTO DONOR(SSN,FirstName,MiddleName,LastName,Birth_Date,Gender,Height,The_Weight,Medical_History,Donation_Count,Phone ,Region , City ,Street)VALUES('1111111111','lamia','ahmed','aljuohani','1-1-2000','female',155.6,55.00,'GOOD HEALTH',1,0501111111,'Al-hagira','madina','madina')
INSERT INTO DONOR VALUES('2222222222','sna','abdulaziz','alharbi','2-2-1999','female',160,60.5,'EXCELLENT',2,0502222222,'quoba','madina' ,'madina')
INSERT INTO DONOR VALUES('3333333333','hajar','nader','aladwani','3-3-1997','female',157,70.7,'NORMAL CASE',2,0503333333,'Al-Matar,','madina','madina')
INSERT INTO DONOR VALUES('4444444444','ahmed','adel','alharbi','4-4-2001','male',180,66.8,'GOOD HEALTH',3,0504444444,'alaziziah','madina','madina')
INSERT INTO DONOR VALUES('5555555555','salman','mohamed','alhrbi','5-6-1990','male',177,80.9,'EXCELLENT',3,0505555555 ,'Al-hagira','madina','madina')
INSERT INTO DONOR VALUES('6666666666','omar','abdulaziz','aljuhani','6-6-1989','male',166,65.00,'EXCELLENT',1,0506666666,'quoba','madina','madina')



CREATE TABLE FAMILY_CONTACT (D_SSN Char(10) NOT NULL FOREIGN KEY REFERENCES DONOR
(SSN),C_SSN Char(10) NOT NULL PRIMARY KEY ,
FirstName Varchar(128) NOT NULL , MiddleName Varchar(128) NOT NULL,LastName Varchar(128)
NOT NULL, Street Varchar(200) NOT NULL ,
City Varchar(200) NOT NULL ,Region Varchar(200) NOT NULL,Phone_number Char(10) NOT NULL
,Relation Varchar(50) NOT NULL )



INSERT INTO FAMILY_CONTACT(D_SSN,C_SSN ,FirstName, MiddleName, LastName,Street,Region,City,Phone_number,Relation)VALUES ('1111111111','0111111111','amin','ahmed','Alharbi','Alhagira','madina','madina','0551111111','father')
INSERT INTO FAMILY_CONTACT Values('2222222222' ,'0222222222','ahmed','aiman','aljuhani','quoba','madina' ,'madina','0552222222','brother')
INSERT INTO FAMILY_CONTACT Values('3333333333' ,'0333333333','asrar','kahled','alqudia', 'Al-Matar,','madina','madina','0553333333','mother')
INSERT INTO FAMILY_CONTACT Values('4444444444','0444444444','wafa','nabil','alharbi','alaziziah','madina','madina','0554444444','mother')
INSERT INTO FAMILY_CONTACT Values('5555555555','0555555555','nabil','omar','basudin','Alhagira','madina','madina','0555555555','father')
INSERT INTO FAMILY_CONTACT Values('6666666666','0666666666','shahad','ahamed','baswani','quoba','madina','madina','0556666666','sister')


Create table BLOOD_BANK_DEPARTMENT(Department_ID int NOT NULL primary key, Name
Varchar(128), Region Varchar(200),
City Varchar(200), Street Varchar(200), Capacity Int)


insert into BLOOD_BANK_DEPARTMENT values (40522,'SEC_3','madina','madina', 'quba',50)
insert into BLOOD_BANK_DEPARTMENT values (40533,'SEC_4', 'madina','madina','alhegra',80)


CREATE TABLE STAFF(Staff_ID Char(7) NOT NULL PRIMARY KEY ,SSN Char(10) NOT NULL
,FirstName Varchar(128) NOT NULL ,MiddleName Varchar(128) NOT NULL,
LastName Varchar(128) NOT NULL,Gender Varchar(7) NOT NULL ,Job_type Varchar(180) NOT NULL
)


INSERT INTO STAFF (Staff_ID,SSN,FirstName,MiddleName,LastName,Gender ,Job_type)VALUES(2345678,8877161623,'Abdullah','Ahamed','Alharbi','Male','Manager' )
INSERT INTO STAFF (Staff_ID,SSN,FirstName,MiddleName,LastName,Gender ,Job_type)VALUES(2345888,8877181694,'NORA','Khaled','Alharbi','Female','Manager' )

INSERT INTO STAFF VALUES(1324967,1122553377,'khaled','Abduallh','Alharbi','Male','LAP TECHNIAIN')
INSERT INTO STAFF VALUES(1323547,1026543289,'Mustafa','Mohammed','Alharbi','Male','LAP TECHNIAIN')
INSERT INTO STAFF VALUES(1324567,1035417659,'Mona','Khaled','Aloufi','Female','PHLEBOTOMIST')
INSERT INTO STAFF VALUES(1325789,1128357740,'Lama' ,'Mohammed' ,'Aljhani' ,'Famale','PHLEBOTOMIST')
INSERT INTO STAFF VALUES(1320987,1115432987,'Lamar' ,'Hatim','Alhazmi','Famale','BLOOD_SAFTEY_AND_CONSERVATION_TEAM')
INSERT INTO STAFF VALUES(1320222,1115433481,'Sara' ,'Ibrahim','Alzamil','Famale','BLOOD_SAFTEY_AND_CONSERVATION_TEAM')


CREATE TABLE MANAGER_DEP(Staff_ID Char(7) NOT NULL FOREIGN KEY REFERENCES 
STAFF(Staff_ID) , Department_ID INT NOT NULL FOREIGN KEY REFERENCES
BLOOD_BANK_DEPARTMENT(Department_ID))


INSERT INTO MANAGER_DEP VALUES (2345678,40522)
INSERT INTO MANAGER_DEP VALUES (2345888,40533)


CREATE TABLE DEP_STAFF(Department_ID INT NOT NULL FOREIGN KEY REFERENCES
BLOOD_BANK_DEPARTMENT(Department_ID) ,Staff_ID Char(7) NOT NULL FOREIGN KEY REFERENCES 
STAFF(Staff_ID) )


INSERT INTO DEP_STAFF(Department_ID,Staff_ID ) VALUES (40522,2345678)
INSERT INTO DEP_STAFF VALUES (40533,2345888)
INSERT INTO DEP_STAFF VALUES (40522,1324567)
INSERT INTO DEP_STAFF VALUES (40533,1323547)
INSERT INTO DEP_STAFF VALUES (40522,1324967)
INSERT INTO DEP_STAFF VALUES (40533,1325789)
INSERT INTO DEP_STAFF VALUES (40522,1320987)
INSERT INTO DEP_STAFF VALUES (40533,1320222)



/* ---------------------*/
CREATE TABLE MANAGER (Staff_ID Char(7) NOT NULL FOREIGN KEY REFERENCES STAFF(Staff_ID),SSN Char(10) NOT NULL )

INSERT INTO MANAGER(Staff_ID,SSN) VALUES(2345678,8877161623)

CREATE TABLE LAP_TECHNICIAN(Staff_ID Char(7) NOT NULL FOREIGN KEY REFERENCES
STAFF(Staff_ID),SSN Char(10) NOT NULL )

INSERT INTO LAP_TECHNICIAN(Staff_ID,SSN) VALUES(1324967,1122553377)
INSERT INTO LAP_TECHNICIAN VALUES(1323547,1026543289)


CREATE TABLE PHLEBOTOMIST(Staff_ID Char(7) NOT NULL FOREIGN KEY REFERENCES
STAFF(Staff_ID) ,SSN Char(10) NOT NULL )

INSERT INTO PHLEBOTOMIST(Staff_ID,SSN ) VALUES (1324567,1035417659)
INSERT INTO PHLEBOTOMIST VALUES (1325789,1128357740)


CREATE TABLE BLOOD_SAFETY_AND_CONSERVARION_TEAM (Staff_ID Char(7) NOT NULL FOREIGN KEY
REFERENCES STAFF(Staff_ID) ,SSN Char(10) NOT NULL )

INSERT INTO BLOOD_SAFETY_AND_CONSERVARION_TEAM (Staff_ID,SSN ) VALUES (1320987,1115432987)


Create table BLOOD(Unit_ID int primary key, Blood_Group Varchar(3), Date_of_Drawing DATE,
Reservation_Status Varchar(50),
Sample_flag char(1), Hymogloben_percentage float CHECK(Hymogloben_percentage>13.00 ),
Product_flag char(1), Component_type Varchar(25),
Volume float CHECK((Volume>=300.00 ) AND (Volume<500.00)))


insert into BLOOD values (1345698,'A+','3-13-2020','Plasma','T',15.07,'T','Red_blood_cells',300)
insert into BLOOD values (9876423,'AB+','1-17-2022', 'Plasma', 'T',16.06,'T','Plasma',300)
insert into BLOOD values (9876455,'AB+','3-20-2022', 'Frozen', 'T',16.06,'T','Blood',300)
insert into BLOOD values (1876542,'O+','1-10-2022','Plasma','T',14.04 ,'T','Blood', 450)
insert into BLOOD values (1876577,'O+','4-19-2022','Plasma','T',14.04 ,'T','Plasma', 450)
insert into BLOOD values (3267907,'O-','1-5-2021','Frozen','T',14.5, 'T','Blood',450)
insert into BLOOD values (3267887,'O-','5-20-2021','Frozen','T',14.5, 'T','Blood',450)
insert into BLOOD values (3267966,'O-','1-5-2022','Frozen','T',14.5, 'T','Blood',450)
insert into BLOOD values (6754891,'B+','1-6-2021','Frozen','T',16.3,'T','Platelets', 400)
insert into BLOOD values (6754441,'B+','1-6-2022','Frozen','T',16.3,'F',NULL, NULL)
insert into BLOOD values (6759391,'B+','4-11-2022','Frozen','T',16.3,'T','Platelets',400)
insert into BLOOD values (1653904,'A-','6-6-2022','Plasma' ,'T',13.55,'F',NULL, NULL)

Create table BLOOD_DONOR(Unit_ID int FOREIGN KEY REFERENCES BLOOD(Unit_ID), D_SSN 
Char(10) FOREIGN KEY REFERENCES DONOR(SSN));
insert into BLOOD_DONOR values (1345698, 1111111111)
insert into BLOOD_DONOR values (9876423, 2222222222)
insert into BLOOD_DONOR values (9876455, 2222222222)
insert into BLOOD_DONOR values (3267966, 4444444444)
insert into BLOOD_DONOR values (6759391, 5555555555)
insert into BLOOD_DONOR values (1876542, 3333333333)
insert into BLOOD_DONOR values (1876577, 3333333333)
insert into BLOOD_DONOR values (3267907, 4444444444)
insert into BLOOD_DONOR values (3267887, 4444444444)
insert into BLOOD_DONOR values (6754891, 5555555555)
insert into BLOOD_DONOR values (6754441, 5555555555)
insert into BLOOD_DONOR values (1653904, 6666666666)

Create table STORAGE(Department_ID INT FOREIGN KEY REFERENCES
BLOOD_BANK_DEPARTMENT(Department_ID), Unit_ID int FOREIGN KEY REFERENCES
BLOOD(Unit_ID));


insert into STORAGE values (40522,1345698)
insert into STORAGE values (40522,9876423)
insert into STORAGE values (40522,9876455)
insert into STORAGE values (40522,3267966)
insert into STORAGE values (40522,6759391)
insert into STORAGE values (40533,1876542)
insert into STORAGE values (40533,1876577)
insert into STORAGE values (40533,3267907)
insert into STORAGE values (40533,3267887)
insert into STORAGE values (40533,6754891)
insert into STORAGE values (40533,6754441)
insert into STORAGE values (40533,1653904)


Create table MONITOR(Staff_ID Char(7) NOT NULL FOREIGN KEY REFERENCES STAFF(Staff_ID),
Unit_ID int FOREIGN KEY REFERENCES BLOOD(Unit_ID));

insert into MONITOR values ('1320987',1345698)
insert into MONITOR values ('1320987',9876423)
insert into MONITOR values ('1320987',9876455)
insert into MONITOR values ('1320987',3267966)
insert into MONITOR values ('1320987',6759391)
insert into MONITOR values ('1320222',1876542)
insert into MONITOR values ('1320222',3267907)
insert into MONITOR values ('1320222',6754891)
insert into MONITOR values ('1320222',1653904)
insert into MONITOR values ('1320222',6754441)
insert into MONITOR values ('1320222',3267887)
insert into MONITOR values ('1320222',1876577)


Create table DRAW_BLOOD(D_SSN Char(10) FOREIGN KEY REFERENCES DONOR(SSN), Staff_ID 
Char(7) NOT NULL FOREIGN KEY REFERENCES STAFF(Staff_ID))

insert into DRAW_BLOOD values ('1111111111', '1324567')
insert into DRAW_BLOOD values ('2222222222', '1324567')
insert into DRAW_BLOOD values ('2222222222', '1324567')
insert into DRAW_BLOOD values ('4444444444','1324567')
insert into DRAW_BLOOD values ('5555555555', '1325789')

---------------------2
insert into DRAW_BLOOD values ('3333333333', '1325789')
insert into DRAW_BLOOD values ('4444444444', '1325789')
insert into DRAW_BLOOD values ('4444444444', '1325789')
insert into DRAW_BLOOD values ('5555555555', '1325789')
insert into DRAW_BLOOD values ('5555555555', '1325789')
insert into DRAW_BLOOD values ('6666666666', '1325789')


Create table ANALYSIS(Staff_ID Char(7) NOT NULL FOREIGN KEY REFERENCES STAFF(Staff_ID),
Unit_ID int FOREIGN KEY REFERENCES BLOOD(Unit_ID));

insert into ANALYSIS values ('1324967', 1345698)
insert into ANALYSIS values ('1324967', 9876423)
insert into ANALYSIS values ('1324967',9876455)
insert into ANALYSIS values ('1324967',3267966)
insert into ANALYSIS values ('1324967',6759391)
-------2
insert into ANALYSIS values ('1323547', 6754891)
insert into ANALYSIS values ('1323547', 1653904)
insert into ANALYSIS values ('1323547',1876542)
insert into ANALYSIS values ('1323547',3267907)
insert into ANALYSIS values ('1323547',6754441)
insert into ANALYSIS values ('1323547',3267887)
insert into ANALYSIS values ('1323547',1876577)

*/
/*-------main------*/
SELECT * FROM DONOR
SELECT * FROM FAMILY_CONTACT
SELECT * FROM BLOOD_BANK_DEPARTMENT
SELECT * FROM STAFF
SELECT * FROM BLOOD
SELECT * FROM BLOOD_SAFETY_AND_CONSERVARION_TEAM
SELECT * FROM PHLEBOTOMIST
SELECT * FROM LAP_TECHNICIAN
SELECT * FROM MANAGER
SELECT * FROM DEP_STAFF
SELECT * FROM BLOOD_DONOR
SELECT * FROM STORAGE
SELECT * FROM MONITOR
SELECT * FROM DRAW_BLOOD
SELECT * FROM ANALYSIS

--Targeted Queries:
SELECT Blood_Group , Date_of_Drawing , Reservation_Status FROM BLOOD 
SELECT Unit_ID,Blood_Group FROM BLOOD WHERE Blood_Group = 'A+' OR Blood_Group='B+' ;
SELECT Blood_Group , COUNT(*) AS 'Total storage' FROM BLOOD GROUP BY Blood_Group
SELECT SUM( Donation_Count )AS 'NUMBER OF DONATIONS' FROM DONOR
SELECT COUNT(*) AS 'NUMBER OF DONATIONS OF WHOLE BLOOD' FROM BLOOD WHERE Product_flag 
='T' AND Component_type= 'Blood'
SELECT COUNT(*) AS 'NUMBER OF DONATIONS IN 2022' FROM BLOOD WHERE Date_of_Drawing 
BETWEEN '1-1-2022' AND '4-28-2022'
SELECT MAX( Donation_Count ) AS 'HIGHEST DONOR' FROM DONOR 
SELECT SSN FROM DONOR WHERE SSN='3333333333'
SELECT Phone_number FROM FAMILY_CONTACT WHERE D_SSN = '3333333333'
SELECT * FROM STAFF WHERE Staff_ID = '1324967'
SELECT 
BLOOD_DONOR.Unit_ID,DONOR.FirstName,DONOR.LastName,DONOR.SSN,STORAGE.Department_ID FROM
DONOR 
JOIN BLOOD_DONOR ON DONOR.SSN = BLOOD_DONOR.D_SSN 
JOIN STORAGE ON BLOOD_DONOR.Unit_ID=STORAGE.Unit_ID
SELECT BLOOD.Unit_ID AS 'EXPIRED BAGS' FROM BLOOD WHERE (SELECT
DATEDIFF(day,Date_of_Drawing, CURRENT_TIMESTAMP))>42
