USE [A01_RT03]
GO
/****** Object:  Table [dbo].[Announce]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[Child]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[ClassList]    Script Date: 6/24/2023 6:58:47 PM ******/
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
	[timeFrom] [datetime] NOT NULL,
	[timeTo] [datetime] NOT NULL,
	[tuition] [int] NOT NULL,
	[status] [nchar](10) NULL,
	[condition] [nchar](2) NULL,
 CONSTRAINT [PK_ClassList] PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[FeeList]    Script Date: 6/24/2023 6:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeeList](
	[idFeeList] [nchar](10) NOT NULL,
	[nameFee] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_FeeList] PRIMARY KEY CLUSTERED 
(
	[idFeeList] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proposal]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[SalaryList]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[SkillList]    Script Date: 6/24/2023 6:58:47 PM ******/
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
	[timeFrom] [datetime] NOT NULL,
	[timeTo] [datetime] NOT NULL,
	[tuition] [int] NOT NULL,
	[status] [nchar](10) NULL,
	[condition] [nchar](2) NULL,
 CONSTRAINT [PK_SkillList] PRIMARY KEY CLUSTERED 
(
	[idSkill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tuition]    Script Date: 6/24/2023 6:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tuition](
	[idTuition] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NOT NULL,
	[idFee] [nchar](10) NOT NULL,
	[tuition] [nchar](1) NOT NULL,
	[date] [date] NOT NULL,
	[dateStart] [date] NOT NULL,
	[dateEnd] [date] NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Tuition] PRIMARY KEY CLUSTERED 
(
	[idTuition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/24/2023 6:58:47 PM ******/
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
/****** Object:  Table [dbo].[UserVote]    Script Date: 6/24/2023 6:58:47 PM ******/
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
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'brz8598192', N'De1600    ', CAST(N'2023-06-09T11:03:34.280' AS DateTime), N'second', N'hihii                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'fcv5254668', N'De1600    ', CAST(N'2023-06-09T11:00:49.447' AS DateTime), N'first Ann', N'hihihh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'fnf6374158', N'De1600    ', CAST(N'2023-06-09T11:00:28.153' AS DateTime), N'First Ann', N'hihihi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'ipp1368547', N'De1600    ', CAST(N'2023-06-09T11:04:36.950' AS DateTime), N'three', N'11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'lfo4668521', N'De1600    ', CAST(N'2023-06-10T07:34:18.607' AS DateTime), N'Cho Tre di choi thang 6', N'o da nang......                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'mgj4475134', N'De1600    ', CAST(N'2023-06-09T11:09:53.620' AS DateTime), N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'mva4546249', N'De1600    ', CAST(N'2023-06-09T11:00:12.323' AS DateTime), N'First Ann', N'hihihi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'qns5284876', N'De1600    ', CAST(N'2023-06-09T11:04:52.987' AS DateTime), N'three', N'11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'qvz8473736', N'De1600    ', CAST(N'2023-06-09T11:02:38.503' AS DateTime), N'first Ann', N'hihihh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'xsn8271682', N'De1600    ', CAST(N'2023-06-09T11:04:45.190' AS DateTime), N'three', N'11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'yej2835675', N'De1600    ', CAST(N'2023-06-09T11:09:59.767' AS DateTime), N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'ztv6264282', N'De1600    ', CAST(N'2023-06-09T11:04:06.767' AS DateTime), N'second', N'hihii                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', N'          ')
GO
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'anv5892744', N'Con Ba', N'De1600    ', CAST(N'2021-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'c111      ', N'nam', N'lfl1639127', CAST(N'2018-07-09' AS Date), N'M', N'3', 20, 15, N'g', N'post-1.jpg          ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'dde1395869', N'Con Hai', N'De1600    ', CAST(N'2022-06-08' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'dic4354647', N'Long', N'pov3386762', CAST(N'2023-06-15' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'jym5461677', N'Hi', N'De1600    ', CAST(N'2023-06-02' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'llp3525945', N'Bui Thien Thien', N'bpb4715333', CAST(N'2020-05-15' AS Date), N'M', N'NULL', 0, 0, NULL, N'NULL                ', N'                              ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'mvi5471823', N'Long', N'lfl1639127', CAST(N'2019-02-09' AS Date), N'M', N'NULL', 0, 0, N'g', NULL, NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'nbi2834983', N'Long', N'pov3386762', CAST(N'2023-06-15' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'qvh7837354', N'Con Bon', N'De1600    ', CAST(N'2021-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'rtr4611554', N'Con Viet', N'pov3386762', CAST(N'2020-06-09' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'tbq3316451', N'Con Hai', N'De1600    ', CAST(N'2022-06-08' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'tcz3342611', N'Con Ba', N'De1600    ', CAST(N'2021-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'tgf6871941', N'Long', N'pov3386762', CAST(N'2023-06-14' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'vlk6558366', N'Con Nam', N'De1600    ', CAST(N'2022-06-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'xid3954242', N'Con Y', N'De1600    ', CAST(N'2022-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt], [imgDob]) VALUES (N'zzp3666521', N'Con Sau', N'De1600    ', CAST(N'2019-02-10' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ', NULL)
GO
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'bav3868312', N'dic4354647', N'abc1234565', N'Accept    ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'bmn123123 ', N'dde1395869', N'abc1234565', N'Regist    ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'fbu5412833', N'llp3525945', N'uug7935726', N'NoAccept  ')
INSERT [dbo].[Class] ([idRegist], [idChild], [idClass], [status]) VALUES (N'qij6246719', N'rtr4611554', N'adg311223 ', N'Accept    ')
GO
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'abc1234565', N'ABC                                               ', N'pov3386762', 40, CAST(N'2023-06-16T20:54:29.390' AS DateTime), CAST(N'2023-09-09T20:54:29.390' AS DateTime), CAST(N'2023-06-09T20:54:29.390' AS DateTime), CAST(N'2023-06-09T22:54:29.390' AS DateTime), 100, NULL, N'04')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'adg311223 ', N'XYZ                                               ', N'pov3386762', 30, CAST(N'2023-06-18T20:54:29.390' AS DateTime), CAST(N'2023-08-09T20:54:29.390' AS DateTime), CAST(N'2023-06-09T20:54:29.390' AS DateTime), CAST(N'2023-06-09T20:54:29.390' AS DateTime), 100, NULL, N'05')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'arf7646169', N'Love You                                          ', N'pov3386762', 12, CAST(N'2023-06-23T07:36:00.000' AS DateTime), CAST(N'2023-06-10T07:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), 100, N'NULL      ', N'10')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'bqr2535239', N'Love You                                          ', N'pov3386762', 12, CAST(N'2023-06-23T07:36:00.000' AS DateTime), CAST(N'2023-06-10T07:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), 100, N'NULL      ', N'10')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'ixm9397713', N'Love You                                          ', N'pov3386762', 12, CAST(N'2023-06-23T07:36:00.000' AS DateTime), CAST(N'2023-06-10T07:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), 100, N'NULL      ', N'10')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'peg7893393', N'A001                                              ', N'bpb4715389', 20, CAST(N'2023-07-01T07:01:00.000' AS DateTime), CAST(N'2023-08-01T16:01:00.000' AS DateTime), CAST(N'2023-06-19T20:08:00.000' AS DateTime), CAST(N'2023-06-19T20:08:00.000' AS DateTime), 200, N'NULL      ', N'04')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'uug7935726', N'sss                                               ', N'pov3386762', 11, CAST(N'2023-05-15T17:05:00.000' AS DateTime), CAST(N'2023-06-29T17:05:00.000' AS DateTime), CAST(N'2023-06-22T17:05:00.000' AS DateTime), CAST(N'2023-06-09T17:05:00.000' AS DateTime), 11, N'NULL      ', N'04')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'xcm7816396', N'Love You                                          ', N'pov3386762', 12, CAST(N'2023-06-23T07:36:00.000' AS DateTime), CAST(N'2023-06-10T07:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), 100, N'NULL      ', N'10')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'xrc6275826', N'aa20                                              ', N'bpb4715389', 11, CAST(N'2023-06-08T17:06:00.000' AS DateTime), CAST(N'2023-06-19T17:10:00.000' AS DateTime), CAST(N'2023-06-19T22:06:00.000' AS DateTime), CAST(N'2023-06-19T10:06:00.000' AS DateTime), 11, N'NULL      ', N'22')
INSERT [dbo].[ClassList] ([idClass], [className], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'zun3218541', N'Love You                                          ', N'pov3386762', 12, CAST(N'2023-06-23T07:36:00.000' AS DateTime), CAST(N'2023-06-10T07:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), CAST(N'2023-06-21T10:36:00.000' AS DateTime), 100, N'NULL      ', N'10')
GO
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'att3596134', N'De1600    ', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', CAST(N'2023-06-09T20:54:29.390' AS DateTime), CAST(N'2023-06-16T20:54:29.390' AS DateTime), 8, N'active    ', 10)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'dqo9253441', N'De1600    ', N'check Vote', N'hihihi', CAST(N'2023-06-10T00:52:34.343' AS DateTime), CAST(N'2023-06-17T00:52:34.343' AS DateTime), 1, N'active    ', 2)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'mcd7959925', N'De1600    ', N'First Proposal', N'Writing a good proposal is a critical skill in many occupations, from school to business management to geology. The goal of a proposal is to gain support for your plan by informing the appropriate people. Your ideas or suggestions are more likely to be approved if you can communicate them in a clear, concise, engaging manner. Knowing how to write a persuasive, captivating proposal is essential for success in many fields. There are several types of proposals, such as science proposals and book proposals, but each following the same basic guidelines.
', CAST(N'2023-06-08T12:58:59.823' AS DateTime), CAST(N'2023-06-15T12:58:59.823' AS DateTime), 4, N'active    ', 5)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'ptp4326283', N'De1600    ', N'Lan Dao', N'1223xdxzcxzczxczxczx', CAST(N'2023-06-08T21:55:59.817' AS DateTime), CAST(N'2023-06-15T21:55:59.817' AS DateTime), 0, N'active    ', 0)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'pxz2653795', N'De1600    ', N'Camp', N'uihjajhbajbka', CAST(N'2023-06-17T08:28:52.550' AS DateTime), CAST(N'2023-06-24T08:28:52.550' AS DateTime), 1, N'active    ', 2)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'sgv3666386', N'pov3386762', N'p 2', N'hihihihi', CAST(N'2023-06-09T09:45:08.010' AS DateTime), CAST(N'2023-06-16T09:45:08.010' AS DateTime), 0, N'active    ', 0)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'uks5426429', N'pov3386762', N'Proposal cua Viet', N'Hi ae, Proposal cua Viet ', CAST(N'2023-06-08T22:41:57.867' AS DateTime), CAST(N'2023-06-15T22:41:57.867' AS DateTime), 3, N'active    ', 4)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'unq6314982', N'De1600    ', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', CAST(N'2023-06-09T20:54:25.117' AS DateTime), CAST(N'2023-06-16T20:54:25.117' AS DateTime), 1, N'active    ', 3)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'xml5915924', N'pov3386762', N'Today', N'Justo ea diam stet diam ipsum no sit, ipsum vero et et diam ipsum duo et no et, ipsum ipsum erat duo amet clita duo', CAST(N'2023-06-10T07:31:36.080' AS DateTime), CAST(N'2023-06-17T07:31:36.080' AS DateTime), 1, N'active    ', 2)
GO
INSERT [dbo].[SkillList] ([idSkill], [skillName], [idTeacher], [totalSeat], [timeStartSemester], [timeEndSemester], [timeFrom], [timeTo], [tuition], [status], [condition]) VALUES (N'abc125555 ', N'Swim                                              ', N'bpb4715389', 40, CAST(N'2023-06-16T20:54:29.390' AS DateTime), CAST(N'2023-09-09T20:54:29.390' AS DateTime), CAST(N'2023-06-09T20:54:29.390' AS DateTime), CAST(N'2023-06-09T20:54:29.390' AS DateTime), 150, NULL, NULL)
GO
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'bpb4715333', N'Admin Name', N'Admin - Admin', CAST(N'2002-01-25' AS Date), N'M', N'admin@gmail.com                                                                                                                                       ', N'1111111110', N'admin', N'Admin     ', N'NULL      ', NULL, N'kmlmy7236813497.jpg           ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'bpb4715389', N'Nhi', N'01 IOO', CAST(N'2003-02-09' AS Date), N'F', N'nhi@gmail.com                                                                                                                                         ', N'123456789', N'12345', N'Teacher   ', N'NULL      ', NULL, N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'dbt2464538', N'Dung', N'01 J', CAST(N'2002-02-02' AS Date), N'M', N'                                                                                                                                                      ', N'1234567890', N'12345', N'Teacher   ', N'NULL      ', NULL, N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'De1600    ', N'Bui Hoang Y', N'01 Cam Le - Hoan Hai - TP.Da Nang', CAST(N'2002-09-06' AS Date), N'F', N'hoangy@gmail.com                                                                                                                                      ', N'097544111', N'123456', N'Admin     ', N'D11       ', NULL, N'about-1.jpg                   ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'iae7713434', N'Long', N'122 D', CAST(N'2013-01-24' AS Date), N'M', N'long@gmail.com                                                                                                                                        ', N'0123456789', N'12345', N'Block     ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'lfl1639127', N'Hoang Y hai', N'Xuân Hòa', CAST(N'2002-01-25' AS Date), N'M', N'hoangyhai@gmail.com                                                                                                                                   ', N'0981456014', N'123456', N'Parent    ', N'NULL      ', NULL, N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'pov3386762', N'Viet', N'01 Hoa 4', CAST(N'2002-02-01' AS Date), N'M', N'viet@gmail.com                                                                                                                                        ', N'0961103209', N'12345', N'Teacher   ', N'NULL      ', NULL, N'kjtlb5161173726.jpg           ')
GO
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'abc1234567', N'De1600    ', 1, CAST(N'2023-06-09T22:18:56.850' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'aem2454491', N'De1600    ', 1, CAST(N'2023-06-10T00:31:17.097' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'bct2624779', N'De1600    ', 1, CAST(N'2023-06-10T00:51:35.793' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'blx7586691', N'De1600    ', 1, CAST(N'2023-06-10T00:51:31.137' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'ecr6253258', N'De1600    ', 1, CAST(N'2023-06-10T00:32:28.137' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'fcp5749573', N'De1600    ', 0, CAST(N'2023-06-10T00:29:36.923' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'fpq1414215', N'De1600    ', 1, CAST(N'2023-06-10T00:30:18.590' AS DateTime), N'unq6314982')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'imz4444729', N'De1600    ', 1, CAST(N'2023-06-10T00:27:40.170' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'itj8786648', N'De1600    ', 1, CAST(N'2023-06-17T08:29:00.193' AS DateTime), N'pxz2653795')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'izc9618371', N'De1600    ', 0, CAST(N'2023-06-10T07:33:10.317' AS DateTime), N'xml5915924')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'jhc4673588', N'De1600    ', 0, CAST(N'2023-06-10T00:30:28.640' AS DateTime), N'unq6314982')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'jko6239819', N'De1600    ', 0, CAST(N'2023-06-10T00:30:25.410' AS DateTime), N'unq6314982')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'lpm8464987', N'De1600    ', 0, CAST(N'2023-06-10T00:30:57.617' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'lvn3193719', N'pov3386762', 0, CAST(N'2023-06-17T12:32:26.103' AS DateTime), N'pxz2653795')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'nhc9729864', N'De1600    ', 1, CAST(N'2023-06-10T00:23:13.760' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'ojx8853842', N'De1600    ', 0, CAST(N'2023-06-10T00:29:43.883' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'oxo4615987', N'De1600    ', 1, CAST(N'2023-06-10T00:31:12.960' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'ozz7987695', N'De1600    ', 1, CAST(N'2023-06-10T00:51:26.070' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'qei7864749', N'pov3386762', 0, CAST(N'2023-06-10T00:53:07.257' AS DateTime), N'dqo9253441')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'qkc3337931', N'pov3386762', 1, CAST(N'2023-06-10T07:32:27.023' AS DateTime), N'xml5915924')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'sif8485396', N'De1600    ', 1, CAST(N'2023-06-10T00:29:04.257' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'spz3113626', N'De1600    ', 1, CAST(N'2023-06-10T00:32:42.237' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'srn9749148', N'De1600    ', 1, CAST(N'2023-06-10T00:29:58.247' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'thz4461275', N'De1600    ', 1, CAST(N'2023-06-10T00:27:59.097' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'vbt6258329', N'De1600    ', 1, CAST(N'2023-06-10T00:29:48.400' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'yqr7183725', N'De1600    ', 0, CAST(N'2023-06-10T00:23:41.033' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'zar3911298', N'De1600    ', 1, CAST(N'2023-06-10T00:52:42.780' AS DateTime), N'dqo9253441')
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
ALTER TABLE [dbo].[Tuition]  WITH CHECK ADD  CONSTRAINT [FK_Tuition_Child] FOREIGN KEY([idChild])
REFERENCES [dbo].[Child] ([idChild])
GO
ALTER TABLE [dbo].[Tuition] CHECK CONSTRAINT [FK_Tuition_Child]
GO
ALTER TABLE [dbo].[Tuition]  WITH CHECK ADD  CONSTRAINT [FK_Tuition_FeeList] FOREIGN KEY([idFee])
REFERENCES [dbo].[FeeList] ([idFeeList])
GO
ALTER TABLE [dbo].[Tuition] CHECK CONSTRAINT [FK_Tuition_FeeList]
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
