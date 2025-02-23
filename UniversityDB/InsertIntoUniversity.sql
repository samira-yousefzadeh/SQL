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


INSERT INTO Staff (DepID, StaffName) VALUES
(1, 'Dr David Biggins'),
(15, 'Dr Festus Adedoyin'),
(15, 'Dr Vegard Engen'),
(17, 'Professor Mark Hadfield'),
(16, 'Dr Charlie Hargood'),
(17, 'Dr Roya Haratian'),
(19, 'Dr Ying Liu'),
(16, 'Dr Bryce Dyer'),
(13, 'Professor Paula Callus'),
(17, 'Dr Mihai Dupac'),
(17,'Dr Bob Eves'),
(15,'Professor Marcin Budka'),
(15,'Professor Hamid Bouchachia'),
(14,'Dr Fiona Coward'),
(19,'Professor Tiantian Zhang'),
(9,'Professor Jane Murphy'),
(4,'Dr Jonathan Williams'),
(3,'Professor Chris Chapleo'),
(1,'Dr Mehdi Chowdhury'),
(10,'Mary Hogarth'),
(12,'Dr James Fair'),
(15,'Dr Jon Cobb'),
(19,'Professor Hywel Dix'),
(12,'Dr Tom Davis'),
(10,'Professor Ann Luce'),
(5,'Dr Chloe Casey'),
(12,'Dr Evi Karathanasopoulou'),
(14,'Dr Marc Vander Linden'),
(17,'Dr Yong Hun Lim'),
(5,'Dr Angela Turner-Wilson'),
(11,'Dr Suelen Carls'),
(19,'Dr Elena Cantarello'),
(11,'Professor Melanie Klinkner'),
(18,'Professor Amanda Korstjens'),
(2,'Dr Marin Cvitanovic'),
(11,'Dr Alina E Dolea'),
(2,'Dr Hyun-Joo Lim'),
(2,'Dr Austin Fisher'),
(13,'Professor Anna Feigenbaum'),
(4,'Dr Lucy Sheppard-Marks'),
(19,'Dr Phillipa Gillingham'),
(8,'Dr Shelley Ellis');

-- Insert into Course
INSERT INTO Course (DepID, CourseName) VALUES
(4, 'Data Structures'),
(4, 'Artificial Intelligence'),
(1, 'Corporate Finance'),
(5, 'Microbiology'),
(12, 'Photography')

select * from Department

-- Insert into Unit
INSERT INTO Unit (UnitName) VALUES
('Introduction to Programming'),
('Machine Learning'),
('Investment Strategies'),
('Genetics'),
('Digital Art');

-- Insert into CourseUnit (linking Courses & Units)
INSERT INTO CourseUnit (CourseID, UnitID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


insert into Gender(GenderTitle) VALUES
('Female'),
('Male');

select * from Gender