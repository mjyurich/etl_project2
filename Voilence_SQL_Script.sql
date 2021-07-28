/* Execute this statement first to create the database */
CREATE DATABASE gun_voilence_db;

/* After creating the database, create the tables and data */
CREATE TABLE Voilence_Types(
Voilence_ID INT Primary Key,
Voilence_type VARCHAR
);

INSERT INTO Voilence_Types values(1, 'Accidental Death Data');
INSERT INTO Voilence_Types values(2, 'Accidental Injury Data');
INSERT INTO Voilence_Types values(3, 'Mass Shooting Data');

CREATE TABLE States(
State_ID INT primary key,
State_Name VARCHAR,
State_Code Char(2)
);

INSERT INTO States values (1,'Alabama','AL');
INSERT INTO States values (2,'Alaska','AK');
INSERT INTO States values (3,'Arizona','AZ');
INSERT INTO States values (4,'Arkansas','AR');
INSERT INTO States values (5,'California','CA');
INSERT INTO States values (6,'Colorado','CO');
INSERT INTO States values (7,'Connecticut','CT');
INSERT INTO States values (8,'Delaware','DE');
INSERT INTO States values (9,'Florida','FL');
INSERT INTO States values (10,'Georgia','GA');
INSERT INTO States values (11,'Hawaii','HI');
INSERT INTO States values (12,'Idaho','ID');
INSERT INTO States values (13,'Illinois','IL');
INSERT INTO States values (14,'Indiana','IN');
INSERT INTO States values (15,'Iowa','IA');
INSERT INTO States values (16,'Kansas','KS');
INSERT INTO States values (17,'Kentucky','KY');
INSERT INTO States values (18,'Louisiana','LA');
INSERT INTO States values (19,'Maine','ME');
INSERT INTO States values (20,'Maryland','MD');
INSERT INTO States values (21,'Massachusetts','MA');
INSERT INTO States values (22,'Michigan','MI');
INSERT INTO States values (23,'Minnesota','MN');
INSERT INTO States values (24,'Mississippi','MS');
INSERT INTO States values (25,'Missouri','MO');
INSERT INTO States values (26,'Montana','MT');
INSERT INTO States values (27,'Nebraska','NE');
INSERT INTO States values (28,'Nevada','NV');
INSERT INTO States values (29,'New Hampshire','NH');
INSERT INTO States values (30,'New Jersey','NJ');
INSERT INTO States values (31,'New Mexico','NM');
INSERT INTO States values (32,'New York','NY');
INSERT INTO States values (33,'North Carolina','NC');
INSERT INTO States values (34,'North Dakota','ND');
INSERT INTO States values (35,'Ohio','OH');
INSERT INTO States values (36,'Oklahoma','OK');
INSERT INTO States values (37,'Oregon','OR');
INSERT INTO States values (38,'Pennsylvania','PA');
INSERT INTO States values (39,'Rhode Island','RI');
INSERT INTO States values (40,'South Carolina','SC');
INSERT INTO States values (41,'South Dakota','SD');
INSERT INTO States values (42,'Tennessee','TN');
INSERT INTO States values (43,'Texas','TX');
INSERT INTO States values (44,'Utah','UT');
INSERT INTO States values (45,'Vermont','VT');
INSERT INTO States values (46,'Virginia','VA');
INSERT INTO States values (47,'Washington','WA');
INSERT INTO States values (48,'West Virginia','WV');
INSERT INTO States values (49,'Wisconsin','WI');
INSERT INTO States values (50,'Wyoming','WY');

CREATE TABLE Voilence_Data(
Incident_ID INT Primary Key,
Voilence_Type_ID INT,
FOREIGN KEY (Voilence_Type_ID) REFERENCES Voilence_Types(Voilence_ID),
Incident_Date DATE,
Incident_State_ID INT,
FOREIGN KEY (Incident_State_ID) REFERENCES States(State_ID),
city_or_county varchar(128),
Address varchar(256),
Killed INT,
Injured INT
);

/* The below insert is just to demostrate the insert but the extract of csv files, 
transform the data and loading data into database should be done using Pandas */
Insert into Voilence_Data values (2074453, 1, '24-Jul-21', 25,'Amory','N/A',1,0);