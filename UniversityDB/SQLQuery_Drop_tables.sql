--Step 1
DECLARE @sql NVARCHAR(MAX) = N'';

-- Generate ALTER TABLE statements to drop foreign keys
SELECT @sql += 'ALTER TABLE ' + QUOTENAME(t.name) + 
               ' DROP CONSTRAINT ' + QUOTENAME(fk.name) + '; '
FROM sys.foreign_keys fk
JOIN sys.tables t ON fk.parent_object_id = t.object_id;

-- Execute the generated SQL to drop foreign keys
EXEC sp_executesql @sql;

--Step 2
DECLARE @sql NVARCHAR(MAX) = N'';

-- Generate DROP TABLE statements dynamically
SELECT @sql += 'DROP TABLE IF EXISTS ' + QUOTENAME(name) + '; '
FROM sys.tables;

-- Execute the generated SQL to drop tables
EXEC sp_executesql @sql;


/*
SET FOREIGN_KEY_CHECKS = 0;  -- Disable foreign key checks
DROP TABLE Faculty, Department, Course, Unit, CourseUnit, Staff, Student, Enrollment, EnrollmentDetail, Grade, StudentPayment, StudentDebt, Building, Room, StudentRoomAssignment;
SET FOREIGN_KEY_CHECKS = 1;  -- Re-enable foreign key checks
*/
delete from Building
