CREATE EXTERNAL TABLE [dbo].[Athletes]
(
	 [Athlete_SID] INT,
	 [Athlete_Name] VARCHAR(250),
   [Age] INT,
   [Gender] VARCHAR(10),
	 [Country_SID] INT,
	 [Discipline_SID] INT
)
WITH
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/athletes/athletes.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;

DROP EXTERNAL TABLE Athletes;
CREATE EXTERNAL TABLE [dbo].[Coaches]
(
  [Coach_SID] INT,
  [Coach_Name] VARCHAR(250),
  [Country_SID] INT,
  [Discipline_SID] INT
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/coaches/coaches.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;



CREATE EXTERNAL TABLE [dbo].[Discipline]
(
  [Discipline_SID] INT,
  [Discipline] VARCHAR(250)
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/discipline/discipline.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;

Select * from Discipline;

CREATE EXTERNAL TABLE [dbo].[Discipline_Gender_Fact]
(
  [Discipline_SID] INT,
  [Female] INT,
  [Male] INT,
  [Total] INT
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/discipline_gender_fact/discipline_gender_fact.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;

CREATE EXTERNAL TABLE [dbo].[Medals_Fact]
(
  [Medals_Fact_SID] INT,
  [Medal_Date] DATE,
  [Athlete_SID] INT,
  [Event_SID] INT,
  [Gold_Medals] INT,
  [Silver_Medals] INT,
  [Bronze_Medals] INT
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/medals_fact/medals_fact.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;
Select * from Medals_fact;

CREATE EXTERNAL TABLE [dbo].[Event]
(
  [Event_SID] INT,
  [Event] VARCHAR(100)
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/event/event.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;

CREATE EXTERNAL TABLE [dbo].[Countries_medal_fact]
(
  [Country_SID] INT,
  [Country_Medal_Fact_SID] INT,
  [Gold] INT,
  [Silver] INT,
  [Bronze] INT,
  [Total] INT,
  [Rank] INT
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/countries_medal_fact/countries_medal_fact.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;

Select * from Countries_medal_fact;

CREATE EXTERNAL TABLE [dbo].[Teams]
(
  [Team_SID] INT,
  [Team_Name] VARCHAR(250),
  [Discipline_SID] INT,
  [Country_SID] INT,
  [Event_SID] INT
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/teams/teams.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;

Select * from Teams;

CREATE EXTERNAL TABLE [dbo].[Countries]
(
  [Country_SID] INT,
  [Country] VARCHAR(250)
)
WITH 
(
	LOCATION = 'tokyo-olympic-data/Gold-Layer/countries/countries.parquet',
	DATA_SOURCE = TokyoOlympic,
	FILE_FORMAT = file_format_parquet
)
GO;


