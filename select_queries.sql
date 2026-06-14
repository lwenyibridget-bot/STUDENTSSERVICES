-- Student Services Management System
-- SELECT Query Scripts

-- 1. Retrieve all students
SELECT * FROM Students;

-- 2. Retrieve only female students
SELECT * FROM Students WHERE gender = 'Female';

-- 3. Retrieve students with their department names
SELECT Students.name, Students.gender, Departments.name AS department
FROM Students
JOIN Departments ON Students.department_id = Departments.department_id;

-- 4. Retrieve assessment scores for each student
SELECT Students.name, Assessments.CAT1_score, Assessments.CAT2_score, Assessments.exam_score
FROM Students
JOIN Assessments ON Students.student_id = Assessments.student_id;

-- 5. Retrieve enrolled students and their courses
SELECT Students.name, Courses.course_name, Enrollments.status
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- 6. Retrieve at-risk students with low CAT scores
SELECT Students.name, Assessments.CAT1_score, Assessments.CAT2_score
FROM Students
JOIN Assessments ON Students.student_id = Assessments.student_id
WHERE Assessments.CAT1_score < 15 OR Assessments.CAT2_score < 15;