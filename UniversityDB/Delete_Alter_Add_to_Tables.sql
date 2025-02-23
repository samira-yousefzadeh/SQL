-- alter table Building
-- Rename COLUMN Address to BuildingLocation;

-- ALTER TABLE Building RENAME COLUMN Address TO BuildingLocation;

-- ALTER TABLE Building CHANGE Address BuildingLocation TEXT;


EXEC sp_rename 'Building.Address', 'BuildingLocation', 'COLUMN';
alter table Building 
add BuildingName NVARCHAR(50),
Campus NVARCHAR(30);

--Reseed
DBCC CHECKIDENT ('Faculty', RESEED, 0);
--Reseed Building
DBCC CHECKIDENT('Building',RESEED,0);
delete from Building
select * from building

--Reseed Department
--Reseed Building
DBCC CHECKIDENT('Department',RESEED,0);
dbcc checkident('Department',reseed,0);
delete from Department
select * from Department

-- Alter student to connect it to Gender Table
ALTER TABLE Student drop COLUMN GenderID;
ALTER TABLE Student 
ADD GenderID INT;

ALTER TABLE Student 
ADD CONSTRAINT FK_Student_Gender FOREIGN KEY (GenderID) REFERENCES Gender(GenderID);
