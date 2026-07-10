UPDATE Students
SET Email = 'bridget@student.ac.ke'
WHERE StudentID = 1;

DELETE FROM Enrollments
WHERE EnrollmentID = 5;

SELECT
    Students.Name,
    Courses.CourseName,
    Enrollments.EnrollmentDate
FROM Students
INNER JOIN Enrollments
ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses
ON Courses.CourseID = Enrollments.CourseID;

SELECT
    DepartmentID,
    COUNT(*) AS TotalStudents
FROM Students
GROUP BY DepartmentID;

SELECT *
FROM Students
ORDER BY Name ASC;

SELECT AVG(ExamScore) AS AverageExamScore
FROM Assessments;
SELECT MAX(ExamScore) AS HighestScore
FROM Assessments;
SELECT MIN(ExamScore) AS LowestScore
FROM Assessments;
SELECT COUNT(*) AS TotalStudents
FROM Students;
