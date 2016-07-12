CREATE TABLE [dbo].[SystemUser] (
    [UserId]       INT            IDENTITY (1, 1) NOT NULL,
    [UserName]     NVARCHAR (50)  NOT NULL,
    [Email]        NVARCHAR (150) NOT NULL,
    [FirstName]    NVARCHAR (50)  NOT NULL,
    [MiddleName]   NVARCHAR (150) NULL,
    [LastName]     NVARCHAR (150) NOT NULL,
    [FullName]     AS             (((([FirstName]+' ')+[MiddleName])+' ')+[LastName]),
    [Password]     NVARCHAR (200) NOT NULL,
    [CreatedDate]  DATETIME       NOT NULL,
    [ModifiedDate] DATETIME       NULL,
    CONSTRAINT [PK_SystemUser] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

