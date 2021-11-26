CREATE DATABASE StudentDatabase;

CREATE TABLE Student(
	student_number int NOT NULL,
	name varchar(50) NOT NULL,
	address varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	phone_number varchar(50) NOT NULL, 
	admission_year int NOT NULL,
	GPA  varchar(5) NOT NULL,
	Num_required_credits int NOT NULL,
	Num_credits_taken int NOT NULL,

	PRIMARY KEY (student_number)
);

CREATE TABLE Courses (
	Course_id int NOT NULL,
	Department varchar(50) NOT NULL,
	student_number int,
	PRIMARY KEY (Course_id),
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Major (
	Major_id int NOT NULL,
	Major varchar(50) NOT NULL,
	student_number int,
	PRIMARY KEY(Major_id),
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Minor (
	Minor_id int NOT NULL,
	Minor varchar(50) NOT NULL,
	student_number int,
	PRIMARY KEY (Minor_id),
	FOREIGN KEY (student_number) REFERENCES Student(student_number)
);

CREATE TABLE Scholarship (

);

INSERT INTO Student(student_number, name, address, email, phone_number, admission_year, GPA, Num_required_credits, Num_credits_taken)
VALUES (987654321, 'Heather', '53 Erb st', 'randomEmail@hotmail.com', '519-321-3210', 1, 'B', 20, 5);

INSERT INTO Student(student_number, name, address, email, phone_number, admission_year, GPA, Num_required_credits, Num_credits_taken)
VALUES (123456789, 'Dan', '4 Kitchener road', 'coolEmail@hotmail.com', '519-659-9374', 2, 'C+', 20, 10);

INSERT INTO Student(student_number, name, address, email, phone_number, admission_year, GPA, Num_required_credits, Num_credits_taken)
VALUES (615412191, 'Stephen', '77 Guelph St', 'hello6543@gmail.com', '519-432-1111', 4, 'A+', 15, 14);
