CREATE TABLE [dbo].[t1] (

	[c1] int NOT NULL
);


GO
ALTER TABLE [dbo].[t1] ADD CONSTRAINT pk_key primary key NONCLUSTERED ([c1]);