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
('Media & Communication', 'Faculty of Media & Communication', 3),
('Business', 'Faculty of Business & Economics', 2),
('Science and Technology', 'Faculty of Science and Research', 5),
('Health & Social Sciences', 'Faculty of Health & Social Sciences', 1);

-- Insert into Department
INSERT INTO Department (FacultyID, DepartmentName) VALUES
(2, 'Accounting, Finance & Economics'),
(2, 'People & Organisations'),
(2, 'Marketing, Strategy & Innovation'),
(2, 'Sport and Event Management'),
(4, 'Medical Science & Public Health'),
(4, 'Midwifery & Health Sciences'),
(4, 'Nursing Science'),
(4, 'Rehabilitation & Sport Sciences'),
(4, 'Social Sciences & Social Work'),
(1, 'Communication & Journalism'),
(1, 'Humanities & Law '),
(1, 'Media Production'),
(1, 'National Centre for Computer Animation'),
(3, 'Archaeology & Anthropology'),
(3, 'Computing & Informatics'),
(3, 'Creative Technology'),
(3, 'Design & Engineering'),
(3, 'Psychology'),
(3, 'Life & Environmental Sciences');
