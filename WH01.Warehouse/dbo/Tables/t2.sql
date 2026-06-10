CREATE TABLE [dbo].[t2] (

	[c1] int NOT NULL, 
	[c2] int NULL
);


GO
ALTER TABLE [dbo].[t2] ADD CONSTRAINT fk_key FOREIGN KEY ([c1]) REFERENCES [dbo].[t1]([c1]);