USE [master]
GO
/****** Object:  Database [MVC_Project]    Script Date: 3/26/2023 10:39:38 PM ******/
CREATE DATABASE [MVC_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVC_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL19\MSSQL\DATA\MVC_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MVC_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL19\MSSQL\DATA\MVC_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MVC_Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVC_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVC_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVC_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVC_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVC_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVC_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVC_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MVC_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVC_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVC_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVC_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVC_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVC_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVC_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVC_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVC_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MVC_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVC_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVC_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVC_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVC_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVC_Project] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MVC_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVC_Project] SET RECOVERY FULL 
GO
ALTER DATABASE [MVC_Project] SET  MULTI_USER 
GO
ALTER DATABASE [MVC_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVC_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVC_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVC_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MVC_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MVC_Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MVC_Project', N'ON'
GO
ALTER DATABASE [MVC_Project] SET QUERY_STORE = OFF
GO
USE [MVC_Project]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/26/2023 10:39:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/26/2023 10:39:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/26/2023 10:39:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/26/2023 10:39:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/26/2023 10:39:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/26/2023 10:39:40 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](max) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/26/2023 10:39:40 PM ******/
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
/****** Object:  Table [dbo].[Cart]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [int] NOT NULL,
	[CustomerId] [nvarchar](450) NOT NULL,
	[Produc_SupplierId] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Prod_SupId] [int] NOT NULL,
	[CustomerId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[ShippingFee] [int] NOT NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](450) NOT NULL,
	[Produc_SupplierId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[ShipDate] [datetime2](7) NOT NULL,
	[Totalprice] [int] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produc_Suppliers]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produc_Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[SupplierId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[SubCatId] [int] NOT NULL,
	[CatId] [int] NOT NULL,
 CONSTRAINT [PK_Produc_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[CatId] [int] NOT NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 3/26/2023 10:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](11) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322182324_v1', N'7.0.3')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1ff613d1-19f0-43aa-990c-fd9986f836f7', N'admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f45310d7-d6e4-4677-8696-c3aa3908a0c6', N'user', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'561803e7-fc6d-4185-89b1-100a833bbf5e', N'1ff613d1-19f0-43aa-990c-fd9986f836f7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a29e9a11-1cf9-442f-bbd1-bbbfe5cb9d0d', N'f45310d7-d6e4-4677-8696-c3aa3908a0c6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b6d32c13-f345-45c7-8977-f09447c7b69c', N'f45310d7-d6e4-4677-8696-c3aa3908a0c6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b8d327aa-dc5b-4c4d-8ce1-78b1018d6014', N'f45310d7-d6e4-4677-8696-c3aa3908a0c6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c94b2765-b733-47b1-8c81-bbe50004f15c', N'f45310d7-d6e4-4677-8696-c3aa3908a0c6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e579a067-fdfd-4269-a8eb-6dc7a5aba9e5', N'f45310d7-d6e4-4677-8696-c3aa3908a0c6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1', N'Assiut', N'Dolagy', N'Baky', N'Female', N'dod@gmail.com', NULL, N'False', NULL, 0, N'123456', N'123456', N'123456', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'561803e7-fc6d-4185-89b1-100a833bbf5e', N'assuit', N'omnia', N'mohamed', N'Female', N'omnia.admin@gmail.com', N'OMNIA.ADMIN@GMAIL.COM', NULL, NULL, 0, N'AQAAAAIAAYagAAAAEIsGI29Tqn7lCK3nNf5Yie52iEtu7DodW5UaHszbdc0czh+hQae6eJoPN9a71vM7AA==', N'LY3P3YTUZ5ALJ3AXHVFMJ6AGAXFNV4YA', N'5898d1e6-da7f-4eb1-bdfa-581c3cb63262', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a29e9a11-1cf9-442f-bbd1-bbbfe5cb9d0d', N'assuit', N'omnia', N'mohamed', N'Female', N'omnia.user@gmail.com', N'OMNIA.USER@GMAIL.COM', NULL, NULL, 0, N'AQAAAAIAAYagAAAAEO8+2CRoj9ICk/yLaVeY2eV0LvYFp+ZHcr+gQcPmefN3ocPOQ9B29v33e/wNdEo4Cg==', N'5JK65BLBYGTCETVGYXTHUNBSPW6CP5XT', N'cf0a6ce6-db3c-485a-b739-d9b7e202eeef', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b6d32c13-f345-45c7-8977-f09447c7b69c', N'Assiut', N'Aya', N'Aboelela', N'Female', N'aya aboelela', N'AYA.ABOELELA@GMAIL.COM', NULL, NULL, 0, N'AQAAAAIAAYagAAAAEEdIzliL1FRhnmm4QeLDkqcZF1qJxgBv/m++naTZtVz1FgB1H8EkhENH+WrfBhnZaQ==', N'6C446CP7MKIUG42PTCIE76TRP6VTVCUP', N'b575b6fb-0224-46a0-9a6c-142563445152', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b8d327aa-dc5b-4c4d-8ce1-78b1018d6014', N'cairo', N'aya', N'mohamed', N'Female', N'aya.mohamed@gmail.com', N'AYA.MOHAMED@GMAIL.COM', NULL, NULL, 0, N'AQAAAAIAAYagAAAAEEgkdcypsc2saH8TGncvfvq0Lo49T2ysv+dvc3Zaa4ZHZn9itdROZ1jXgOMWCeCllQ==', N'F2NCYVGQQXROPODX4XHSSHG52JV6YBPJ', N'177f7daa-5b32-4e2b-a407-d84c70aa12c4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c94b2765-b733-47b1-8c81-bbe50004f15c', N'cairo', N'marwa', N'mohamed', N'Female', N'marwa.user@gmail.com', N'MARWA.USER@GMAIL.COM', NULL, NULL, 0, N'AQAAAAIAAYagAAAAEHnkZjgK14SKjU6xIsQJv8PHLptpV8X3mQNvYJVurpoYQEg8xzVa0i40+n+AU0BK3Q==', N'JX5BYFJNUVKN6M223HHZOGW4FLGKBPBM', N'818cf6f3-2da3-4030-8c78-43d8aa6ca972', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e092ca65-aeb7-4a98-85d2-2463ce5c4b17', N'assuit', N'mayar', N'atef', N'Female', N'mayar.admin@gmail.com', N'MAYAR.ADMIN@GMAIL.COM', NULL, NULL, 0, N'AQAAAAIAAYagAAAAEFX0slI/JsxqHMroITvA1TQqomnNq/GJgxgAcq01+B35bS1PZd/thIoRpLQehpFUkQ==', N'C2ZJNK2DOUF4HSLVVNKT53P4DYY64VR5', N'10440169-29ac-4d42-bec2-5e963c2fc5ca', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Address], [FirstName], [LastName], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e579a067-fdfd-4269-a8eb-6dc7a5aba9e5', N'assuit', N'aya', N'aboalela', N'Female', N'Pmnia.user@gmail.com', N'PMNIA.USER@GMAIL.COM', NULL, NULL, 0, N'AQAAAAIAAYagAAAAECGMmKpH/K4fiqsOtzp3xiZHsX7hPuP6m7g5XcKkMwVr2wCH/QdmSjSpGUwFuPidpQ==', N'KVD2IGHGI2QJIC2W7T7DIQVEOMDA6RGL', N'ab7b5118-d974-4852-8574-2ff1b6835938', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [Quantity], [Total], [CustomerId], [Produc_SupplierId]) VALUES (1021, 1, 48, N'4', 8)
INSERT [dbo].[Cart] ([Id], [Quantity], [Total], [CustomerId], [Produc_SupplierId]) VALUES (1022, 1, 999, N'4', 14)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (1, N'Supermarket', N'supermarket.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (3, N'Fashion', N'fashion.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (4, N'Phones&Tablets', N'phones-tablets.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (7, N'Health&Beauty', N'healthbeauty.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (9, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Dolagy', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (10, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Dolagy', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (11, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Aya', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (12, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Omnia', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (13, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Mayar', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (14, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Marwa', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (15, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Samer', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (16, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Amr', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (17, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Aya', 2, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (18, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Omnia', 2, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (19, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Ahmed', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (20, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Mayar', 2, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (21, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Anas', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (22, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Manar', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (23, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Omar', 1, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (28, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Omnia', 3, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (29, N'A small river named Duden flows by their place and supplies it with the necessary regelialia.', N'Aya', 3, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (30, N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. ', N'aya.aboelela@gmail.com', 6, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (31, N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. ', N'aya.aboelela@gmail.com', 8, N'1')
INSERT [dbo].[Comments] ([Id], [Text], [UserName], [Prod_SupId], [CustomerId]) VALUES (32, N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. ', N'aya aboelela', 8, N'1')
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
INSERT [dbo].[Customers] ([Id], [ApplicationUserId]) VALUES (N'1', N'1')
INSERT [dbo].[Customers] ([Id], [ApplicationUserId]) VALUES (N'2', N'a29e9a11-1cf9-442f-bbd1-bbbfe5cb9d0d')
INSERT [dbo].[Customers] ([Id], [ApplicationUserId]) VALUES (N'4', N'b6d32c13-f345-45c7-8977-f09447c7b69c')
INSERT [dbo].[Customers] ([Id], [ApplicationUserId]) VALUES (N'3', N'b8d327aa-dc5b-4c4d-8ce1-78b1018d6014')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Date], [ShipDate], [Totalprice], [FirstName], [LastName], [StreetAddress], [Phone], [Email]) VALUES (1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-11-24T00:00:00.0000000' AS DateTime2), 0, N'Aya', N'Aboelela', N'Assiut', N'01155227303', N'aya.aboelela@gmail.com')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Produc_Suppliers] ON 

INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (1, 50, 100, N'Carrots.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 1, 1, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (2, 20, 15, N'Bell Pepper.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 7, 2, 1, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (3, 30, 20, N'Green Beans.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 4, 3, 1, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (4, 50, 25, N'Purple Cabbage.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 9, 4, 1, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (5, 55, 24, N'Fath Bags Roll.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 1, 2, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (6, 10, 90, N'Food Storage Bags.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 7, 36, 2, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (7, 11, 49, N'Tang Orange Drink.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 18, 3, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (8, 12, 48, N'Nescafe.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 10, 38, 3, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (9, 15, 80, N'Monello Cats.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 30, 4, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (10, 20, 95, N'Migma Adult.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 39, 4, 1)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (11, 7, 110, N'Scarf Chiffon.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 7, 6, 7, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (12, 4, 140, N'Paita Backpack.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 40, 7, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (13, 5, 1200, N'Woolen Elegant Jacket.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 10, 7, 7, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (14, 3, 999, N'Coat Black.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 5, 9, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (15, 8, 150, N'Eagle T-Shirt.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 31, 9, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (16, 10, 65, N'Summer Short.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 7, 43, 10, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (17, 4, 750, N'ADIDAS.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 44, 10, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (18, 6, 385, N'SLEEPSUITS.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 10, 45, 11, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (19, 7, 165, N'Half Boot.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 33, 11, 3)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (20, 3, 17200, N'Lenovo Tab P11 Plus.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 11, 12, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (21, 2, 10500, N'G-Tab P2000.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 10, 12, 12, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (22, 5, 15600, N'Samsung Galaxy A14.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 9, 10, 13, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (23, 6, 7250, N'XIAOMI Redmi128GB.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 9, 13, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (24, 11, 114, N'P47 Headphones.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 48, 14, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (25, 5, 3549, N'Smart Watch.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 10, 49, 14, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (26, 7, 535, N'Lava E5.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 51, 15, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (27, 6, 890, N'Nokia 130.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 52, 15, 4)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (28, 30, 43, N'Sensodyne Toothpaste.jpg', N'WHAT IS SENSODYNE DEEP CLEAN: It is a daily fluoride gel toothpaste, clinically proven to provide relief and ongoing effective protection against sensitivity*. It also provides whitening action and advanced cleaning designed for sensitive teeth. ', 1, 53, 16, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (29, 9, 55, N'Listerine.jpg', N'LISTERINE Advanced Tartar Control Mouthwash is specially formulated reduce the build-up of tartar to help prevent teeth stains and keep teeth naturally white. It prevents and reduces plaque and gingivitis, fights bacteria between teeth and freshens breath.', 10, 54, 16, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (30, 3, 855, N'Hair Dryer.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 13, 17, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (31, 20, 48, N'Aloe Eva Hair.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 25, 17, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (32, 15, 335, N'Avon Always.jpg', N'Avon Always EDP50MLIt was launched in 2018. This fragrance was signed by Olivier Cresp. Top notes are orange blossom, plum and Bergamot; Heart notes are rose, peony and mandarin blossom; The fragrance base consists of sandalwood, vanilla and apricot', 11, 26, 18, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (33, 7, 65, N'Fabiola Garden.jpg', N'Fabiola Eau De Parfum For Women.A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 9, 55, 18, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (34, 5, 200, N'LA Hottie Blush.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 29, 19, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (35, 7, 250, N'Fit Me Foundation.jpg', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 11, 28, 19, 7)
INSERT [dbo].[Produc_Suppliers] ([Id], [Quantity], [Price], [Image], [Description], [SupplierId], [ProductId], [SubCatId], [CatId]) VALUES (36, 10, 27, N'NIVEA Nivea.jpg', N'Nivea - Soft Refreshing & Moisturizing Cream Jar - 100ml.A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 10, 56, 19, 7)
SET IDENTITY_INSERT [dbo].[Produc_Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name]) VALUES (1, N'Carrots')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (2, N'Bell Pepper')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (3, N'Green Beans')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (4, N'Purple Cabbage')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (5, N'Coat Black')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (6, N'Scarf Chiffon')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (7, N'Woolen Jacket')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (8, N'American Shirt')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (9, N'XIAOMI Redmi')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (10, N'Samsung Galaxy A14 ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (11, N'Lenovo Tab ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (12, N'G-Tab P2000')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (13, N'Hair Dryer ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (14, N'Wooden Hair Brush')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (15, N'NIVEA Face Wash')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (16, N'Johnson''s Body Care')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (17, N'Strawberry')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (18, N'Fruit Juice')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (19, N'Onion')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (20, N'Samsung Galaxy A23')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (21, N'Iphone 13 Pro Max ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (22, N'Smart Watch ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (23, N'P47 Headphones')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (24, N'Clear Cream')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (25, N'Aloe Eva Hair')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (26, N'Avon Always ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (27, N'ST Dupont ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (28, N'Fit Me Foundation')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (29, N'LA Hottie Blush')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (30, N'Monello Cats')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (31, N'Eagle T-Shirt')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (32, N'Leather Jacket')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (33, N'Half Boot ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (34, N'Power Bank ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (35, N'Fath Bags Roll')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (36, N'Food Storage Bags')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (37, N'Tang Orange Drink')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (38, N'Nescafe 3in1')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (39, N'Migma Dogs')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (40, N'Paita Backpack ')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (41, N'Eagle Hoodie')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (42, N'Eagle Blouse')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (43, N'Summer Short')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (44, N'ADIDAS Shoes')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (45, N'SLEEPSUITS')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (46, N'Baby Girl Dress')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (47, N'Samsung Galaxy Tab')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (48, N'P47 Headphones')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (49, N'Smart Watch')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (50, N'OPPO Charger')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (51, N'Lava E5')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (52, N'Nokia 130')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (53, N'Sensodyne')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (54, N'Listerine')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (55, N'Fabiola Garden')
INSERT [dbo].[Products] ([Id], [Name]) VALUES (56, N'NIVEA Nivea')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (1, N'Food Cupboard', N'foodcupboard.jpg', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (2, N'Household Suppliers', N'householdsupplies.jpeg', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (3, N'Beverages', N'beverages.jpg', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (4, N'Pet Suppliers', N'petsupplies.jpg', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (7, N'Women''s Fashion', N'womenfashion.jpg', 3)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (9, N'Men''s Fashion', N'menfashion.jpg', 3)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (10, N'Kid''s Fashion', N'kidsfashion.jpg', 3)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (11, N'Baby''s Fashion', N'babyfashion.jpg', 3)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (12, N'Tablets', N'tablets.webp', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (13, N'Mobile Phones', N'phones.webp', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (14, N'Accessories', N'accessories.jpg', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (15, N'Cell Phones', N'cellphones.jpg', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (16, N'Personal Care', N'personalcare.jpg', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (17, N'Hair Care ', N'harecare.jpg', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (18, N'Fragrance', N'fragrance.png', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [Image], [CatId]) VALUES (19, N'Makeup', N'makeup.jpg', 7)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name], [Image], [Email], [PhoneNumber], [Address]) VALUES (1, N'B-Tech', N'B.tech.jpg', N'btech@gmail.com', N'01021963006', N'Assiut')
INSERT [dbo].[Suppliers] ([Id], [Name], [Image], [Email], [PhoneNumber], [Address]) VALUES (4, N'Premoda', N'premoda.png', N'premoda@gmail.com', N'01177753389', N'Assiut')
INSERT [dbo].[Suppliers] ([Id], [Name], [Image], [Email], [PhoneNumber], [Address]) VALUES (7, N'kazone', N'kazone.jpg', N'kazone@gmail.com', N'01268999870', N'Sohag')
INSERT [dbo].[Suppliers] ([Id], [Name], [Image], [Email], [PhoneNumber], [Address]) VALUES (9, N'LcWaikiki', N'lc.jpg', N'Lcwaikiki@gmail.com', N'01566623445', N'Cairo')
INSERT [dbo].[Suppliers] ([Id], [Name], [Image], [Email], [PhoneNumber], [Address]) VALUES (10, N'Shoeroom', N'shoeroom.png', N'shoeroom@gmail.com', N'01188896690', N'Tanta')
INSERT [dbo].[Suppliers] ([Id], [Name], [Image], [Email], [PhoneNumber], [Address]) VALUES (11, N'premoda', N'premoda.png', N'premoda@gmail.com', N'01566688883', N'America')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cart_CustomerId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cart_CustomerId] ON [dbo].[Cart]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cart_Produc_SupplierId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cart_Produc_SupplierId] ON [dbo].[Cart]
(
	[Produc_SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Comments_CustomerId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_CustomerId] ON [dbo].[Comments]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_Prod_SupId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_Prod_SupId] ON [dbo].[Comments]
(
	[Prod_SupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Customers_ApplicationUserId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Customers_ApplicationUserId] ON [dbo].[Customers]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderDetails_CustomerId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_CustomerId] ON [dbo].[OrderDetails]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_Produc_SupplierId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_Produc_SupplierId] ON [dbo].[OrderDetails]
(
	[Produc_SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produc_Suppliers_CatId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produc_Suppliers_CatId] ON [dbo].[Produc_Suppliers]
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produc_Suppliers_ProductId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produc_Suppliers_ProductId] ON [dbo].[Produc_Suppliers]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produc_Suppliers_SubCatId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produc_Suppliers_SubCatId] ON [dbo].[Produc_Suppliers]
(
	[SubCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produc_Suppliers_SupplierId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produc_Suppliers_SupplierId] ON [dbo].[Produc_Suppliers]
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubCategories_CatId]    Script Date: 3/26/2023 10:39:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubCategories_CatId] ON [dbo].[SubCategories]
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Produc_Suppliers_Produc_SupplierId] FOREIGN KEY([Produc_SupplierId])
REFERENCES [dbo].[Produc_Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Produc_Suppliers_Produc_SupplierId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Produc_Suppliers_Prod_SupId] FOREIGN KEY([Prod_SupId])
REFERENCES [dbo].[Produc_Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Produc_Suppliers_Prod_SupId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Customers_CustomerId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Produc_Suppliers_Produc_SupplierId] FOREIGN KEY([Produc_SupplierId])
REFERENCES [dbo].[Produc_Suppliers] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Produc_Suppliers_Produc_SupplierId]
GO
ALTER TABLE [dbo].[Produc_Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Produc_Suppliers_Categories_CatId] FOREIGN KEY([CatId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Produc_Suppliers] CHECK CONSTRAINT [FK_Produc_Suppliers_Categories_CatId]
GO
ALTER TABLE [dbo].[Produc_Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Produc_Suppliers_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Produc_Suppliers] CHECK CONSTRAINT [FK_Produc_Suppliers_Products_ProductId]
GO
ALTER TABLE [dbo].[Produc_Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Produc_Suppliers_SubCategories_SubCatId] FOREIGN KEY([SubCatId])
REFERENCES [dbo].[SubCategories] ([Id])
GO
ALTER TABLE [dbo].[Produc_Suppliers] CHECK CONSTRAINT [FK_Produc_Suppliers_SubCategories_SubCatId]
GO
ALTER TABLE [dbo].[Produc_Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Produc_Suppliers_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Produc_Suppliers] CHECK CONSTRAINT [FK_Produc_Suppliers_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories_CatId] FOREIGN KEY([CatId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories_CatId]
GO
USE [master]
GO
ALTER DATABASE [MVC_Project] SET  READ_WRITE 
GO
