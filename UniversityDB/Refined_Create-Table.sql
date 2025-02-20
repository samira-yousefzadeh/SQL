
CREATE TABLE Building (
    BuildingID INT IDENTITY(1,1) PRIMARY KEY,
    Address TEXT,
    NumberOfRooms INT
);
CREATE TABLE Department (
    DepID INT IDENTITY(1,1) PRIMARY KEY,
    FacultyID INT FOREIGN KEY REFERENCES Faculty(FacultyID),
    DepartmentName VARCHAR(100)
);


