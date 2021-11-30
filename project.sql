CREATE DATABASE student_database;

CREATE TABLE Student(
	Student_number int NOT NULL,
	Full_name varchar(50) NOT NULL,
	Address varchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	Phone_number varchar(50) NOT NULL UNIQUE, 
	Admission_year int NOT NULL,
	GPA int NOT NULL,
	Num_credits_taken int NOT NULL,
	International_Student varchar(10) NOT NULL,
	PRIMARY KEY (student_number)
);

CREATE TABLE Courses (
	Course_id varchar(50) NOT NULL,
	Course_Name varchar(50) NOT NULL,
	Department varchar(50) NOT NULL,
	Student_number int NOT NULL,	
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Major (
	Major_id int NOT NULL,
	Major varchar(50) NOT NULL,
	Student_number int NOT NULL UNIQUE,
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Minor (
	Minor_id int NOT NULL,
	Minor varchar(50) NOT NULL,
	Student_number int NOT NULL UNIQUE,
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Scholarship (
	Scholarship_id int NOT NULL UNIQUE,
	Amount_Received int NOT NULL,
	Scholarship_Type varchar(50) NOT NULL,
	Student_number int NOT NULL UNIQUE,
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

-- Data for Student Table:

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (987654321, 'Heather Park', '53 Erb st', 'randomEmail@hotmail.com', '519-321-3210', 2020, 80, 5, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (943218900, 'Levi Ackerman', '9 Sentinel Ave', 'CoolEmail5@hotmail.com', '999-120-5432', 2018, 99, 19, 'YES');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (123412341, 'Stephen Morris', '59 Stanley St', 'rayx70@live.ca', '226-910-1111', 2019, 75, 12, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (654333321, 'Kevin Morris', '100 Park St', 'KevilMorris21@live.ca', '519-110-1010', 2019, 79, 12, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (654511100, 'Roger Waters', '2 Cool St', 'wahzoo@gmail.com', '231-110-9942', 2021, 68, 4, 'YES');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (654300004, 'Billy Bob', '29 Park St', 'billBob21213@gmail.com', '519-987-2219', 2020, 51, 12, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (999988881, 'Nick Lindstrom', '34 Cresent Road', 'pro54@live.ca', '443-212-2021', 2017, 90, 21, 'YES');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (120946754, 'Allen Walker', '9 Moon St', 'AllenWalker@gmail.com', '519-100-5477', 2020, 89, 10, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (432334444, 'Caroline Parker', '45 North St', 'CoolEmail@live.ca', '519-432-7410', 2018, 74, 19, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (328900012, 'Farnese Bell', '98 South St', 'myEmail@gmail.com', '519-332-1029', 2020, 88, 12, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (555992111, 'Rick Hall', '3 New St', 'rickHall@gmail.com', '226-954-1109', 2020, 91, 14, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (543216543, 'Nisio Isin', '33 Old St', 'NisioIsin@gmail.com', '233-001-4431', 2021, 62, 1, 'YES');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (543222222, 'Zoe Brown', '127 York St', 'ZoeBrown@gmail.com', '999-926-5551', 2020, 72, 8, 'YES');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (110011001, 'Nolan Smith', '92 East St', 'NolanSmith@gmail.com', '226-019-2412', 2021, 54, 4, 'NO');

INSERT INTO Student(Student_number, Full_name, Address, Email, Phone_number, Admission_year, GPA, Num_credits_taken, International_Student)
VALUES (102938474, 'Alex Williams', '24 West St', 'AlexMiller@gmail.com', '999-239-0001', 2018, 93, 19, 'YES');


--Data for Courses

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP264', 'Data Structures II', 'Faculty of Science', 987654321);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('PS101', 'Intro to Psychology', 'Faculty of Science', 943218900);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('MU121', 'History of Rock Music', 'Faculty of Music', 123412341);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP372', 'Computer Networks', 'Faculty of Science', 654333321);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP476', 'Internet Computing', 'Faculty of Science', 654511100);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('BU127', 'Accounting', 'Lazaridis School of Business', 654300004);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('AR105', 'Ancient Rome', 'Faculty of Art', 999988881);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('AR371', 'Archaeology of Death', 'Faculty of Art', 120946754);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('MA104', 'Calculus II', 'Faculty of Science', 328900012);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP164', 'Data Structures I', 'Faculty of Science', 432334444);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP363', 'Database I', 'Faculty of Science', 555992111);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP317', 'Software Engineering', 'Faculty of Science', 543216543);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP214', 'Discrete Structures', 'Faculty of Science', 543222222);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP386', 'Operating Systems', 'Faculty of Science', 110011001);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('BU111', 'Some Business Course', 'Lazaridis School of Business', 102938474);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP312', 'Algorithm Design and Analysis I', 'Faculty of Science', 102938474);

INSERT INTO Courses(Course_id, Course_Name, Department, Student_number)
VALUES ('CP213', 'Intro to Object-Oriented Programming', 'Faculty of Science', 987654321);

--Data for Major:

INSERT INTO Major(Major_id, Major, Student_number)
VALUES (1, 'Computer Science', 987654321);

INSERT INTO Major(Major_id, Major, Student_number)
VALUES (2, 'Psychology', 943218900);

INSERT INTO Major(Major_id, Major, Student_number)
VALUES (3, 'Music', 123412341);

INSERT INTO Major(Major_id, Major, Student_number)
VALUES (1, 'Computer Science', 654333321);

INSERT INTO Major(Major_id, Major, Student_number)
VALUES (1, 'Computer Science', 654511100);

INSERT INTO Major(Major_id, Major, Student_number)
VALUES (4, 'BBA', 654300004);

INSERT INTO Major(Major_id, Major, Student_number)
VALUES (5, 'Ancient Studies', 999988881);


--Data for Minor:

INSERT INTO Minor(Minor_id, Minor, Student_number)
VALUES (1, 'Music', 987654321);

INSERT INTO Minor(Minor_id, Minor, Student_number)
VALUES (2, 'Judaism', 943218900);

INSERT INTO Minor(Minor_id, Minor, Student_number)
VALUES (3, 'Criminology', 123412341);

INSERT INTO Minor(Minor_id, Minor, Student_number)
VALUES (1, 'Music', 654333321);

INSERT INTO Minor(Minor_id, Minor, Student_number)
VALUES (1, 'Music', 654511100);

INSERT INTO Minor(Minor_id, Minor, Student_number)
VALUES (4, 'Creative Writing', 654300004);

INSERT INTO Minor(Minor_id, Minor, Student_number)
VALUES (5, 'User experience', 999988881);

--Data for Scholarship:

INSERT INTO Scholarship(Scholarship_id, Amount_Received, Scholarship_Type, Student_number)
VALUES (1, 1000, 'Academic', 987654321);

INSERT INTO Scholarship(Scholarship_id, Amount_Received, Scholarship_Type, Student_number)
VALUES (2, 1500, 'Academic', 943218900);


-- SAMPLE TEST CASES:

-- Simple join

SELECT Major.Major_id, Student.Full_name, Student.GPA
FROM Student
INNER JOIN Major
ON Student.Student_number=Major.Student_number
WHERE Major = 'Computer Science';
