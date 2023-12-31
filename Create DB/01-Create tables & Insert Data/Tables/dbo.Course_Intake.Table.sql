USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Course_Intake]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Intake](
	[Course_ID] [int] NOT NULL,
	[Intake_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course_Intake] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC,
	[Intake_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Course_Intake_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Course_Intake] CHECK CONSTRAINT [FK_Course_Intake_Course]
GO
ALTER TABLE [dbo].[Course_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Course_Intake_Intake] FOREIGN KEY([Intake_ID])
REFERENCES [dbo].[Intake] ([Intake_ID])
GO
ALTER TABLE [dbo].[Course_Intake] CHECK CONSTRAINT [FK_Course_Intake_Intake]
GO
