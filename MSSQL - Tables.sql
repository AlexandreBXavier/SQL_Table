/*******************************************************************************
 MSSQL - Transact-SQL - Sample 01
 Subject: Creating table, inserting and deleting table, erasing and deleting registry ...
 Attention: You should create a database called Samples
*******************************************************************************/

-- Choosing the Database
-- If it does not exist, you must create
USE Samples
GO

-- Create the table
CREATE TABLE Contacts
(
	idContact		INT IDENTITY(1,1) NOT NULL,
	nameContact		VARCHAR(30) NOT NULL,
	cellPhone		VARCHAR(11) NOT NULL,
	dateBirth		DATETIME NOT NULL
)
GO

--Entering record
INSERT INTO Contacts (nameContact, cellPhone, dateBirth)
SELECT 'ALEX',  '99987654321', '03-09-1974'
GO

INSERT INTO Contacts (nameContact, cellPhone, dateBirth)
SELECT 'JASON', '99321321320', '01-05-1984'
GO

INSERT INTO Contacts (nameContact, cellPhone, dateBirth)
SELECT 'MARY',  '99888888880', '02-04-1994'
GO

INSERT INTO Contacts (nameContact, cellPhone, dateBirth)
SELECT 'KATY',  '99123456780', '04-01-2009'
GO
INSERT INTO Contacts (nameContact, cellPhone, dateBirth)
SELECT 'JOHN',  '99555555556', '05-06-2014'
GO

INSERT INTO Contacts (nameContact, cellPhone, dateBirth)
SELECT 'YOUGO', '99444444441', '09-03-1947'
GO

-- Showing the records
SELECT idContact, nameContact, cellPhone, dateBirth FROM Contacts
GO

-- Deleting the records
DELETE FROM Contacts
GO

-- Deleting table
DROP TABLE Contacts
GO