USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Manager's_Selected_Students]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager's_Selected_Students](
	[Std_ID] [int] NOT NULL,
	[Inst_ID] [int] NOT NULL,
	[Exam_Id] [int] NOT NULL,
 CONSTRAINT [PK_Instructor's_Selected_Students] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC,
	[Inst_ID] ASC,
	[Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Manager's_Selected_Students]  WITH CHECK ADD  CONSTRAINT [FK_Instructor's_Selected_Students_Exam] FOREIGN KEY([Exam_Id])
REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Manager's_Selected_Students] CHECK CONSTRAINT [FK_Instructor's_Selected_Students_Exam]
GO
