USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Course_Track]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Track](
	[Course_ID] [int] NOT NULL,
	[Track_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course_Track] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC,
	[Track_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course_Track]  WITH CHECK ADD  CONSTRAINT [FK_Course_Track_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Course_Track] CHECK CONSTRAINT [FK_Course_Track_Course]
GO
ALTER TABLE [dbo].[Course_Track]  WITH CHECK ADD  CONSTRAINT [FK_Course_Track_Track] FOREIGN KEY([Track_ID])
REFERENCES [dbo].[Track] ([Track_ID])
GO
ALTER TABLE [dbo].[Course_Track] CHECK CONSTRAINT [FK_Course_Track_Track]
GO
