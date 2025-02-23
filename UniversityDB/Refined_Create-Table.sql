
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


----

CREATE TABLE Staff (
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    DepID INT FOREIGN KEY REFERENCES Department(DepID),
    StaffName VARCHAR(100)
);

CREATE TABLE Faculty (
    FacultyID INT IDENTITY(1,1) PRIMARY KEY,
    FacultyName VARCHAR(100),
    Description TEXT,
    BuildingID INT FOREIGN KEY REFERENCES Building(BuildingID)
);

CREATE TABLE Student (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    Gender VARCHAR(10),
    Name VARCHAR(100),
    Family VARCHAR(100),
    Address TEXT
);

create table Gender(
    GenderID int IDENTITY(1,1) PRIMARY KEY,
    GenderTitle nvarchar(10)
);

CREATE TABLE Course (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    DepID INT FOREIGN KEY REFERENCES Department(DepID),
    CourseName VARCHAR(100)
);

CREATE TABLE Unit (
    UnitID INT IDENTITY(1,1) PRIMARY KEY,
    UnitName VARCHAR(100)
);

CREATE TABLE CourseUnit (
    CourseID INT FOREIGN KEY REFERENCES Course(CourseID),
    UnitID INT FOREIGN KEY REFERENCES Unit(UnitID),
    PRIMARY KEY (CourseID, UnitID)
);



CREATE TABLE Enrollment (
    EnrollID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Student(StudentID),
    EnrollDate DATE
);

CREATE TABLE EnrollmentDetail (
    EnrollDetailID INT IDENTITY(1,1) PRIMARY KEY,
    EnrollID INT FOREIGN KEY REFERENCES Enrollment(EnrollID),
    StaffID INT FOREIGN KEY REFERENCES Staff(StaffID),
    UnitID INT FOREIGN KEY REFERENCES Unit(UnitID)
);

CREATE TABLE Grade (
    GradeID INT IDENTITY(1,1) PRIMARY KEY,
    EnrollID INT FOREIGN KEY REFERENCES Enrollment(EnrollID),
    Mark DECIMAL(5,2)
);



CREATE TABLE StudentPayment (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Student(StudentID),
    EnrollID INT FOREIGN KEY REFERENCES Enrollment(EnrollID),
    AmountPaid DECIMAL(10,2),
    PaymentDate DATE
);

CREATE TABLE StudentDebt (
    DebtID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Student(StudentID),
    AmountOwed DECIMAL(10,2),
    DueDate DATE,
    Status VARCHAR(20) -- Pending, Paid, Overdue
);

CREATE TABLE Room (
    RoomID INT IDENTITY(1,1) PRIMARY KEY,
    BuildingID INT FOREIGN KEY REFERENCES Building(BuildingID),
    RoomNumber INT,
    Facilities TEXT
);

