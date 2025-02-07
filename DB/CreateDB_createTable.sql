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