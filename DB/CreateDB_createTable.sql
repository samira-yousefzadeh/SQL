-- Create the University Database
/*CREATE DATABASE University;*/
USE University;


-- Student Table: Creates student table to store each student info
CREATE TABLE Student (
    StdID INT PRIMARY KEY IDENTITY(1,1),      -- Unique student identifier (auto-increment)
    FirstName NVARCHAR(50) NOT NULL,          -- Student's first name
    LastName NVARCHAR(50) NOT NULL,           -- Student's last name
    DateOfBirth DATE NOT NULL,                -- Student's date of birth
    Email NVARCHAR(100) UNIQUE,               -- Unique student email
    PhoneNumber NVARCHAR(15),                 -- Student's phone number
    Address NVARCHAR(255),                    -- Student's address
    EnrollmentDate DATE DEFAULT GETDATE(),    -- Date of enrollment (default is current date)
    Major NVARCHAR(100),                      -- Student's major subject
    GPA DECIMAL(3,2) CHECK (GPA BETWEEN 0.00 AND 4.00) -- GPA with a limit between 0.00 to 4.00
);

-- Course Table: Stores course details
CREATE TABLE Course (
    CourseID INT PRIMARY KEY IDENTITY(1,1),   -- Unique course identifier
    CourseName NVARCHAR(100) NOT NULL,         -- Name of the course
    Credits INT CHECK (Credits BETWEEN 1 AND 6), -- Number of credits (1-6)
    Department NVARCHAR(100)                   -- Department offering the course
);

-- Enrollment Table: Links students and courses (Many-to-Many relationship)
CREATE TABLE Enrollment (
    EnrID INT PRIMARY KEY IDENTITY(1,1),       -- Unique enrollment record
    StdID INT,                                  -- Student ID (Foreign Key)
    CourseID INT,                               -- Course ID (Foreign Key)
    EnrollmentDate DATE DEFAULT GETDATE(),      -- Date of enrollment
    Grade NVARCHAR(2),                          -- Student's grade in the course
    FOREIGN KEY (StdID) REFERENCES Student(StdID) ON DELETE CASCADE, -- If student is deleted, remove their enrollments
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE -- If course is deleted, remove enrollments
);

-- Professor Table: Stores professor details
CREATE TABLE Professor (
    PrID INT PRIMARY KEY IDENTITY(1,1),       -- Unique professor identifier
    FirstName NVARCHAR(50) NOT NULL,           -- Professor's first name
    LastName NVARCHAR(50) NOT NULL,            -- Professor's last name
    Email NVARCHAR(100) UNIQUE,                -- Unique professor email
    PhoneNumber NVARCHAR(15),                  -- Professor's phone number
    Department NVARCHAR(100),                  -- Department where professor teaches
    HireDate DATE DEFAULT GETDATE()            -- Date professor was hired
);

-- Department Table: Stores university departments
CREATE TABLE Department (
    DepID INT PRIMARY KEY IDENTITY(1,1),      -- Unique department identifier
    DepartmentName NVARCHAR(100) UNIQUE NOT NULL, -- Name of the department
    HeadOfDepartment INT,                      -- ID of the department head (Professor)
    FOREIGN KEY (HeadOfDepartment) REFERENCES Professor(PrID) ON DELETE SET NULL -- If professor is removed, set to NULL
);

-- Classroom Table: Stores classroom details
CREATE TABLE Classroom (
    ClsID INT PRIMARY KEY IDENTITY(1,1),      -- Unique classroom identifier
    RoomNumber NVARCHAR(10) NOT NULL,          -- Classroom room number
    Building NVARCHAR(50),                     -- Building where the classroom is located
    Capacity INT CHECK (Capacity > 0)          -- Maximum capacity of the classroom
);

-- Assignment Table: Links professors, courses, and classrooms
CREATE TABLE Assignment (
    AssignID INT PRIMARY KEY IDENTITY(1,1),   -- Unique assignment record
    PrID INT,                                  -- Professor assigned to the course
    CourseID INT,                              -- Course being assigned
    ClsID INT,                                 -- Classroom where the course is conducted
    Schedule NVARCHAR(50),                     -- Course schedule (e.g., Mon-Wed 10:00-11:30 AM)
    FOREIGN KEY (PrID) REFERENCES Professor(PrID) ON DELETE CASCADE, -- If professor leaves, delete assignments
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE, -- If course is removed, delete assignments
    FOREIGN KEY (ClsID) REFERENCES Classroom(ClsID) ON DELETE SET NULL -- If classroom is removed, set to NULL
);