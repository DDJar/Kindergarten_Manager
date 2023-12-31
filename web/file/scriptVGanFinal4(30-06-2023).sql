USE A01_RT03
GO
/****** Object:  Table [dbo].[Announce]    Script Date: 7/11/2023 10:44:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Announce(
	idAnn nchar(10) NOT NULL,
	idUser nchar(10) NOT NULL,
	datePost datetime NOT NULL,
	titleAnn nvarchar(50) NOT NULL,
	contentAnn nchar(1000) NOT NULL,
	status nchar(10) NULL,
 CONSTRAINT PK_Announce PRIMARY KEY CLUSTERED 
(
	idAnn ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 7/11/2023 10:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Child(
	idChild nchar(10) NOT NULL,
	childName nvarchar(50) NOT NULL,
	idUser nchar(10) NOT NULL,
	dob date NOT NULL,
	gender char(1) NOT NULL,
	progress nvarchar(500) NULL,
	weight real NULL,
	height int NULL,
	health nvarchar(500) NULL,
	imgAvt nchar(20) NULL,
	imgDob nchar(30) NULL,
 CONSTRAINT PK_Child PRIMARY KEY CLUSTERED 
(
	idChild ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/11/2023 10:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Class(
	idRegist nchar(10) NOT NULL,
	idChild nchar(10) NOT NULL,
	idClass nchar(10) NOT NULL,
	status nchar(10) NULL,
 CONSTRAINT [PK_SkillClass] PRIMARY KEY CLUSTERED 
(
	idRegist ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table [dbo].[ClassList]    Script Date: 7/11/2023 10:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE ClassList(
	idClass nchar(10) NOT NULL,
	className nchar(50) NOT NULL,
	idTeacher nchar(10) NOT NULL,
	totalSeat int NOT NULL,
	timeStartSemester datetime NOT NULL,
	timeEndSemester datetime NOT NULL,
	tuition int NOT NULL,
	status nchar(10) NULL,
	condition nchar(2) NULL,
	slot nchar(15) NULL,
 CONSTRAINT PK_ClassList PRIMARY KEY CLUSTERED 
(
	idClass ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 7/11/2023 10:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE FeedBack(
	idFeedBack nchar(10) NOT NULL,
	idParent nchar(10) NOT NULL,
	contentFeedback nvarchar(500) NULL,
	rate int NOT NULL,
	idTeacher nchar(10) NOT NULL,
	[date] date NOT NULL,
	statu nchar(10) NULL,
 CONSTRAINT[PK_FeedBack PRIMARY KEY CLUSTERED 
(
	idFeedBack ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.ListFeesV2    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE ListFeesV2(
	idPay nchar(10) NOT NULL,
	idNameFee nchar(10) NULL,
	idChild nchar(10) NULL,
	tuition int NULL,
	status nchar(10) NULL,
	idTuition nchar(10) NULL,
 CONSTRAINT PK_ListFeesV2 PRIMARY KEY CLUSTERED 
(
idPay ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table Proposal    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Proposal(
	idProposal nchar(10) NOT NULL,
	idUser nchar(10) NOT NULL,
	title nvarchar(500) NULL,
	contentProposal nvarchar(1000) NOT NULL,
	timeStart datetime NOT NULL,
	timeEnd datetime NOT NULL,
	accept int NOT NULL,
	status nchar(10) NULL,
	totalVote int NOT NULL,
 CONSTRAINT PK_Proposal PRIMARY KEY CLUSTERED 
(
	idProposal ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table SalaryList    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE SalaryList(
	idSalary nchar(10) NOT NULL,
	idTeacher nchar(10) NOT NULL,
	salary [int] NOT NULL,
	[dateStart] [date] NOT NULL,
	[dateEnd] [date] NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_SalaryList] PRIMARY KEY CLUSTERED 
(
	[idSalary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[idRegist] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NOT NULL,
	[idSkill] [nchar](10) NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[idRegist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillList]    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillList](
	[idSkill] [nchar](10) NOT NULL,
	[skillName] [nchar](50) NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[totalSeat] [int] NOT NULL,
	[timeStartSemester] [datetime] NOT NULL,
	[timeEndSemester] [datetime] NOT NULL,
	[tuition] [int] NOT NULL,
	[status] [nchar](10) NULL,
	[condition] [nchar](2) NULL,
	[slot] [nchar](15) NULL,
 CONSTRAINT [PK_SkillList] PRIMARY KEY CLUSTERED 
(
	[idSkill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuitionV2]    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuitionV2](
	[idTuition] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NULL,
	[tuition] [int] NULL,
	[datePay] [datetime] NULL,
	[dateStart] [datetime] NULL,
	[dateEnd] [datetime] NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_TuitionV2] PRIMARY KEY CLUSTERED 
(
	[idTuition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [nchar](10) NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [char](1) NOT NULL,
	[email] [nchar](150) NULL,
	[phoneNumber] [varchar](10) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role] [nchar](10) NULL,
	[idChild] [nchar](10) NULL,
	[certicate] [nvarchar](50) NULL,
	[imgAvt] [nchar](30) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserVote]    Script Date: 6/30/2023 9:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserVote](
	[idVote] [nchar](10) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[vote] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[idProposal] [nchar](10) NOT NULL,
 CONSTRAINT [PK_UserVote] PRIMARY KEY CLUSTERED 
(
	[idVote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Announce]  WITH CHECK ADD  CONSTRAINT [FK_Announce_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Announce] CHECK CONSTRAINT [FK_Announce_Users]
GO
ALTER TABLE [dbo].[Child]  WITH CHECK ADD  CONSTRAINT [FK_Child_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Child] CHECK CONSTRAINT [FK_Child_Users]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Child] FOREIGN KEY([idChild])
REFERENCES [dbo].[Child] ([idChild])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Child]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_ClassList] FOREIGN KEY([idClass])
REFERENCES [dbo].[ClassList] ([idClass])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_ClassList]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Users] FOREIGN KEY([idParent])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Users]
GO
ALTER TABLE [dbo].[ListFeesV2]  WITH CHECK ADD  CONSTRAINT [FK_ListFeesV2_TuitionV2] FOREIGN KEY([idTuition])
REFERENCES [dbo].[TuitionV2] ([idTuition])
GO
ALTER TABLE [dbo].[ListFeesV2] CHECK CONSTRAINT [FK_ListFeesV2_TuitionV2]
GO
ALTER TABLE [dbo].[Proposal]  WITH CHECK ADD  CONSTRAINT [FK_Proposal_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Proposal] CHECK CONSTRAINT [FK_Proposal_Users]
GO
ALTER TABLE [dbo].[SalaryList]  WITH CHECK ADD  CONSTRAINT [FK_SalaryList_Users] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[SalaryList] CHECK CONSTRAINT [FK_SalaryList_Users]
GO
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Child] FOREIGN KEY([idChild])
REFERENCES [dbo].[Child] ([idChild])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [FK_Skill_Child]
GO
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [FK_Skill_SkillList] FOREIGN KEY([idSkill])
REFERENCES [dbo].[SkillList] ([idSkill])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [FK_Skill_SkillList]
GO
ALTER TABLE [dbo].[TuitionV2]  WITH CHECK ADD  CONSTRAINT [FK_TuitionV2_Child] FOREIGN KEY([idChild])
REFERENCES [dbo].[Child] ([idChild])
GO
ALTER TABLE [dbo].[TuitionV2] CHECK CONSTRAINT [FK_TuitionV2_Child]
GO
ALTER TABLE [dbo].[UserVote]  WITH CHECK ADD  CONSTRAINT [FK_UserVote_Proposal] FOREIGN KEY([idProposal])
REFERENCES [dbo].[Proposal] ([idProposal])
GO
ALTER TABLE [dbo].[UserVote] CHECK CONSTRAINT [FK_UserVote_Proposal]
GO
ALTER TABLE [dbo].[UserVote]  WITH CHECK ADD  CONSTRAINT [FK_UserVote_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[UserVote] CHECK CONSTRAINT [FK_UserVote_Users]
GO
