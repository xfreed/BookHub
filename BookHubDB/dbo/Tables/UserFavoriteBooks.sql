CREATE TABLE [dbo].[UserFavoriteBooks]
(
	UserFavoriteBooksID int NOT NULL,
	UserID int NOT NULL,
	BookID int NOT NULL,
  CONSTRAINT [PK_USERFAVORITEBOOKS] PRIMARY KEY CLUSTERED
  (
  [UserFavoriteBooksID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF), 
    CONSTRAINT [FK_UserFavoriteBooks_User] FOREIGN KEY ([UserID]) REFERENCES [User]([UserID]), 
    CONSTRAINT [FK_UserFavoriteBooks_Book] FOREIGN KEY ([BookID]) REFERENCES [Book]([BookID])

)
