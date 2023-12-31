USE [A01_RT03]
GO
/****** Object:  Table [dbo].[Announce]    Script Date: 7/11/2023 10:44:05 PM ******/
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
/****** Object:  Table [dbo].[Child]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[ClassList]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[FeedBack]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[ListFeesV2]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[Proposal]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[SalaryList]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[SkillList]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[TuitionV2]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 7/11/2023 10:44:06 PM ******/
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
/****** Object:  Table [dbo].[UserVote]    Script Date: 7/11/2023 10:44:06 PM ******/
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
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'mjz3731566', N'etp3271898', CAST(N'2023-06-30T22:09:57.050' AS DateTime), N'What is a Proposal? Definition', N'A proposal is a written document that is submitted to an organization with the aim of persuading them to accept a particular course of action, or provide funding for a specific project. A proposal can be either formal or informal, but most commonly takes the form of a business proposal. This type of proposal is usually made by businesses who are seeking investment from venture capitalists, or looking to secure contracts from government agencies. In this blog post, we will explore the different types of proposals, and provide tips on how to write a successful one.                                                                                                                                                                                                                                                                                                                                                                                                                                               ', N'          ')
GO
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'dgi3535644', N'Dinh Xuan', N'xdu5179572', CAST(N'2020-06-11' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'dzo2955383', N'Dinh Han', N'xdu5179572', CAST(N'2019-06-05' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', N'vuxgk4141716177.jpg           ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'kdq6763272', N'Bui Nam', N'bfz4848976', CAST(N'2020-02-11' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'ltc5878259', N'Dinh Van Toan', N'xdu5179572', CAST(N'2019-02-02' AS Date), N'M', N'NULL', 12, 138, N'Good', N'qnemd2757555481.png ', N'kymyu1163213436.png           ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'nhp3343974', N'Dinh Ngan', N'xdu5179572', CAST(N'2020-06-19' AS Date), N'F', N'NULL', 12, 135, N'Good', N'NULL                ', N'                              ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'qmo6571743', N'Bui Tuan Hung', N'bfz4848976', CAST(N'2020-06-30' AS Date), N'F', N'NULL', 12, 135, N'Good', N'mxnlz8621627745.png ', N'                              ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'zoi2724697', N'Bui Thi Lan Bong', N'bfz4848976', CAST(N'2018-01-10' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
GO
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'gnx7685233', N'dgi3535644', N'qhb3462751', N'Accept    ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'hum7473372', N'dzo2955383', N'idf3613464', N'Accept    ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'izj2663129', N'kdq6763272', N'qhb3462751', N'Regist    ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'jje2444717', N'ltc5878259', N'idf3613464', N'Accept    ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'kyj7414341', N'nhp3343974', N'qhb3462751', N'Accept    ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'xkr9517589', N'qmo6571743', N'dug5535717', N'Accept    ')
GO
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'dug5535717', N'Class_A_01                                        ', N'bfz4848976', 29, CAST(N'2023-06-30T22:02:00.000' AS DateTime), CAST(N'2023-08-30T22:02:00.000' AS DateTime), 100, N'NULL      ', N'03', N'allday         ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'idf3613464', N'Class_B_01                                        ', N'ctp4599417', 28, CAST(N'2023-07-01T02:24:00.000' AS DateTime), CAST(N'2023-09-01T02:24:00.000' AS DateTime), 100, N'NULL      ', N'04', N'morning        ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'qhb3462751', N'Class_A_02                                        ', N'rqk6624393', 28, CAST(N'2023-07-01T02:26:00.000' AS DateTime), CAST(N'2023-09-01T02:26:00.000' AS DateTime), 70, N'NULL      ', N'03', N'allday         ')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'xjq9464973', N'Class_C_01                                        ', N'dbe4593458', 30, CAST(N'2023-07-01T02:25:00.000' AS DateTime), CAST(N'2023-09-01T02:25:00.000' AS DateTime), 170, N'NULL      ', N'05', N'allday         ')
GO
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'dky5554599', N'idf3613464', N'dzo2955383', 100, N'Yes       ', N'vyc4629552')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'gnt1648879', N'srp1599185', N'dzo2955383', 70, N'Yes       ', N'hah2545981')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'hru3827817', N'qhb3462751', N'dgi3535644', 70, N'Yes       ', N'suy5373987')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'keq3329932', N'dug5535717', N'qmo6571743', 100, N'No        ', N'srz9532313')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'qip4735589', N'srp1599185', N'ltc5878259', 70, N'Yes       ', N'zey8364497')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'rcy1987889', N'sgg3572666', N'qmo6571743', 20, N'No        ', N'srz9532313')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'vqf5985118', N'mgu5821925', N'ltc5878259', 70, N'Yes       ', N'zey8364497')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'vzm2518951', N'srp1599185', N'dzo2955383', 70, N'Yes       ', N'egb7563295')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'xtc7781366', N'idf3613464', N'ltc5878259', 100, N'Yes       ', N'zey8364497')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'yig4341134', N'qhb3462751', N'nhp3343974', 70, N'Yes       ', N'uus6123367')
INSERT [dbo].[ListFeesV2] ([idPay], [idNameFee], [idChild], [tuition], [status], [idTuition]) VALUES (N'zap2479179', N'srp1599185', N'dzo2955383', 70, N'Yes       ', N'evz8216697')
GO
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'gmd6851538', N'etp3271898', N'A proposal is a document that outlines an agreement between', N'A formal proposal is a document that is written in a specific format and contains specific elements. The format of a formal proposal can vary depending on the type of business and the project being proposed, but most formal proposals include an introduction, background information, description of the proposed project, budget, and timeline.

The elements of a formal proposal are:

â Introduction: This section should provide an overview of the problem that the proposal aims to solve. It should also include a brief description of the proposed solution and its benefits.

â Background Information: This section should provide some context for the problem and proposed solution. It can include information about the company or organizations involved, as well as any relevant history or background information.', CAST(N'2023-06-30T22:10:36.830' AS DateTime), CAST(N'2023-07-07T22:10:36.830' AS DateTime), 1, N'active    ', 1)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'otl1617195', N'bfz4848976', N'you need to write a proposal', N'A proposal is a document that outlines an idea, plan, or project, and is typically used in business settings to persuade potential clients, investors, or partners to support the venture. There are many different types of proposals, but most follow a similar structure:

1. Introduction: The introduction should briefly explain what the proposal is for and why it is needed.', CAST(N'2023-06-30T22:12:49.253' AS DateTime), CAST(N'2023-07-07T22:12:49.253' AS DateTime), 0, N'active    ', 1)
GO
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'aja4787949', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'ftf4914119', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'hty1229716', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'ibf9864389', N'ltc5878259', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'ihz1975877', N'ltc5878259', N'mgu5821925', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'jer7676497', N'dzo2955383', N'mgu5821925', N'Regist    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'lbp2734161', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'lqt9721861', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'ngj8522514', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'oxt1495727', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'qsr6114154', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'sbb5231158', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'tir1452733', N'qmo6571743', N'sgg3572666', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'uvy4356999', N'qmo6571743', N'cba5671397', N'Regist    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'vxp5838818', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'xpl1176374', N'dzo2955383', N'srp1599185', N'Accept    ')
INSERT [dbo].[Skill] ([idRegist], [idChild], [idSkill], [status]) VALUES (N'xur4121478', N'dzo2955383', N'srp1599185', N'Accept    ')
GO
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'cba5671397', N'Math_A_01                                         ', N'ctp4599417', 30, CAST(N'2023-07-01T02:28:00.000' AS DateTime), CAST(N'2023-09-01T02:28:00.000' AS DateTime), 30, N'NULL      ', N'03', N'2              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'mgu5821925', N'English_B_01                                      ', N'dbe4593458', 29, CAST(N'2023-07-01T02:30:00.000' AS DateTime), CAST(N'2023-09-01T02:30:00.000' AS DateTime), 70, N'NULL      ', N'04', N'1              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'sgg3572666', N'Math_A_02                                         ', N'bfz4848976', 29, CAST(N'2023-06-30T22:03:00.000' AS DateTime), CAST(N'2023-08-30T22:03:00.000' AS DateTime), 20, N'NULL      ', N'03', N'1              ')
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [tuition], [status], [condition], [slot]) VALUES (N'srp1599185', N'Dance_B_03                                        ', N'bfz4848976', 26, CAST(N'2023-07-06T00:08:00.000' AS DateTime), CAST(N'2023-09-06T00:08:00.000' AS DateTime), 70, N'NULL      ', N'04', N'1              ')
GO
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'egb7563295', N'dzo2955383', 70, CAST(N'2023-07-06T00:08:00.000' AS DateTime), CAST(N'2023-07-06T00:08:00.000' AS DateTime), CAST(N'2023-09-06T00:08:00.000' AS DateTime), N'Yes       ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'evz8216697', N'dzo2955383', 70, CAST(N'2023-07-06T00:08:00.000' AS DateTime), CAST(N'2023-07-06T00:08:00.000' AS DateTime), CAST(N'2023-09-06T00:08:00.000' AS DateTime), N'Yes       ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'hah2545981', N'dzo2955383', 70, CAST(N'2023-07-06T00:08:00.000' AS DateTime), CAST(N'2023-07-06T00:08:00.000' AS DateTime), CAST(N'2023-09-06T00:08:00.000' AS DateTime), N'Yes       ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'srz9532313', N'qmo6571743', 120, CAST(N'2023-06-30T22:02:00.000' AS DateTime), CAST(N'2023-06-30T22:02:00.000' AS DateTime), CAST(N'2023-08-30T22:02:00.000' AS DateTime), N'No        ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'suy5373987', N'dgi3535644', 70, CAST(N'2023-07-01T02:26:00.000' AS DateTime), CAST(N'2023-07-01T02:26:00.000' AS DateTime), CAST(N'2023-09-01T02:26:00.000' AS DateTime), N'Yes       ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'uus6123367', N'nhp3343974', 70, CAST(N'2023-07-01T02:26:00.000' AS DateTime), CAST(N'2023-07-01T02:26:00.000' AS DateTime), CAST(N'2023-09-01T02:26:00.000' AS DateTime), N'Yes       ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'vyc4629552', N'dzo2955383', 100, CAST(N'2023-07-01T02:24:00.000' AS DateTime), CAST(N'2023-07-01T02:24:00.000' AS DateTime), CAST(N'2023-09-01T02:24:00.000' AS DateTime), N'Yes       ')
INSERT [dbo].[TuitionV2] ([idTuition], [idChild], [tuition], [datePay], [dateStart], [dateEnd], [status]) VALUES (N'zey8364497', N'ltc5878259', 240, CAST(N'2023-07-01T02:24:00.000' AS DateTime), CAST(N'2023-07-01T02:24:00.000' AS DateTime), CAST(N'2023-09-01T02:24:00.000' AS DateTime), N'Yes       ')
GO
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'bfz4848976', N'Bui Tuan Dung', N'Nong Son District,  Phuoc Ninh Commune, Xuan Hoa Village', CAST(N'1997-06-12' AS Date), N'F', N'dung@gmail.com                                                                                                                                        ', N'0981456015', N'admin', N'Teacher   ', N'NULL      ', N'rrbmr7259522485.jpg', N'qybbo4965673576.jpg           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'ctp4599417', N'Bui Hoang Y', N'Nong Son District,  Phuoc Ninh Commune, Xuan Hoa Village', CAST(N'1996-03-02' AS Date), N'M', N'hoangy761exe@gmail.com                                                                                                                                ', N'0981456016', N'admin', N'Teacher   ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'dbe4593458', N'Nguyen Tuyet Nhi', N'Nong District,  Phuoc , Xuan Village', CAST(N'2001-10-30' AS Date), N'M', N'nhi@gmail.com                                                                                                                                         ', N'0981456017', N'admin', N'Teacher   ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'etp3271898', N'Admin Admin', N'Nong Son District,  Phuoc Ninh Commune, Xuan Hoa Village', CAST(N'1997-05-28' AS Date), N'M', N'admin@gmail.com                                                                                                                                       ', N'0981456014', N'admin', N'Admin     ', N'NULL      ', N'NULL', N'unbco4488715453.png           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'rqk6624393', N'Dinh Thi Cat Tuong', N'Nong Son District,  Phuoc Ninh Commune, Xuan Hoa Village', CAST(N'2004-01-30' AS Date), N'F', N'tuong@gmail.com                                                                                                                                       ', N'0981456019', N'admin', N'Teacher   ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'xdu5179572', N'Dinh Sy Quoc Viet', N'Nong District,  Phuoc Commune, Hoa Village', CAST(N'1999-06-01' AS Date), N'F', N'viet@gmail.com                                                                                                                                        ', N'0981456021', N'admin', N'Parent    ', N'NULL      ', N'NULL', N'uvxil3515475262.png           ')
GO
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'ikd5377756', N'bfz4848976', 0, CAST(N'2023-06-30T22:12:56.793' AS DateTime), N'otl1617195')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'qzq4718722', N'etp3271898', 1, CAST(N'2023-06-30T22:10:44.687' AS DateTime), N'gmd6851538')
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
