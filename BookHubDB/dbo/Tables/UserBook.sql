CREATE TABLE [dbo].[UserBook]
(
	UserBookID int NOT NULL,
	UserID int NOT NULL,
	BookID int NOT NULL,
	ReadStatusID int NOT NULL,
  CONSTRAINT [PK_USERBOOK] PRIMARY KEY CLUSTERED
  (
  [UserBookID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF), 
    CONSTRAINT [FK_UserBook_User] FOREIGN KEY ([UserID]) REFERENCES [User]([UserID]), 
    CONSTRAINT [FK_UserBook_Book] FOREIGN KEY ([BookID]) REFERENCES [Book]([BookID]),
    CONSTRAINT [FK_UserBook_ReadStatus] FOREIGN KEY ([ReadStatusID]) REFERENCES [ReadStatus]([ReadStatusID])

)
