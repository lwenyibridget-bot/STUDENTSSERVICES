-- Student Services Management System
-- CREATE TABLE Scripts

CREATE DATABASE StudentServices;
USE StudentServices;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    head_of_department VARCHAR(100) NOT NULL
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    UNIQUE(date_of_birth) DATE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female')),
    department_id INT,
    email VARCHAR(150),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    department_id INT,
    credits INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY NOT NULL,
    student_id INT,
    course_id INT,
    enrollment_date DATE NOT NULL,
    status VARCHAR(20) CHECK (status IN ('Active', 'Completed', 'Dropped')),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Assessments (
    assessment_id INT PRIMARY KEY NOT NULL,
    student_id INT,
    course_id INT,
    CAT1_score DECIMAL(5,2) CHECK (CAT1_score BETWEEN 0 AND 20),
    CAT2_score DECIMAL(5,2) CHECK (CAT2_score BETWEEN 0 AND 20),
    exam_score DECIMAL(5,2) CHECK (exam_score BETWEEN 0 AND 60),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50) CHECK (role IN ('Admin', 'Faculty')),
    department_id INT,
    email VARCHAR(100) UNIQUE NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
ALTER TABLE Students
ADD PhoneNumber VARCHAR(15);

ALTER TABLE Courses
ADD Semester VARCHAR(20);