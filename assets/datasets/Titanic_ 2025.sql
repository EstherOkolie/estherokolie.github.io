SELECT TOP (1000) [Name]
      ,[Age]
      ,[Sex]
      ,[Ticket]
      ,[Fare]
      ,[Cabin]
      ,[PassengerId]
      ,[Pclass]
      ,[Embarked]
  FROM [titanic_db].[dbo].[titanic2_2025]


  SELECT *
  From titanic_2025

--- Create table/ View

 CREATE VIEW titanic2_2025 AS
  SELECT
	Name,
	Age,
	Sex,
	Ticket,
	Fare,
	Cabin,
	PassengerId,
	Pclass,
	Embarked
From 
	titanic_2025

	SELECT 
    Name,
    Age,
    Sex,
    Ticket,
    Fare,
    Cabin,
    PassengerId,
    Pclass,
    Embarked
INTO titanic2_2025
FROM titanic_2025;

---Extracting info From column

SELECT CHARINDEX(',', Name) Name FROM titanic_2025

SELECT 
CAST(SUBSTRING(Name, 1, CHARINDEX(',', Name) -1)AS varchar(50)) as first_name,
	Age,
	Sex,
	Ticket,
	Fare,
	Cabin,
	PassengerId,
	Pclass,
	Embarked
FROM titanic_2025


  SELECT TOP (1000) [PassengerId]
      ,[Pclass]
      ,[Name]
      ,[Sex]
      ,[Age]
      ,[SibSp]
      ,[Parch]
      ,[Ticket]
      ,[Fare]
      ,[Cabin]
      ,[Embarked]
  FROM [titanic_db].[dbo].[titanic_2025]


  SELECT
	Name,
	Age,
	Sex,
	Ticket,
	Fare,
	Cabin,
	PassengerId,
	Pclass,
	Embarked
From 
	titanic_2025

--- Column Check

SELECT COUNT(*)
FROM [titanic_db].[dbo].[titanic2_2025]

SELECT COUNT (*)
FROM titanic2_2025

SELECT 
	COUNT(*)
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
 TABLE_NAME ='titanic_2025'

 SELECT 
	COUNT(*)
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
 TABLE_NAME ='titanic2_2025'

 SELECT
	COLUMN_NAME,
	DATA_TYPE
FROM
	 INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'titanic2_2025'


--- Duplicate Records Check

SELECT Name,
	COUNT(*) as duplicate_count
FROM
	titanic2_2025
GROUP BY
	Name
HAVING
	COUNT(*)> 1