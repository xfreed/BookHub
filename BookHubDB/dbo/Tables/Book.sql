CREATE TABLE [dbo].[Book]
(
	BookID int NOT NULL,
	GenreID int NOT NULL,
	CountryID int NOT NULL,
	Name varchar(255) NOT NULL,
	Description varchar(255) NOT NULL,
	Poster varchar(255) NOT NULL,
	AddDate date NOT NULL,
	TranslateStatusID int NOT NULL,
  CONSTRAINT [PK_BOOK] PRIMARY KEY CLUSTERED
  ([BookID]) WITH (IGNORE_DUP_KEY = OFF), 
    CONSTRAINT [FK_Book_Genre] FOREIGN KEY ([GenreID]) REFERENCES [Genre]([GenreID]), 
    CONSTRAINT [FK_Book_Country] FOREIGN KEY ([CountryID]) REFERENCES [Country]([CountryID]), 
    CONSTRAINT [FK_Book_TranslateStatus] FOREIGN KEY ([TranslateStatusID]) REFERENCES [TranslateStatus]([TranslateStatusID])
)
