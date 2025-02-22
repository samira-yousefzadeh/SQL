-- Insert into Building
INSERT INTO Building (BuildingLocation, NumberOfRooms,BuildingName,Campus) VALUES
('Lansdowne', 10,'Bournemouth Gateway Building (BG)','Lansdowne'),
('Lansdowne', 18,'Executive Business Centre (EB)','Lansdowne'),
('Talbot', 20,'The Fusion Building (F)','Talbot'),
('Talbot', 26,'Innovation Centre - Poole House (PG)	','Talbot'),
('Talbot', 30,'Poole House (P)','Talbot'),
('Talbot', 30,'Poole Gateway Building (PG)','Talbot'),
('Talbot', 30,'The Sir Michael Cobham Library (DL)','Talbot');


-- Insert into Faculty
INSERT INTO Faculty (FacultyName, Description, BuildingID) VALUES
('Media & Communication', 'Faculty of Media & Communication', 1),
('Business', 'Faculty of Business & Economics', 2),
('Science and Technology', 'Faculty of Science and Research', 3),
('Health & Social Sciences', 'Faculty of Health & Social Sciences', 4);

-- Insert into Department
INSERT INTO Department (FacultyID, DepartmentName) VALUES
(1, 'Accounting, Finance & Economics'),
(1, 'People & Organisations'),
(2, 'Marketing, Strategy & Innovation'),
(3, 'Sport and Event Management'),
(4, 'Medical Science & Public Health'),
(5, 'Midwifery & Health Sciences'),
(6, 'Nursing Science'),
(7, 'Rehabilitation & Sport Sciences'),
(8, 'Social Sciences & Social Work'),
(9, 'Communication & Journalism'),
(10, 'Humanities & Law '),
(11, 'Media Production'),
(12, 'National Centre for Computer Animation');
 