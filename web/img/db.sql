USE [HR_Management]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 1/13/2024 6:28:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 1/13/2024 6:28:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Job_id] [int] IDENTITY(1,1) NOT NULL,
	[Job_title] [varchar](35) NOT NULL,
	[Min_salary] [int] NULL,
	[Max_salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 1/13/2024 6:28:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[LogID] [int] IDENTITY(10,1) NOT NULL,
	[UserID] [int] NULL,
	[ProjectID] [int] NULL,
	[BDate] [datetime] NULL,
	[MRDate] [datetime] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 1/13/2024 6:28:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectID] [int] IDENTITY(100,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Author] [nvarchar](100) NULL,
	[Category] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[PubYear] [int] NOT NULL,
	[Quantity] [int] NULL,
	[AvailQtt] [int] NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/13/2024 6:28:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Dob] [date] NOT NULL,
	[Gender] [char](1) NULL,
	[Phone] [int] NOT NULL,
	[Job_id] [int] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Email] [varchar](60) NULL,
	[Password] [varchar](20) NOT NULL,
	[Status] [char](1) NULL,
	[Role] [char](2) NULL,
	[Manager_id] [int] NULL,
	[DepartmentID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([id], [Name]) VALUES (11, N'Accounting')
INSERT [dbo].[Department] ([id], [Name]) VALUES (1, N'Administration')
INSERT [dbo].[Department] ([id], [Name]) VALUES (9, N'Executive')
INSERT [dbo].[Department] ([id], [Name]) VALUES (10, N'Finance')
INSERT [dbo].[Department] ([id], [Name]) VALUES (12, N'Graphic design')
INSERT [dbo].[Department] ([id], [Name]) VALUES (5, N'Human Resources')
INSERT [dbo].[Department] ([id], [Name]) VALUES (4, N'IT')
INSERT [dbo].[Department] ([id], [Name]) VALUES (2, N'Marketing')
INSERT [dbo].[Department] ([id], [Name]) VALUES (7, N'Public Relations')
INSERT [dbo].[Department] ([id], [Name]) VALUES (3, N'Purchasing')
INSERT [dbo].[Department] ([id], [Name]) VALUES (8, N'Sales')
INSERT [dbo].[Department] ([id], [Name]) VALUES (6, N'Shipping')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (1, N'Public Accountant', 4200, 9000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (2, N'Coder', 100000, 4000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (3, N'Accounting Manager', 8200, 16000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (4, N'Administration Assistant', 3000, 6000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (5, N'President', 20000, 40000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (6, N'Administration Vice President', 15000, 30000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (7, N'Accountant', 4200, 9000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (8, N'Finance Manager', 8200, 16000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (9, N'Human Resources Representative', 4000, 9000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (10, N'Programmer', 4000, 10000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (11, N'Marketing Manager', 9000, 15000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (12, N'Marketing Representative', 4000, 9000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (13, N'Public Relations Representative', 4500, 10500)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (14, N'Purchasing Clerk', 2500, 5500)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (15, N'Purchasing Manager', 8000, 15000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (16, N'Sales Manager', 10000, 20000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (17, N'Sales Representative', 6000, 12000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (18, N'Shipping Clerk', 2500, 5500)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (19, N'Stock Clerk', 2000, 5000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (20, N'Stock Manager', 5500, 8500)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (21, N'Bridge Engineer', 15000000, 40000000)
INSERT [dbo].[Job] ([Job_id], [Job_title], [Min_salary], [Max_salary]) VALUES (22, N'Graphic design', 20000000, 50000000)
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([LogID], [UserID], [ProjectID], [BDate], [MRDate], [Description], [Status]) VALUES (14, 6, 100, CAST(N'2023-03-16T16:29:03.267' AS DateTime), CAST(N'2023-06-14T00:00:00.000' AS DateTime), N'helo1', N'H')
INSERT [dbo].[Log] ([LogID], [UserID], [ProjectID], [BDate], [MRDate], [Description], [Status]) VALUES (18, 1, 100, CAST(N'2023-03-16T16:33:47.933' AS DateTime), CAST(N'2023-06-14T00:00:00.000' AS DateTime), N'trust me', N'S')
INSERT [dbo].[Log] ([LogID], [UserID], [ProjectID], [BDate], [MRDate], [Description], [Status]) VALUES (19, 1, 100, CAST(N'2023-03-16T17:13:57.643' AS DateTime), CAST(N'2023-06-14T00:00:00.000' AS DateTime), N'sd', N'H')
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjectID], [Title], [Author], [Category], [Description], [PubYear], [Quantity], [AvailQtt], [Status]) VALUES (100, N'Build house', N'Long', N'MK', N'material attention', 2019, 10, 7, N'L')
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (1, N'Quoc Viet', CAST(N'2002-09-06' AS Date), N'M', 961103209, 22, N'01 An Hoa 4, Cam Le, Da Nang', N'viet@gmail.com', N'123456', N'H', N'MN', 1006, 4)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (2, N'Hoang Y', CAST(N'2002-01-02' AS Date), N'M', 961103209, 15, N'01 An Hoa 4, Cam Le, Da Nang', N'hoangy@gmail.com', N'123456', N'D', N'MN', 341, 5)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (3, N'Hoang Y', CAST(N'2002-01-02' AS Date), N'M', 961103209, 16, N'01 An Hoa 4, Cam Le, Da Nang', N'hoangy1@gmail.com', N'123456', N'H', N'EE', 341, 1)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (5, N'Khang', CAST(N'2002-01-02' AS Date), N'M', 961103209, 13, N'01 An Hoa 4, Cam Le, Da Nang', N'khang@gmail.com', N'123456', N'H', N'EE', 341, 7)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (6, N'Tuan Dung', CAST(N'2002-07-09' AS Date), N'M', 267829, 7, N'01 Ly Thuat', N'dung@gmail.com', N'123456', N'L', N'ST', 179, 10)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (8, N'Long', CAST(N'2002-07-09' AS Date), N'M', 267829, 4, N'01 LÃ½ Thuáº­t', N'long@gmail.com', N'123456', N'H', N'MN', 123, 11)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (9, N'Bao', CAST(N'2002-01-02' AS Date), N'M', 961103209, 7, N'01 An Hoa 4, Cam Le, Da Nang', N'bao@gmail.com', N'123456', N'H', N'MN', 344, 2)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (11, N'Tu', CAST(N'2001-09-12' AS Date), N'M', 6798900, 16, N'01 Hai Chau', N'tu@gmail.com', N'123456', N'H', N'EE', 51247, 7)
INSERT [dbo].[Users] ([UserID], [FullName], [Dob], [Gender], [Phone], [Job_id], [Address], [Email], [Password], [Status], [Role], [Manager_id], [DepartmentID]) VALUES (13, N'Thuat', CAST(N'2013-06-12' AS Date), N'M', 679900, 1, N'01 Hoa A1', N'thuat@gmail.com', N'123456', N'H', N'EE', 98358, 7)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__737584F6E7BEAE5F]    Script Date: 1/13/2024 6:28:09 PM ******/
ALTER TABLE [dbo].[Department] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__737584F6F265C4FF]    Script Date: 1/13/2024 6:28:09 PM ******/
ALTER TABLE [dbo].[Department] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D10534167F716B]    Script Date: 1/13/2024 6:28:09 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D105346D567FC3]    Script Date: 1/13/2024 6:28:09 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Log] ADD  DEFAULT (getdate()) FOR [BDate]
GO
ALTER TABLE [dbo].[Project] ADD  DEFAULT ('H') FOR [Status]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('H') FOR [Status]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('EE') FOR [Role]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Manager_id]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_department]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Job] FOREIGN KEY([Job_id])
REFERENCES [dbo].[Job] ([Job_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Job]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD CHECK  (([Status]='S' OR [Status]='L' OR [Status]='H'))
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD CHECK  (([Status]='S' OR [Status]='L' OR [Status]='H'))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([AvailQtt]<=[Quantity]))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([AvailQtt]<=[Quantity]))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([availQtt]>=(0)))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([availQtt]>=(0)))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([Status]='M' OR [Status]='L' OR [Status]='H'))
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD CHECK  (([Status]='M' OR [Status]='L' OR [Status]='H'))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([Gender]='F' OR [Gender]='M'))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([Gender]='F' OR [Gender]='M'))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([Role]='MN' OR [Role]='ST' OR [Role]='EE'))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([Role]='MN' OR [Role]='ST' OR [Role]='EE'))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK__Users__Status__3E1D39E1] CHECK  (([Status]='L' OR [Status]='H' OR [Status]='D'))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK__Users__Status__3E1D39E1]
GO
