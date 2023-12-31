USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Questions_Consist_Exam]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions_Consist_Exam](
	[Questions_ID] [int] NOT NULL,
	[Exam_ID] [int] NOT NULL,
 CONSTRAINT [PK_Questions_Consist_Exam] PRIMARY KEY CLUSTERED 
(
	[Questions_ID] ASC,
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Questions_Consist_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Consist_Exam_Exam] FOREIGN KEY([Exam_ID])
REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Questions_Consist_Exam] CHECK CONSTRAINT [FK_Questions_Consist_Exam_Exam]
GO
