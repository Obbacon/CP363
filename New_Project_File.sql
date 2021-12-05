CREATE DATABASE student_database;

USE student_database;

CREATE TABLE Student(
	Student_number int NOT NULL,
	Full_name varchar(50) NOT NULL,
	Address varchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	Phone_number varchar(50) NOT NULL, 
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
	PRIMARY KEY (Course_id)
);

CREATE TABLE Student_Courses (
	Student_Course_id int NOT NULL,
	Course_id int NOT NULL,
	Student_number int NOT NULL,	
	PRIMARY KEY (Student_Course_id),
	FOREIGN KEY (Course_id) REFERENCES Courses(Course_id),
	FOREIGN KEY (Student_number) REFERENCES Student(student_number)
);


CREATE TABLE Major (
	Major_id int NOT NULL,
	Major varchar(50) NOT NULL,
	COOP BOOLEAN NOT NULL,
	PRIMARY KEY (Major_id)
);

CREATE TABLE Student_Major(
	Student_Major_id int NOT NULL,
	Major_GPA float NOT NULL,
	Major_id int NOT NULL,
	Student_number int NOT NULL,
	PRIMARY KEY (Student_Major_id),
	FOREIGN KEY (Major_id) REFERENCES Major(Major_id),
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Minor (
	Minor_id int NOT NULL,
	Minor varchar(50) NOT NULL,
	PRIMARY KEY (Minor_id)
);

CREATE TABLE Student_Minor (
	Student_Minor_id int NOT NULL,
	Minor_id int NOT NULL,
	Student_number int NOT NULL,
	PRIMARY KEY (Student_Minor_id),
	FOREIGN KEY (Minor_id) REFERENCES Minor(Minor_id),
	FOREIGN KEY (Student_number) REFERENCES Student(Student_number)
);

CREATE TABLE Scholarship(
	Scholarship_id int NOT NULL,
	Scholarship_type varchar(50) NOT NULL,
	Scholarship_amount float NOT NULL,
	PRIMARY KEY (Scholarship_id)
);

CREATE TABLE Financial (
	Financial_id int NOT NULL,
        OSAP float NOT NULL,
	Scholarship_id int NOT NULL,
	Student_number int NOT NULL,
	PRIMARY KEY (Financial_id),
        FOREIGN KEY (Scholarship_id) REFERENCES Scholarship(Scholarship_id),
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
VALUES (654511100, 'Zaid Matthews', '2 Cool St', 'wahzoo@gmail.com', '231-110-9942', 2021, 11.2, 11.7, TRUE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (654300004, 'Billy Bob', '29 Park St', 'billBob21213@gmail.com', '519-987-2219', 2020, 8.5, 12, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (999988881, 'Nick Lindstrom', '34 Cresent Road', 'pro54@live.ca', '443-212-2021', 2017, 6.9, 21, TRUE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (120946754, 'Allen Walker', '9 Moon St', 'AllenWalker@gmail.com', '519-100-5477', 2020, 8, 10, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (432334444, 'Caroline Parker', '45 North St', 'CoolEmail@live.ca', '519-432-7410', 2018, 9, 19, FALSE);

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (328900012, 'Farnese Bell', '98 South St', 'myEmail@gmail.com', '519-332-1029', 2020, 8, 12, FALSE);

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

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (1554, 'CP264', 'Data Structures II', 'Lloyd Davis');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (3562, 'PS101', 'Intro to Psychology', 'Seb Clements');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (2211, 'MU121', 'History of Rock Music', 'Elli Golden');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (2210, 'CP372', 'Computer Networks', 'Rahim Miller');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (5954, 'CP476', 'Internet Computing', 'Neve Hardy');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (3560, 'BU127', 'Accounting', 'Ifrah Workman');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (3190, 'AR105', 'Ancient Rome', 'Fiona Chamberlain');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (8888, 'AR371', 'Archaeology of Death', 'Arran Delacruz');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (3459, 'MA104', 'Calculus II', 'Mahira Cole');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (6544, 'CP164', 'Data Structures I', 'Sonny Brett');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (8211, 'CP363', 'Database I', 'Katy Villarreal');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (2222, 'CP317', 'Software Engineering', 'Ryker Holding');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (3001, 'CP214', 'Discrete Structures', 'Patryk Bird');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (1002, 'CP386', 'Operating Systems', 'Tristan Cochran');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (4053, 'BU111', 'Some Business Course', 'Kadeem Brandt');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (5662, 'CP312', 'Algorithm Design and Analysis I', 'Danial Cope');

INSERT INTO Courses(Course_id, Course_code, Course_Name, Professor)
VALUES (6721, 'CP213', 'Intro to Object-Oriented Programming', 'Doris Phelps');



-- Data for Student_Courses:

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (1, 1554, 987654321);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (2, 3562, 943218900);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (3, 2211, 123412341);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (4, 2210, 654333321);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (5, 5954, 654511100);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (6, 3560, 654300004);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (7, 3190, 999988881);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (8, 8888, 120946754);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (9, 3459, 432334444);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (10, 6544, 328900012);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (11, 8211, 555992111);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (12, 2222, 543216543);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (13, 3001, 543222222);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (14, 1002, 110011001);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (15, 4053, 102938474);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (16, 5662, 193143333);

INSERT INTO Student_Courses(Student_Course_id, Course_id, Student_number)
VALUES (17, 6721, 192938424);


--Data for Major:

INSERT INTO Major(Major_id, Major, COOP)
VALUES (101, 'Computer Science', TRUE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (102, 'Computer Science', FALSE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (202, 'Psychology', FALSE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (301, 'Music', TRUE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (601, 'BBA', TRUE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (702, 'Ancient Studies', FALSE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (802, 'History', FALSE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (902, 'Art', FALSE);

INSERT INTO Major(Major_id, Major, COOP)
VALUES (901, 'Art', TRUE);


-- Data for Student_Major;

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (1,101, 10, 987654321);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (2,202, 9.5, 943218900);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (3,301, 7.5, 123412341);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (4,101, 10, 654333321);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (5,102, 10, 654511100);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (6,601, 11, 654300004);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (7,702, 8, 999988881);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (8,802, 9, 120946754);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (9,902, 9, 432334444);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (10,802 ,9, 328900012);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (11,802, 9, 555992111);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (12,901, 8, 543216543);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (13,101 ,11, 543222222);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (14,101, 9.5, 110011001);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (15,101, 10, 102938474);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (16,101, 11.3, 193143333);

INSERT INTO Student_Major(Student_Major_id, Major_id, Major_GPA, student_number)
VALUES (17,101, 11.5, 192938424);




--Data for Minor:

INSERT INTO Minor(Minor_id, Minor)
VALUES (3214, 'Music');

INSERT INTO Minor(Minor_id, Minor)
VALUES (3321, 'Judaism');

INSERT INTO Minor(Minor_id, Minor)
VALUES (1111, 'Criminology');

INSERT INTO Minor(Minor_id, Minor)
VALUES (1231, 'Creative Writing');

INSERT INTO Minor(Minor_id, Minor)
VALUES (8484, 'User experience');



-- DATA for Student_minor;

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (1, 3214, 987654321);

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (2, 3321, 943218900);

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (3, 1111, 123412341);

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (4, 3214, 654333321);

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (5, 3214, 654511100);

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (6, 1231, 654300004);

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (7, 8484, 999988881);

INSERT INTO Student_Minor(Student_Minor_id, Minor_id, Student_number)
VALUES (8, 8484, 120946754);




--Data for Financial:

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (1,200,3432.1, 987654321);

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (2,150,5443.11, 943218900);

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (3,120,2345.2, 123412341);

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (4,120,4000, 654333321);

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (5,200,2400.43, 654511100);

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (6,200,1024.60, 654300004);

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (7,200,3000.60, 999988881);

INSERT INTO Financial(Financial_id, Scholarship_id, OSAP, Student_number)
VALUES (8,150,1345.60, 120946754);

-- Data for Scholarship

INSERT INTO Scholarship(Scholarship_id, Scholarship_Amount, Scholarship_Type)
VALUES (200, 2000, 'Academic');

INSERT INTO Scholarship(Scholarship_id, Scholarship_Amount, Scholarship_Type)
VALUES (150, 1500, 'Athletic');

INSERT INTO Scholarship(Scholarship_id, Scholarship_Amount, Scholarship_Type)
VALUES (120, 1200, 'Community Service');




-- SAMPLE TEST CASES:

---------------------

-- Case 1:
	
WITH temp AS (SELECT SUM(OSAP) AS TOTAL
	FROM Financial natural join Student
	WHERE International_Student = 0
	GROUP BY Financial_id)
	SELECT DISTINCT AVG(TOTAL) average
	FROM temp;


-- Case 2:

SELECT Major.Major_id, Student.Full_name, Student.GPA
FROM Student
INNER JOIN Major
ON Student.Student_number=Student_Major.Student_number
WHERE Major = 'Computer Science' AND GPA >= 9;


-- Case 3:
SELECT Student_number, Full_name, Email, Admission_year, GPA, International_Student, Major, Minor, Scholarship_amount, Scholarship_Type, OSAP
FROM (SELECT Student_number, Major, Minor, Scholarship_Amount, Scholarship_Type, OSAP
FROM Major natural join Minor natural join Scholarship 
WHERE minor.Student_number = '120946754') as x natural join Student natural join Courses
WHERE student.Full_name = 'Allen Walker' AND student.Student_number = '120946754';

-- Case 4:

SELECT Major.Major, Major.COOP, Student.Full_name, Student.GPA
FROM Major
INNER JOIN Student 
ON Student.Student_number=Major.Student_number
WHERE Full_name Like 'a%' OR Full_name Like 'c%';

-- Case 5:

SELECT COUNT(Scholarship_Amount) as Scholarships , Scholarship_Type
FROM Financial 
GROUP BY Scholarship_Type
ORDER BY Scholarships DESC;

