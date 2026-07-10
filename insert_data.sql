-- Student Services Management System
-- INSERT Data Scripts

INSERT INTO Departments VALUES
(1, 'Computer Science', 'Block A', 'Dr. Smith'),
(2, 'Mathematics', 'Block B', 'Dr. Johnson'),
(3, 'Engineering', 'Block C', 'Dr. Williams'),
(4, 'Business Studies', 'Block D', 'Dr. Brown'),
(5, 'Information Technology', 'Block E', 'Dr. Davis');

INSERT INTO Students VALUES
(1, 'John Doe', '2000-01-15', 'Male', 1, NULL),
(2, 'Jane Smith', '2001-03-22', 'Female', 2, NULL),
(3, 'Michael Brown', '1999-07-10', 'Male', 3, NULL),
(4, 'Emily Davis', '2002-05-18', 'Female', 4, NULL),
(5, 'James Wilson', '2000-11-30', 'Male', 5, NULL),
(6, 'Sarah Johnson', '2001-08-25', 'Female', 1, NULL),
(7, 'David Lee', '1999-12-05', 'Male', 2, NULL),
(8, 'Emma Taylor', '2002-04-14', 'Female', 3, NULL),
(9, 'Daniel Martinez', '2000-09-20', 'Male', 4, NULL),
(10, 'Olivia Anderson', '2001-06-11', 'Female', 5, NULL);

INSERT INTO Courses VALUES
(1, 'Introduction to Programming', 1, 3),
(2, 'Calculus', 2, 4),
(3, 'Civil Engineering Basics', 3, 3),
(4, 'Business Management', 4, 3),
(5, 'Database Systems', 5, 4),
(6, 'Data Structures', 1, 3),
(7, 'Statistics', 2, 4),
(8, 'Mechanical Engineering', 3, 3),
(9, 'Marketing', 4, 3),
(10, 'Network Security', 5, 4);

INSERT INTO Enrollments VALUES
(1, 1, 1, '2024-01-10', 'Active'),
(2, 2, 2, '2024-01-11', 'Active'),
(3, 3, 3, '2024-01-12', 'Completed'),
(4, 4, 4, '2024-01-13', 'Active'),
(5, 5, 5, '2024-01-14', 'Dropped'),
(6, 6, 6, '2024-01-15', 'Active'),
(7, 7, 7, '2024-01-16', 'Completed'),
(8, 8, 8, '2024-01-17', 'Active'),
(9, 9, 9, '2024-01-18', 'Active'),
(10, 10, 10, '2024-01-19', 'Completed');

INSERT INTO Assessments VALUES
(1, 1, 1, 18.5, 17.0, 55.0),
(2, 2, 2, 15.0, 16.5, 48.0),
(3, 3, 3, 19.0, 18.0, 58.0),
(4, 4, 4, 14.5, 15.0, 45.0),
(5, 5, 5, 17.0, 16.0, 52.0),
(6, 6, 6, 12.0, 13.5, 40.0),
(7, 7, 7, 20.0, 19.5, 46.0),
(8, 8, 8, 16.5, 18.0, 50.0),
(9, 9, 9, 14.0, 17.5, 55.0),
(10, 10, 10, 18.0, 19.0, 58.0);