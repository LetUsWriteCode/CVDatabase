CREATE TABLE [dbo].[Address] (
    [AddressID]   SMALLINT       IDENTITY (1, 1) NOT NULL,
    [AddLine1]    NVARCHAR (100) NULL,
    [AddLine2]    NVARCHAR (100) NULL,
    [AddLine3]    NVARCHAR (100) NULL,
    [AddLine4]    NVARCHAR (100) NULL,
    [AddLine5]    NVARCHAR (100) NULL,
    [Postcode]    NVARCHAR (10)  NULL,
    [AddressHash] NVARCHAR (32)  NOT NULL,
    CONSTRAINT [PK_Address_AddressID] PRIMARY KEY CLUSTERED ([AddressID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UIX_Address_AddressHash]
    ON [dbo].[Address]([AddressHash] ASC);

