USE [A01_RT03]
GO
/****** Object:  Table [dbo].[Announce]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announce](
	[idAnn] [nchar](10) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[titleAnn] [nvarchar](50) NOT NULL,
	[contentAnn] [nchar](1000) NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Announce] PRIMARY KEY CLUSTERED 
(
	[idAnn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child](
	[idChild] [nchar](10) NOT NULL,
	[childName] [nvarchar](50) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [char](1) NOT NULL,
	[progress] [nvarchar](500) NULL,
	[weight] [real] NULL,
	[height] [int] NULL,
	[health] [nvarchar](500) NULL,
	[imgAvt] [nchar](20) NULL,
	[imgDob] [nchar](30) NULL,
 CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED 
(
	[idChild] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[idRegist] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NOT NULL,
	[idClass] [nchar](10) NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_SkillClass] PRIMARY KEY CLUSTERED 
(
	[idRegist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassList]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassList](
	[idClass] [nchar](10) NOT NULL,
	[className] [nchar](50) NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[totalSeat] [int] NOT NULL,
	[timeStartSemester] [datetime] NOT NULL,
	[timeEndSemester] [datetime] NOT NULL,
	[tuition] [int] NOT NULL,
	[status] [nchar](10) NULL,
	[condition] [nchar](2) NULL,
	[slot] [nchar](15) NULL,
 CONSTRAINT [PK_ClassList] PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[idFeedBack] [nchar](10) NOT NULL,
	[idParent] [nchar](10) NOT NULL,
	[contentFeedback] [nvarchar](500) NULL,
	[rate] [int] NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[date] [date] NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[idFeedBack] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListFeesV2]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListFeesV2](
	[idPay] [nchar](10) NOT NULL,
	[idNameFee] [nchar](10) NULL,
	[idChild] [nchar](10) NULL,
	[tuition] [int] NULL,
	[status] [nchar](10) NULL,
	[idTuition] [nchar](10) NULL,
 CONSTRAINT [PK_ListFeesV2] PRIMARY KEY CLUSTERED 
(
	[idPay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proposal]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proposal](
	[idProposal] [nchar](10) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[title] [nvarchar](500) NULL,
	[contentProposal] [nvarchar](1000) NOT NULL,
	[timeStart] [datetime] NOT NULL,
	[timeEnd] [datetime] NOT NULL,
	[accept] [int] NOT NULL,
	[status] [nchar](10) NULL,
	[totalVote] [int] NOT NULL,
 CONSTRAINT [PK_Proposal] PRIMARY KEY CLUSTERED 
(
	[idProposal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryList]    Script Date: 1/13/2024 6:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryList](
	[idSalary] [nchar](10) NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[salary] [int] NOT NULL,
	[dateStart] [date] NOT NULL,
	[dateEnd] [date] NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_SalaryList] PRIMARY KEY CLUSTERED 
(
	[idSalary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 1/13/2024 6:31:34 PM ******/
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
/****** Object:  Table [dbo].[SkillList]    Script Date: 1/13/2024 6:31:34 PM ******/
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
/****** Object:  Table [dbo].[TuitionV2]    Script Date: 1/13/2024 6:31:34 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 1/13/2024 6:31:34 PM ******/
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
/****** Object:  Table [dbo].[UserVote]    Script Date: 1/13/2024 6:31:34 PM ******/
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
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'atp4317132', N'Le Thi Chieu', N'fxg1155628', CAST(N'2018-05-26' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'ghefp3522363299.jpg ', N'ficxk4984761869.jpg           ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'gtc8746432', N'Le Chieu Cong', N'fxg1155628', CAST(N'2020-06-16' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'kfm4845144', N'Bui Lan Anh', N'ssg1137755', CAST(N'2019-01-09' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'kukbn7884863795.jpg ', N'azsse4342487311.jpg           ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'ntj3957943', N'Bui Van Toan', N'ssg1137755', CAST(N'2020-06-25' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'azabh8726686759.jpg ', N'rpozt2442654331.jpg           ')
GO
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'bem8112953', N'ntj3957943', N'qzy7156512', N'Done      ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'dyg5827795', N'atp4317132', N'hxb2189365', N'Done      ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'hgq4254767', N'kfm4845144', N'cax8725231', N'Done      ')
GO
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'cax8725231', N'Choi_A                                            ', N'aeq8361189', 29, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 200, N'Done      ', N'04', N'Allday         ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'eqd2485274', N'Ga                                                ', N'kqy9657246', 200, CAST(N'2023-09-14T10:16:00.000' AS DateTime), CAST(N'2023-09-16T10:16:00.000' AS DateTime), 22, N'Done      ', N'04', N'Allday         ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'hxb2189365', N'La_A                                              ', N'rfg5766266', 29, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 200, N'Done      ', N'05', N'Allday         ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'ick6728919', N'La_C                                              ', N'kqy9657246', 30, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 200, N'Done      ', N'05', N'Allday         ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'qzy7156512', N'Mam_D                                             ', N'qik1741876', 29, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 200, N'Done      ', N'03', N'Allday         ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'uae3741426', N'Mam_B                                             ', N'kqe8515949', 30, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 200, N'Done      ', N'03', N'Allday         ')
GO
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'bmm3826222', N'qls6443384', N'ntj3957943', 150, N'No        ', N'lab2493955')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'elp5842267', N'cax8725231', N'kfm4845144', 200, N'No        ', N'tgm2697147')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'hui5249461', N'dlo5816577', N'ntj3957943', 150, N'No        ', N'lab2493955')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'odd3425812', N'qzy7156512', N'ntj3957943', 200, N'No        ', N'lab2493955')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'str2156213', N'ila6548412', N'kfm4845144', 160, N'No        ', N'tgm2697147')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'uku1788273', N'syq7599721', N'atp4317132', 150, N'No        ', N'igj6816424')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'vpj4779654', N'vof6156822', N'kfm4845144', 160, N'No        ', N'tgm2697147')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'vrk9946353', N'bxq2273969', N'atp4317132', 150, N'No        ', N'igj6816424')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'zaq1592784', N'hxb2189365', N'atp4317132', 200, N'No        ', N'igj6816424')
GO
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'axn6485676', N'ntj3957943', N'qls6443384', N'Done      ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'hae5388889', N'kfm4845144', N'vof6156822', N'Done      ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'jap3868936', N'ntj3957943', N'dlo5816577', N'Done      ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'jyc6572882', N'kfm4845144', N'ila6548412', N'Done      ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'ndc1516725', N'atp4317132', N'bxq2273969', N'Done      ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'vuc7329181', N'atp4317132', N'syq7599721', N'Done      ')
GO
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'bxq2273969', N'English_La                                        ', N'kqe8515949', 24, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 150, N'Done      ', N'05', N'3              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'cdc9361654', N'Dance_La                                          ', N'kqy9657246', 24, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 150, N'Done      ', N'05', N'4              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'dlo5816577', N'Art_Mam                                           ', N'aeq8361189', 19, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 150, N'Done      ', N'03', N'2              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'ila6548412', N'Music_Choi                                        ', N'rfg5766266', 24, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 160, N'Done      ', N'04', N'4              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'qls6443384', N'Music_Mam                                         ', N'rfg5766266', 29, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 150, N'Done      ', N'03', N'1              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'syq7599721', N'YoGa_La                                           ', N'qik1741876', 24, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 150, N'Done      ', N'05', N'2              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'vof6156822', N'YouGa_Choi                                        ', N'qik1741876', 24, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), 160, N'Done      ', N'04', N'3              ')
GO
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'igj6816424', N'atp4317132', 500, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), N'No        ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'lab2493955', N'ntj3957943', 500, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), N'No        ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'tgm2697147', N'kfm4845144', 520, CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-07-01T07:00:00.000' AS DateTime), CAST(N'2023-08-01T16:30:00.000' AS DateTime), N'No        ')
GO
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'aeq8361189', N'Bui Tuan Dung', N'12 Nong Son - Quang Nam', CAST(N'2002-02-12' AS Date), N'M', N'dung@gmail.com                                                                                                                                        ', N'0986235920', N'admin', N'Teacher   ', N'NULL      ', N'eeyao8382151649.jpg', N'bcbat7341918349.jpg           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'fxg1155628', N'Le Chieu Long', N'134 Nong Son - Quang Nam', CAST(N'2002-01-25' AS Date), N'M', N'long@gmail.com                                                                                                                                        ', N'0129846789', N'admin', N'Parent    ', N'NULL      ', N'NULL', N'cjtsi6844244664.jpg           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'kqe8515949', N'Dinh Sy Quoc Viet', N'01-An Hoa 4- Khue Trung- Cam Le - Da Nang', CAST(N'2002-09-06' AS Date), N'M', N'viet@gmail.com                                                                                                                                        ', N'0961103209', N'admin', N'Teacher   ', N'NULL      ', N'jkkff2778145541.jpg', N'pojea3268682778.jpg           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'kqy9657246', N'Nguyen Tuyet Nhi', N'122 Nong Son - Quang Nam', CAST(N'2002-04-10' AS Date), N'F', N'nhi@gmail.com                                                                                                                                         ', N'0729472048', N'admin', N'Teacher   ', N'NULL      ', N'qaqrm1446245631.jpg', N'iyixy5478663467.jpg           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'pxt9763168', N'Admin', N'12 Nong Son - Quang Nam', CAST(N'1997-01-06' AS Date), N'M', N'admin@gmail.com                                                                                                                                       ', N'0123456789', N'admin', N'Admin     ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'qik1741876', N'Dinh Thi Cat Tuong', N'122 Nong Son - Quang Nam', CAST(N'2002-05-22' AS Date), N'F', N'tuong@gmail.com                                                                                                                                       ', N'0629472048', N'admin', N'Teacher   ', N'NULL      ', N'xzxid6952823779.jpg', N'jfruz7882435196.jpg           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'rfg5766266', N'Bui Hoang Y', N'13-Nong Son -Quang Nam', CAST(N'2002-01-17' AS Date), N'M', N'y@gmail.com                                                                                                                                           ', N'0891123452', N'admin', N'Teacher   ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'ssg1137755', N'Bui Van Gia Phat', N'114 Nong Son - Quang Nam', CAST(N'2002-08-14' AS Date), N'M', N'phat@gmail.com                                                                                                                                        ', N'0129889289', N'admin', N'Parent    ', N'NULL      ', N'NULL', N'moleo1925387868.jpg           ')
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
