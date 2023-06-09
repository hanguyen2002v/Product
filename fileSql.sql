USE [StoreeBook]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [real] NOT NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[CategoryDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](max) NOT NULL,
	[ContactMessage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/25/2023 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[BookId] [int] NOT NULL,
	[BookName] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [real] NOT NULL,
	[TotalPrice] [real] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230421062427_customizedidentity', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230422014728_createContact5', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424041057_order', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424042739_order2', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424132623_updateBook', N'7.0.5')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6ea684e2-ea6d-419a-b464-844f3a2c6cbe', N'Staff', N'STAFF', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a7812b61-27ce-497e-9bd6-cf4a29486966', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef5ff963-cd7c-4d25-be38-983441a3f669', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7f7d8f91-8da7-421b-91f3-1eb9cddce146', N'6ea684e2-ea6d-419a-b464-844f3a2c6cbe')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'de5fcd22-3dfc-4b15-9ff4-79f3189cb875', N'a7812b61-27ce-497e-9bd6-cf4a29486966')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'27c07922-baeb-4d9a-832a-d2b93427bbeb', N'ef5ff963-cd7c-4d25-be38-983441a3f669')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a505a49-57e8-4f0e-93c3-afa334db6b29', N'ef5ff963-cd7c-4d25-be38-983441a3f669')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5a30aeb1-c8f1-453d-8bd4-9b0a2d593ad7', N'ef5ff963-cd7c-4d25-be38-983441a3f669')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'27c07922-baeb-4d9a-832a-d2b93427bbeb', N'rtabcd@gmail.com', N'RTABCD@GMAIL.COM', N'rtabcd@gmail.com', N'RTABCD@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEPjpGzDkRf4kp4Y/Qpq2Uy79ZNL+Mvp9+Rs1rgfwN9OPyfBD0YKUE8cLtEnaH+5orw==', N'RLBXWHYGWM4OB5MK7VA7FBZL437S5QTH', N'43a498bf-21f5-40c4-ba22-67819da2a521', NULL, 0, 0, NULL, 1, 0, N'Hungg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'3a505a49-57e8-4f0e-93c3-afa334db6b29', N'khovangvn@gmail.com', N'KHOVANGVN@GMAIL.COM', N'khovangvn@gmail.com', N'KHOVANGVN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJiuY2osI61nZGwpt1+Aqbpe1rP3DYz0pXZhdw4nvW/Ngu7aALj59XuLkLl/WOCzlQ==', N'CIZT6YKB22AFN3HROP74G7O7GIW6GYBX', N'59c66ecf-c047-46e0-adc1-f885b962dbdb', NULL, 0, 0, NULL, 1, 0, N'Kho Vàng VN')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'5a30aeb1-c8f1-453d-8bd4-9b0a2d593ad7', N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENKDuKSJUOQejOnWqjX4KDeQSTeWhDf2wJ+iLtaTMllS9on2VbqWll78Mb4GWuvFwA==', N'IHKUNXD6UFJBLHSLFLBYJFZFXBREM5TG', N'42e8e55e-8761-4321-bb8b-a0649b7287dc', NULL, 0, 0, NULL, 1, 0, N'Abcd')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'7f7d8f91-8da7-421b-91f3-1eb9cddce146', N'staff@gmail.com', N'STAFF@GMAIL.COM', N'staff@gmail.com', N'STAFF@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAYYxqOsvG2XHMfQr32RDDP2OXFUs12IEJujzh9Wm3xXb5tw5zCFjL0nlqv4loV9cg==', N'PUCO7W2JQUUOI4A75XGWNB73LOZWME7T', N'75c40ac2-48c5-4768-ac7b-20af2df1acf8', NULL, 1, 0, NULL, 1, 0, N'Hung')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'de5fcd22-3dfc-4b15-9ff4-79f3189cb875', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAED4NcPmNi2v+u/yrCNqPOj+cE+afRGgxYUvPVRrs3n1xxrHwGMeXS6XhoiwhbTPe7w==', N'6Z2NGRNTN7RZ4YR4MVAOBAFSGBK4ELDC', N'00b1f00c-1ab3-4c39-a98b-4ce54f70ea18', NULL, 1, 0, NULL, 1, 0, N'Ha')
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([BookId], [Title], [Description], [Price], [Quantity], [Image], [CategoryId]) VALUES (1, N'Tweet Cute', N'"A witty rom-com reinvention ... with deeply relatable insights on family pressure and growing up." - Emily Wibberley and Austin Siegemund-Broka, authors of Always Never Yours and If I''m Being Honest', 12, 998, N'https://images-us.bookshop.org/ingram/9781250750433.jpg?height=500&v=v2', 1)
INSERT [dbo].[Books] ([BookId], [Title], [Description], [Price], [Quantity], [Image], [CategoryId]) VALUES (2, N'The Romance Recipe: An LGBTQ+ Romcom (Original)', N'"The feelings in this one are dialed up so high you almost can''t look at them directly: It would be like staring into the sun... Like Rosie Danan or Kate Clayborn, Barrett.', 15, 998, N'https://images-us.bookshop.org/ingram/9781335506917.jpg?height=500&v=v2-7df1de23da11ad4faf7cde331fac3c2b', 1)
INSERT [dbo].[Books] ([BookId], [Title], [Description], [Price], [Quantity], [Image], [CategoryId]) VALUES (3, N'Everything Is F*cked : A Book About Hope', N'The timely, passionate, and humanely political work of America''s greatest folk singer and songwriter is presented through his own words and art--curated by Woody''s daughter--in this essential self-portrait.', 37, 997, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/282/917/products/41wed3c74nl-sx330-bo1-204-203-200.jpg?v=1664555988050', 2)
INSERT [dbo].[Books] ([BookId], [Title], [Description], [Price], [Quantity], [Image], [CategoryId]) VALUES (4, N'English Grammar in Use Book w Ans', N'The world''s best-selling grammar series for learners of English. English Grammar in Use Fourth edition is an updated version of the world''s best-selling grammar title The Blue Book of Grammar', 10, 998, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/282/917/products/9781250220547.jpg?v=1664501981207', 3)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription]) VALUES (1, N'Fiction', N'Romance')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription]) VALUES (2, N'Nonfiction', N'Art & Photography')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription]) VALUES (3, N'FOREIGN BOOKS ', N'DICTIONARIES & LANGUAGES')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactId], [ContactName], [ContactMessage]) VALUES (1, N'Kho Vàng VN', N'Nice service!')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (1, N'de5fcd22-3dfc-4b15-9ff4-79f3189cb875', 1, N'Tweet Cute', N'https://images-us.bookshop.org/ingram/9781250750433.jpg?height=500&v=v2', 1, 12, 12)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (2, N'3a505a49-57e8-4f0e-93c3-afa334db6b29', 2, N'The Romance Recipe: An LGBTQ+ Romcom (Original)', N'https://images-us.bookshop.org/ingram/9781335506917.jpg?height=500&v=v2-7df1de23da11ad4faf7cde331fac3c2b', 1, 15, 15)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (3, N'3a505a49-57e8-4f0e-93c3-afa334db6b29', 5, N'Iron Mann', N'https://www.pixel4k.com/wp-content/uploads/2018/10/iron-man-5k-digital-artwork_1539978734.jpg', 1, 34543, 34543)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (4, N'27c07922-baeb-4d9a-832a-d2b93427bbeb', 3, N'Woody Guthrie: Songs and Art * Words and Wisdom', N'https://images-us.bookshop.org/ingram/9781797211787.jpg?height=500&v=v2', 1, 37, 37)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (5, N'27c07922-baeb-4d9a-832a-d2b93427bbeb', 3, N'Woody Guthrie: Songs and Art * Words and Wisdom', N'https://images-us.bookshop.org/ingram/9781797211787.jpg?height=500&v=v2', 1, 37, 37)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (6, N'27c07922-baeb-4d9a-832a-d2b93427bbeb', 4, N'English Grammar in Use Book w Ans', N'https://cdn0.fahasa.com/media/catalog/product/9/7/9781108430425.jpg', 1, 10, 10)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (7, N'de5fcd22-3dfc-4b15-9ff4-79f3189cb875', 1, N'Tweet Cute', N'https://images-us.bookshop.org/ingram/9781250750433.jpg?height=500&v=v2', 1, 12, 12)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (8, N'de5fcd22-3dfc-4b15-9ff4-79f3189cb875', 2, N'The Romance Recipe: An LGBTQ+ Romcom (Original)', N'https://images-us.bookshop.org/ingram/9781335506917.jpg?height=500&v=v2-7df1de23da11ad4faf7cde331fac3c2b', 1, 15, 15)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (9, N'de5fcd22-3dfc-4b15-9ff4-79f3189cb875', 3, N'Everything Is F*cked : A Book About Hope', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/282/917/products/41wed3c74nl-sx330-bo1-204-203-200.jpg?v=1664555988050', 1, 37, 37)
INSERT [dbo].[Orders] ([Id], [UserId], [BookId], [BookName], [image], [Quantity], [Price], [TotalPrice]) VALUES (10, N'de5fcd22-3dfc-4b15-9ff4-79f3189cb875', 4, N'English Grammar in Use Book w Ans', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/282/917/products/9781250220547.jpg?v=1664501981207', 1, 10, 10)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([BookId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Books_BookId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Orders_OrderId]
GO
