USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Course_Branch]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Branch](
	[Course_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course_Branch] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC,
	[Branch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course_Branch]  WITH CHECK ADD  CONSTRAINT [FK_Course_Branch_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Course_Branch] CHECK CONSTRAINT [FK_Course_Branch_Branch]
GO
ALTER TABLE [dbo].[Course_Branch]  WITH CHECK ADD  CONSTRAINT [FK_Course_Branch_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Course_Branch] CHECK CONSTRAINT [FK_Course_Branch_Course]
GO
