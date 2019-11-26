CREATE TABLE [dbo].[User]
(
	UserID int NOT NULL,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Username varchar(50) NOT NULL UNIQUE,
	Email varchar(50) NOT NULL UNIQUE,
	Password varchar(50) NOT NULL,
	Icon varchar(255) NOT NULL,
  CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED
  (
  [UserID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)
)
