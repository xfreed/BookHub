CREATE TABLE [dbo].[TranslateStatus]
(
	TranslateStatusID int NOT NULL,
	Name varchar(255) NOT NULL,
  CONSTRAINT [PK_TRANSLATESTATUS] PRIMARY KEY CLUSTERED
  (
  [TranslateStatusID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
