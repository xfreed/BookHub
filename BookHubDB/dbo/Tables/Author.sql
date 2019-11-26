CREATE TABLE [dbo].[Author]
(
AuthorID int NOT NULL,
	FirstName varchar(255) NOT NULL,
	LastName varchar(255) NOT NULL,
	MiddleName varchar(255) NOT NULL,
	CountryID int NOT NULL,
  CONSTRAINT [PK_AUTHOR] PRIMARY KEY CLUSTERED
  (
  [AuthorID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF), 
    CONSTRAINT [FK_Author_Country] FOREIGN KEY (CountryID) REFERENCES [Country]([CountryID]) 

)