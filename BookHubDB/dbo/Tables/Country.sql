CREATE TABLE [dbo].[Country]
(
CountryID int NOT NULL,
	Name varchar(255) NOT NULL,
	ShortName varchar(255) NOT NULL,
	Icon varchar(255) NOT NULL,
  CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED
  (
  [CountryID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)