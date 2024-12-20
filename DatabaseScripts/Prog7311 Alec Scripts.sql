USE [master]
GO
/****** Object:  Database [AgriEnergyConnectDb]    Script Date: 31/05/2024 17:24:26 ******/
CREATE DATABASE [AgriEnergyConnectDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgriEnergyConnectDb', FILENAME = N'C:\Users\alecc\AgriEnergyConnectDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgriEnergyConnectDb_log', FILENAME = N'C:\Users\alecc\AgriEnergyConnectDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AgriEnergyConnectDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgriEnergyConnectDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET  MULTI_USER 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgriEnergyConnectDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgriEnergyConnectDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AgriEnergyConnectDb] SET QUERY_STORE = OFF
GO
USE [AgriEnergyConnectDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31/05/2024 17:24:26 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 31/05/2024 17:24:26 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 31/05/2024 17:24:26 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 31/05/2024 17:24:26 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 31/05/2024 17:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 31/05/2024 17:24:26 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 31/05/2024 17:24:26 ******/
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
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 31/05/2024 17:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 31/05/2024 17:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Production_Date] [datetime2](7) NOT NULL,
	[FarmerId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240531063051_testing', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240531063232_products', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240531063355_updateProduct', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240531082225_testinggg', N'8.0.5')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'44e773ab-e766-48f7-8168-8462dec72073', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAENnhJwNPq1udpMuNphPOC1sXDYgmy1kpDlSeRO0B1f71pZ+efFsg5Vyr6duDzXcBQg==', N'5E5L437PTKD3JTNIJ2ZAGYWQ4EOZW5VS', N'7f565b88-87ff-4668-8dc8-d611fc4cef3c', NULL, 1, 0, NULL, 1, 0, N'Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'b15b51d7-d4e7-46f4-a46c-6bbcf80c1313', N'aleccowan8@gmail.com', N'ALECCOWAN8@GMAIL.COM', N'aleccowan8@gmail.com', N'ALECCOWAN8@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEOD2bAt0aVIIMIfgl659aw335WWAo7y4fA+jI432jMPwwmGo4nbNfB3MwoNNWeIFUw==', N'O23H4WKI4FCYRWKYNNLWPO4ZSLTUA46R', N'2732ac48-bfce-422b-a873-b112badf8c0c', NULL, 0, 0, NULL, 1, 0, N'Alec Cowan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'f0d4cd2c-5c3e-4566-b563-46c6be380f59', N'demo@gmail.com', N'DEMO@GMAIL.COM', N'demo@gmail.com', N'DEMO@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEHSN6sxvvosdshTPMZriupn2Tv0zCvQF/SceHU15P7OrWpkdbNDgFnFhFds5ZFVctg==', N'KCWOQHGLNS55MJL5VYETYUW336IBD22J', N'41929c13-a035-4a41-ad01-b2733d680708', NULL, 0, 0, NULL, 1, 0, N'John Doh')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'fc310600-7015-4b01-acf5-4090b230c658', N'dale@gmail.com', N'DALE@GMAIL.COM', N'dale@gmail.com', N'DALE@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEDNRlWVt8pi07yFhBvwYZpyTJkpl6FhiPZIKYmn3JXJmwkUVTDOTa/DtZ3IrhK43+Q==', N'SC2DQUDKIEP6BRSJMVICAUPQC6ZIBJHD', N'5247def6-7be2-48b8-8c63-512a30425ac7', NULL, 0, 0, NULL, 1, 0, N'Dale Cowan')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (1, N'wheat', 10.5, N'crops', CAST(N'2024-05-24T17:03:00.0000000' AS DateTime2), N'Admin')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (2, N'Solar Power Panels', 100000.99, N'Green Energy', CAST(N'2024-05-25T17:04:00.0000000' AS DateTime2), N'Admin')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (3, N'carrots', 15, N'crops', CAST(N'2024-05-18T17:04:00.0000000' AS DateTime2), N'Admin')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (4, N'potatoes', 11, N'crops', CAST(N'2024-05-22T17:05:00.0000000' AS DateTime2), N'Alec Cowan')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (5, N'Tractor', 1999.22, N'machine', CAST(N'2024-05-24T17:05:00.0000000' AS DateTime2), N'Alec Cowan')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (6, N'harvestor', 199993.22, N'machine', CAST(N'2024-05-17T17:06:00.0000000' AS DateTime2), N'Alec Cowan')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (7, N'Grass', 9.99, N'crops', CAST(N'2024-05-09T17:07:00.0000000' AS DateTime2), N'Dale Cowan')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (8, N'cows', 1999.22, N'Live stock', CAST(N'2024-05-04T17:07:00.0000000' AS DateTime2), N'Dale Cowan')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (9, N'Chickens', 199.24, N'Live stock', CAST(N'2024-05-10T17:08:00.0000000' AS DateTime2), N'Dale Cowan')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Category], [Production_Date], [FarmerId]) VALUES (10, N'soil', 9.99, N'crops', CAST(N'2024-05-30T17:11:00.0000000' AS DateTime2), N'John Doh')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 31/05/2024 17:24:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 31/05/2024 17:24:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 31/05/2024 17:24:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 31/05/2024 17:24:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 31/05/2024 17:24:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 31/05/2024 17:24:26 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 31/05/2024 17:24:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [FarmerId]
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
USE [master]
GO
ALTER DATABASE [AgriEnergyConnectDb] SET  READ_WRITE 
GO
