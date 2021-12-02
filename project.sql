CREATE DATABASE student_database;

USE student_database;

CREATE TABLE Student(
	Student_number int NOT NULL,
	Full_name varchar(50) NOT NULL,
	Address varchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	Phone_number varchar(50) NOT NULL UNIQUE, 
	Admission_year int NOT NULL,
	GPA float NOT NULL,
	Num_credits_taken int NOT NULL,
	International_Student BOOLEAN NOT NULL,
	PRIMARY KEY (Student_number)
);


CREATE TABLE Courses (
	Course_id int NOT NULL,
	Course_Name varchar(50) NOT NULL,
	Course_code varchar(50) NOT NULL,
	Professor varchar(50) NOT NULL,
	Student_number int NOT NULL,	
	PRIMARY KEY (Course_id),
	FOREIGN KEY (Student_number) REFERENCES Student(Student_number)
);


CREATE TABLE Major (
	Major_id int NOT NULL,
	Major varchar(50) NOT NULL,
	COOP BOOLEAN NOT NULL,
	Major_GPA float NOT NULL,
	Student_number int NOT NULL,
	PRIMARY KEY (Major_id),
	FOREIGN KEY (Student_number) REFERENCES Student(Student_number)
);

CREATE TABLE Minor (
	Minor_id int NOT NULL,
	Minor varchar(50) NOT NULL,
	Minor_GPA float NOT NULL,
	Student_number int NOT NULL,
	PRIMARY KEY (Minor_id),
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Financial (
	Financial_id int NOT NULL,
	Scholarship_Amount int NOT NULL,
	Scholarship_Type varchar(50) NOT NULL,
	OSAP float NOT NULL,
	Student_number int NOT NULL,
	PRIMARY KEY (Financial_id),
	FOREIGN KEY (Student_number) REFERENCES Student(Student_number)
);

-- Data for Student Table:

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (987654321, 'Heather Park', '53 Erb st', 'randomEmail@hotmail.com', '519-321-3210', 2020, 10.5, 5, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (943218900, 'Levi Ackerman', '9 Sentinel Ave', 'CoolEmail5@hotmail.com', '999-120-5432', 2018, 7, 19, TRUE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (123412341, 'Stephen Morris', '59 Stanley St', 'rayx70@live.ca', '226-910-1111', 2019, 7.2, 12, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (654333321, 'Kevin Morris', '100 Park St', 'KevilMorris21@live.ca', '519-110-1010', 2019, 9.2, 12, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (654511100, 'Roger Waters', '2 Cool St', 'wahzoo@gmail.com', '231-110-9942', 2021, 68, 11.7, TRUE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (654300004, 'Billy Bob', '29 Park St', 'billBob21213@gmail.com', '519-987-2219', 2020, 8.5, 12, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (999988881, 'Nick Lindstrom', '34 Cresent Road', 'pro54@live.ca', '443-212-2021', 2017, 6.9, 21, TRUE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (120946754, 'Allen Walker', '9 Moon St', 'AllenWalker@gmail.com', '519-100-5477', 2020, 8, 10, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (432334444, 'Caroline Parker', '45 North St', 'CoolEmail@live.ca', '519-432-7410', 2018, 9, 19, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (328900012, 'Farnese Bell', '98 South St', 'myEmail@gmail.com', '519-332-1029', 2020, 88, 12, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (555992111, 'Rick Hall', '3 New St', 'rickHall@gmail.com', '226-954-1109', 2020, 9, 14, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (543216543, 'Nisio Isin', '33 Old St', 'NisioIsin@gmail.com', '233-001-4431', 2021, 9.1, 1, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (543222222, 'Zoe Brown', '127 York St', 'ZoeBrown@gmail.com', '999-926-5551', 2020, 9.3, 8, TRUE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (110011001, 'Nolan Smith', '92 East St', 'NolanSmith@gmail.com', '226-019-2412', 2021, 12, 4, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (102938474, 'Alex Williams', '24 West St', 'AlexMiller@gmail.com', '999-239-0001', 2018, 6.5, 19, TRUE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (193143333, 'Stephen Williams', '54 Lancaster St', 'SteveWilliams@gmail.com', '519-299-1120', 2019, 7.5, 15, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (192938424, 'Emma Smith', '1 University Ave', 'Emma543@gmail.com', '519-948-5431', 2018, 11.4, 19, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (293333424, 'Randy Howel', '81 University Ave', 'Randy21@gmail.com', '519-231-0091', 2020, 10.8, 10, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (555538424, 'Robert Blackmore', '43 King St', 'Robert12@gmail.com', '519-938-1029', 2021, 9.5, 5, FALSE);


--Data for Courses

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (1, 'CP264', 'Data Structures II', 'Lloyd Davis', 987654321);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (2, 'PS101', 'Intro to Psychology', 'Seb Clements', 943218900);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (3, 'MU121', 'History of Rock Music', 'Elli Golden', 123412341);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (4, 'CP372', 'Computer Networks', 'Rahim Miller', 654333321);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (5, 'CP476', 'Internet Computing', 'Neve Hardy', 654511100);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (6, 'BU127', 'Accounting', 'Ifrah Workman', 654300004);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (7, 'AR105', 'Ancient Rome', 'Fiona Chamberlain', 999988881);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (8, 'AR371', 'Archaeology of Death', 'Arran Delacruz', 120946754);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (9, 'MA104', 'Calculus II', 'Mahira Cole', 328900012);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (10, 'CP164', 'Data Structures I', 'Sonny Brett', 432334444);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (11, 'CP363', 'Database I', 'Katy Villarreal', 555992111);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (12, 'CP317', 'Software Engineering', 'Ryker Holding', 543216543);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (13, 'CP214', 'Discrete Structures', 'Patryk Bird', 543222222);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (14, 'CP386', 'Operating Systems', 'Tristan Cochran', 110011001);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (15, 'BU111', 'Some Business Course', 'Kadeem Brandt', 102938474);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (16, 'CP312', 'Algorithm Design and Analysis I', 'Danial Cope', 102938474);

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor, Student_number)
VALUES (17, 'CP213', 'Intro to Object-Oriented Programming', 'Doris Phelps', 987654321);

--Data for Major:

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (1, 'Computer Science', TRUE, 10, 987654321);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (2, 'Psychology', FALSE, 9.5, 943218900);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (3, 'Music', TRUE, ,123412341);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (4, 'Computer Science', TRUE, 10, 654333321);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (5, 'Computer Science', FALSE, 10, 654511100);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (6, 'BBA', TRUE, 11, 654300004);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (7, 'Ancient Studies', FALSE, 8, 999988881);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (8, 'History', FALSE, 9, 120946754);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (9, 'Art', FALSE, 9, 328900012);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (10, 'History', FALSE, 9, 432334444);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (11, 'History', FALSE, 9, 555992111);

INSERT INTO Major(Major_id, Major, COOP, Major_GPA, Student_number)
VALUES (12, 'Art', TRUE, 8, 543216543);

--Data for Minor:

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (1, 'Music', 7, 987654321);

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (2, 'Judaism', 8, 943218900);

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (3, 'Criminology', 10, 123412341);

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (4, 'Music', 7, 654333321);

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (5, 'Music', 7, 654511100);

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (6, 'Creative Writing', 8, 654300004);

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (7, 'User experience', 9, 999988881);

INSERT INTO Minor(Minor_id, Minor, Minor_GPA, Student_number)
VALUES (8, 'User experience', 9, 120946754);



--Data for Financial:

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (1, 1000, 'Academic',3432.1, 987654321);

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (2, 1500, 'Academic',5443.11, 943218900);

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (3, 4500, 'Athletic',2345.2, 123412341);

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (4, 2200, 'Community Service',4000, 654333321);

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (5, 3300, 'Community Service',2400.43, 654511100);

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (6, 6600, 'Academic',1024.60, 654300004);

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (7, 5400, 'Academic',3000.60, 999988881);

INSERT INTO Financial(Financial_id, Scholarship_Amount, Scholarship_Type, OSAP, Student_number)
VALUES (8, 4350, 'Academic',1345.60, 120946754);


-- SAMPLE TEST CASES:

-- Simple join

SELECT Major.Major_id, Student.Full_name, Student.GPA
FROM Student
INNER JOIN Major
ON Student.Student_number=Major.Student_number
WHERE Major = 'Computer Science';
