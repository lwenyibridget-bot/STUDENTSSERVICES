USE StudentServices;
GO

-- Administrator Login
CREATE LOGIN AdminUser WITH PASSWORD = 'Admin@123';
CREATE USER AdminUser FOR LOGIN AdminUser;

-- Faculty Login
CREATE LOGIN FacultyUser WITH PASSWORD = 'Faculty@123';
CREATE USER FacultyUser FOR LOGIN FacultyUser;

-- Student Login
CREATE LOGIN StudentUser WITH PASSWORD = 'Student@123';
CREATE USER StudentUser FOR LOGIN StudentUser;
GO

-- Administrator has full access
ALTER ROLE db_owner
ADD MEMBER AdminUser;

-- Faculty can read and modify data
ALTER ROLE db_datareader
ADD MEMBER FacultyUser;

ALTER ROLE db_datawriter
ADD MEMBER FacultyUser;

-- Students can only view data
ALTER ROLE db_datareader
ADD MEMBER StudentUser;