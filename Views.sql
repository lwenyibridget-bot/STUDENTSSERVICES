USE StudentServices;
GO

CREATE VIEW vwStudentDetails AS
SELECT StudentID, Name, Gender, Email
FROM Students;
GO

CREATE VIEW vwCourseDetails AS
SELECT CourseID, CourseName, Credits
FROM Courses;
GO

CREATE VIEW vwStaffDetails AS
SELECT StaffID, Name, Role, Email
FROM Staff;
GO

CREATE VIEW vwAssessmentResults AS
SELECT StudentID,
       CourseID,
       CAT1Score,
       CAT2Score,
       ExamScore
FROM Assessments;
GO