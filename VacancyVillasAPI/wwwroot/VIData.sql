USE [Vacancesvilla]
GO
/****** Object:  UserDefinedTableType [dbo].[type_HouseGeneralAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
CREATE TYPE [dbo].[type_HouseGeneralAmenities] AS TABLE(
	[GeneralAmentiesIds] [int] NULL,
	[IsActive] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[type_HouseNotAvaiable]    Script Date: 12/19/2021 12:49:43 AM ******/
CREATE TYPE [dbo].[type_HouseNotAvaiable] AS TABLE(
	[HouseId] [int] NULL,
	[HouseNotAvaiableDates] [date] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[type_HouseOtherAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
CREATE TYPE [dbo].[type_HouseOtherAmenities] AS TABLE(
	[OtherAmenitiesIds] [int] NULL,
	[IsActive] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[type_HouseSafeAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
CREATE TYPE [dbo].[type_HouseSafeAmenities] AS TABLE(
	[SafeAmenitiesIds] [int] NULL,
	[IsActive] [bit] NULL
)
GO
/****** Object:  Table [dbo].[tbl_Cities]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cities](
	[CityId] [int] NOT NULL,
	[CityName] [varchar](255) NULL,
	[state_id] [int] NULL,
	[state_code] [varchar](255) NULL,
	[country_id] [int] NULL,
	[country_code] [varchar](255) NULL,
	[latitude] [decimal](10, 8) NOT NULL,
	[longitude] [decimal](11, 8) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[flag] [int] NOT NULL,
	[wikiDataId] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Countries]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[iso3] [char](3) NULL,
	[numeric_code] [char](3) NULL,
	[iso2] [char](2) NULL,
	[phonecode] [nvarchar](100) NULL,
	[capital] [varchar](255) NULL,
	[currency] [varchar](255) NULL,
	[currency_symbol] [varchar](255) NULL,
	[tld] [varchar](255) NULL,
	[native] [varchar](255) NULL,
	[region] [varchar](255) NULL,
	[subregion] [varchar](255) NULL,
	[timezones] [nvarchar](255) NULL,
	[translations] [nvarchar](max) NULL,
	[latitude] [decimal](11, 8) NULL,
	[longitude] [decimal](11, 8) NULL,
	[emoji] [nvarchar](191) NULL,
	[emojiU] [nvarchar](191) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[flag] [int] NOT NULL,
	[wikiDataId] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Currency]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Currency](
	[CurrencyId] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyName] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GeneralAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GeneralAmenities](
	[GeneralAmenitiesId] [int] IDENTITY(1,1) NOT NULL,
	[GeneralAmenitiesNameEn] [nvarchar](250) NULL,
	[GeneralAmenitiesNameFr] [nvarchar](250) NULL,
	[GeneralAmenitiesNameSp] [nvarchar](250) NULL,
	[GeneralAmenitiesNameDu] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[GeneralAmenitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_House]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_House](
	[HouseId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PropertyId] [int] NULL,
	[PlaceName] [nvarchar](max) NULL,
	[RentalId] [int] NOT NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[CountryId] [int] NULL,
	[StreetName] [nvarchar](max) NULL,
	[RoomNumber] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[StateName] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[Acreage] [nvarchar](max) NULL,
	[Guests] [int] NULL,
	[Bedroom] [int] NULL,
	[Beds] [int] NULL,
	[Bathroom] [int] NULL,
	[Kitchen] [int] NULL,
	[GeneralAmenitiesRule] [int] NULL,
	[PetRule] [int] NULL,
	[PartyOrganizingRule] [int] NULL,
	[CookingRule] [int] NULL,
	[AdditionalRuleText] [nvarchar](max) NULL,
	[PlaceDesForClient] [nvarchar](max) NULL,
	[HouseCoverImage] [nvarchar](max) NULL,
	[HousePlaceImage] [nvarchar](max) NULL,
	[OneNightPrice] [float] NULL,
	[MonThusPrice] [float] NULL,
	[FriSunPrice] [float] NULL,
	[Longtermprice] [float] NULL,
	[NightsMin] [float] NULL,
	[NightsMax] [float] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[stepCode] [int] NULL,
	[Currency] [nvarchar](max) NULL,
	[availDate] [datetime] NULL,
 CONSTRAINT [PK__tbl_Hous__085D128F079D8312] PRIMARY KEY CLUSTERED 
(
	[HouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HouseGeneralAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HouseGeneralAmenities](
	[HouseGeneralAmenitiesId] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [int] NULL,
	[GeneralAmentiesId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseGeneralAmenitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HouseImages]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HouseImages](
	[HouseImagesId] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [int] NULL,
	[HousePlaceImage] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseImagesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HouseNotAvaiable]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HouseNotAvaiable](
	[HouseNotAvaiableId] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [int] NULL,
	[Dates] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseNotAvaiableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HouseOtherAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HouseOtherAmenities](
	[HouseOtherAmenitiesId] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [int] NULL,
	[OtherAmenitiesId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseOtherAmenitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HouseSafeAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HouseSafeAmenities](
	[HouseSafeAmenitiesId] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [int] NULL,
	[SafeAmenitiesId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseSafeAmenitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Module]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Module](
	[ModuleId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ModulePermission]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ModulePermission](
	[ModulePermissionId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NULL,
	[RoleId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModulePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OtherAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OtherAmenities](
	[OtherAmenitiesId] [int] IDENTITY(1,1) NOT NULL,
	[OtherAmenitiesNameEn] [nvarchar](250) NULL,
	[OtherAmenitiesNameFr] [nvarchar](250) NULL,
	[OtherAmenitiesNameSp] [nvarchar](250) NULL,
	[OtherAmenitiesNameDu] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OtherAmenitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PageActionPermission]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PageActionPermission](
	[PageActionPermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PageActionId] [int] NULL,
	[RoleId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PageActionPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PagePermission]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PagePermission](
	[PagePermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PageId] [int] NULL,
	[RoleId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PagePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Pages]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Pages](
	[PageId] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PagesAction]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PagesAction](
	[PageActionId] [int] IDENTITY(1,1) NOT NULL,
	[PageId] [int] NULL,
	[PageActionName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__tbl_Page__1DF3BB5F904F521D] PRIMARY KEY CLUSTERED 
(
	[PageActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PropertyType]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PropertyType](
	[PropertyId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyEn] [nvarchar](250) NULL,
	[PropertyFr] [nvarchar](250) NULL,
	[PropertySp] [nvarchar](250) NULL,
	[PropertyDu] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RentalForm]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RentalForm](
	[RentalId] [int] IDENTITY(1,1) NOT NULL,
	[RentalEn] [nvarchar](250) NULL,
	[RentalFr] [nvarchar](250) NULL,
	[RentalSp] [nvarchar](250) NULL,
	[RentalDu] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RentalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SafeAmenities]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SafeAmenities](
	[SafeAmenitiesId] [int] IDENTITY(1,1) NOT NULL,
	[SafeAmenitiesNameEn] [nvarchar](250) NULL,
	[SafeAmenitiesNameFr] [nvarchar](250) NULL,
	[SafeAmenitiesNameSp] [nvarchar](250) NULL,
	[SafeAmenitiesNameDu] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SafeAmenitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Firstname] [nvarchar](100) NULL,
	[Lastname] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Address] [nvarchar](max) NULL,
	[Number] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](100) NULL,
	[CityId] [int] NULL,
	[CountryId] [int] NULL,
	[Gender] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Other] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserRole]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRole](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Vendor]    Script Date: 12/19/2021 12:49:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Vendor](
	[VendorId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[CompanyName] [nvarchar](max) NULL,
	[CompanyDescription] [nvarchar](max) NULL,
	[CompanyMail] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[CompanyAddress] [nvarchar](max) NULL,
	[CompanyPostalCode] [nvarchar](max) NULL,
	[CityId] [int] NULL,
	[CounttyId] [int] NULL,
	[IsApproved] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__tbl_Vend__FC8618F3D873E36C] PRIMARY KEY CLUSTERED 
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (1, N'Andorra la Vella', 488, N'07', 6, N'AD', CAST(42.50779000 AS Decimal(10, 8)), CAST(1.52109000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q1863')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (2, N'Arinsal', 493, N'04', 6, N'AD', CAST(42.57205000 AS Decimal(10, 8)), CAST(1.48453000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q24554')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (3, N'Canillo', 489, N'02', 6, N'AD', CAST(42.56760000 AS Decimal(10, 8)), CAST(1.59756000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q24554')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (4, N'El Tarter', 489, N'02', 6, N'AD', CAST(42.57952000 AS Decimal(10, 8)), CAST(1.65362000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q24413')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (5, N'Encamp', 487, N'03', 6, N'AD', CAST(42.53474000 AS Decimal(10, 8)), CAST(1.58014000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q24413')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (6, N'Ordino', 491, N'05', 6, N'AD', CAST(42.55623000 AS Decimal(10, 8)), CAST(1.53319000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q3885480')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (7, N'Pas de la Casa', 487, N'03', 6, N'AD', CAST(42.54277000 AS Decimal(10, 8)), CAST(1.73361000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q24456')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (8, N'Sant Julià de Lòria', 490, N'06', 6, N'AD', CAST(42.46372000 AS Decimal(10, 8)), CAST(1.49129000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q1120573')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (9, N'la Massana', 493, N'04', 6, N'AD', CAST(42.54499000 AS Decimal(10, 8)), CAST(1.51483000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q3820973')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (10, N'les Escaldes', 492, N'08', 6, N'AD', CAST(42.50729000 AS Decimal(10, 8)), CAST(1.53414000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q1050185')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (11, N'Abu Dhabi Island and Internal Islands City', 3396, N'AZ', 231, N'AE', CAST(24.45110000 AS Decimal(10, 8)), CAST(54.39690000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q1050185')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (12, N'Abu Dhabi Municipality', 3396, N'AZ', 231, N'AE', CAST(24.41361000 AS Decimal(10, 8)), CAST(54.43295000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q1050185')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (13, N'Adh Dhayd', 3390, N'SH', 231, N'AE', CAST(25.28812000 AS Decimal(10, 8)), CAST(55.88157000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q3492826')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (14, N'Ajman', 3395, N'AJ', 231, N'AE', CAST(25.40328000 AS Decimal(10, 8)), CAST(55.52341000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q3492826')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (15, N'Ajman City', 3395, N'AJ', 231, N'AE', CAST(25.40177000 AS Decimal(10, 8)), CAST(55.47878000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q530171')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (16, N'Al Ain City', 3396, N'AZ', 231, N'AE', CAST(24.19167000 AS Decimal(10, 8)), CAST(55.76056000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:06.000' AS DateTime), CAST(N'2019-10-05T18:28:06.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (17, N'Al Ain Municipality', 3396, N'AZ', 231, N'AE', CAST(24.15223000 AS Decimal(10, 8)), CAST(55.82040000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (18, N'Al Batayih', 3390, N'SH', 231, N'AE', CAST(25.22317000 AS Decimal(10, 8)), CAST(55.74272000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (19, N'Al Dhafra', 3396, N'AZ', 231, N'AE', CAST(23.65745000 AS Decimal(10, 8)), CAST(53.72225000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (20, N'Al Fujairah City', 3393, N'FU', 231, N'AE', CAST(25.11641000 AS Decimal(10, 8)), CAST(56.34141000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (21, N'Al Fujairah Municipality', 3393, N'FU', 231, N'AE', CAST(25.13557000 AS Decimal(10, 8)), CAST(56.33279000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (22, N'Al Hamriyah', 3390, N'SH', 231, N'AE', CAST(25.46121000 AS Decimal(10, 8)), CAST(55.54813000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (23, N'Al Madam', 3390, N'SH', 231, N'AE', CAST(24.95536000 AS Decimal(10, 8)), CAST(55.76820000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (24, N'Al Shamkhah City', 3396, N'AZ', 231, N'AE', CAST(24.39268000 AS Decimal(10, 8)), CAST(54.70779000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q234600')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (25, N'Ar Ruways', 3396, N'AZ', 231, N'AE', CAST(24.11028000 AS Decimal(10, 8)), CAST(52.73056000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1023786')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (26, N'Bani Yas City', 3396, N'AZ', 231, N'AE', CAST(24.30978000 AS Decimal(10, 8)), CAST(54.62944000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1023786')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (27, N'Dhaid', 3390, N'SH', 231, N'AE', CAST(25.26951000 AS Decimal(10, 8)), CAST(55.92024000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1023786')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (28, N'Dibba Al Fujairah Municipality', 3393, N'FU', 231, N'AE', CAST(25.58580000 AS Decimal(10, 8)), CAST(56.24792000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1023786')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (29, N'Dibba Al Hesn', 3390, N'SH', 231, N'AE', CAST(25.61593000 AS Decimal(10, 8)), CAST(56.26899000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1023786')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (30, N'Dibba Al-Fujairah', 3393, N'FU', 231, N'AE', CAST(25.59246000 AS Decimal(10, 8)), CAST(56.26176000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q3696182')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (31, N'Dibba Al-Hisn', 3393, N'FU', 231, N'AE', CAST(25.61955000 AS Decimal(10, 8)), CAST(56.27291000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q6742405')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (32, N'Dubai', 3391, N'DU', 231, N'AE', CAST(25.06570000 AS Decimal(10, 8)), CAST(55.17128000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q6742405')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (33, N'Kalba', 3390, N'SH', 231, N'AE', CAST(24.99816000 AS Decimal(10, 8)), CAST(56.27207000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q6742405')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (34, N'Khalifah A City', 3396, N'AZ', 231, N'AE', CAST(24.42588000 AS Decimal(10, 8)), CAST(54.60500000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q6742405')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (35, N'Khawr Fakkan', 3390, N'SH', 231, N'AE', CAST(25.33132000 AS Decimal(10, 8)), CAST(56.34199000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:23:20.000' AS DateTime), 1, N'Q764279')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (36, N'Khor Fakkan', 3390, N'SH', 231, N'AE', CAST(25.33966000 AS Decimal(10, 8)), CAST(56.30280000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q764279')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (37, N'Manama', 3395, N'AJ', 231, N'AE', CAST(25.32568000 AS Decimal(10, 8)), CAST(56.00259000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q764279')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (38, N'Masfout', 3395, N'AJ', 231, N'AE', CAST(24.83982000 AS Decimal(10, 8)), CAST(56.05158000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q764279')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (39, N'Milehah', 3390, N'SH', 231, N'AE', CAST(25.10097000 AS Decimal(10, 8)), CAST(55.91282000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q764279')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (40, N'Murba?', 3390, N'SH', 231, N'AE', CAST(25.27623000 AS Decimal(10, 8)), CAST(56.36256000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:23:20.000' AS DateTime), 1, N'Q764279')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (41, N'Musaffah', 3396, N'AZ', 231, N'AE', CAST(24.35893000 AS Decimal(10, 8)), CAST(54.48267000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q764279')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (42, N'Muzayri‘', 3396, N'AZ', 231, N'AE', CAST(23.14355000 AS Decimal(10, 8)), CAST(53.78810000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:23:20.000' AS DateTime), 1, N'Q21735810')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (43, N'Ras Al Khaimah', 3394, N'RK', 231, N'AE', CAST(25.46116000 AS Decimal(10, 8)), CAST(56.04058000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q21735810')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (44, N'Ras Al Khaimah City', 3394, N'RK', 231, N'AE', CAST(25.78953000 AS Decimal(10, 8)), CAST(55.94320000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q21735810')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (45, N'Reef Al Fujairah City', 3393, N'FU', 231, N'AE', CAST(25.14479000 AS Decimal(10, 8)), CAST(56.24764000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q21735810')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (46, N'Sharjah', 3390, N'SH', 231, N'AE', CAST(25.33737000 AS Decimal(10, 8)), CAST(55.41206000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q289693')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (47, N'Umm AL Quwain', 3392, N'UQ', 231, N'AE', CAST(25.49326000 AS Decimal(10, 8)), CAST(55.73520000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q289693')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (48, N'Umm Al Quwain City', 3392, N'UQ', 231, N'AE', CAST(25.56473000 AS Decimal(10, 8)), CAST(55.55517000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q289693')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (49, N'Zayed City', 3396, N'AZ', 231, N'AE', CAST(23.65416000 AS Decimal(10, 8)), CAST(53.70522000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q289693')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (50, N'Andkhoy', 3889, N'FYB', 1, N'AF', CAST(36.95293000 AS Decimal(10, 8)), CAST(65.12376000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-06-14T11:59:05.000' AS DateTime), 1, N'Q1054127')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (51, N'Asadabad', 3876, N'KNR', 1, N'AF', CAST(34.87311000 AS Decimal(10, 8)), CAST(71.14697000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-06-14T11:59:02.000' AS DateTime), 1, N'Q685808')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (52, N'Ashkasham', 3901, N'BDS', 1, N'AF', CAST(36.68333000 AS Decimal(10, 8)), CAST(71.53333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q4805192')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (53, N'Aibak', 3883, N'SAM', 1, N'AF', CAST(36.26468000 AS Decimal(10, 8)), CAST(68.01551000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q1020649')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (54, N'Baghlan', 3875, N'BGL', 1, N'AF', CAST(36.13068000 AS Decimal(10, 8)), CAST(68.70829000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q732879')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (55, N'Balkh', 3884, N'BAL', 1, N'AF', CAST(36.75635000 AS Decimal(10, 8)), CAST(66.89720000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q182159')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (56, N'Baraki Barak', 3897, N'LOG', 1, N'AF', CAST(33.96744000 AS Decimal(10, 8)), CAST(68.94920000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q807234')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (57, N'Bamyan', 3872, N'BAM', 1, N'AF', CAST(34.82156000 AS Decimal(10, 8)), CAST(67.82734000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q214495')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (58, N'Basawul', 3882, N'NAN', 1, N'AF', CAST(34.24749000 AS Decimal(10, 8)), CAST(70.87218000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q214495')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (59, N'Bazarak', 3881, N'PAN', 1, N'AF', CAST(35.31292000 AS Decimal(10, 8)), CAST(69.51519000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q214495')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (60, N'Chahar Burj', 3887, N'HER', 1, N'AF', CAST(34.24475000 AS Decimal(10, 8)), CAST(62.19165000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21763949')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (61, N'Charikar', 3895, N'PAR', 1, N'AF', CAST(35.01361000 AS Decimal(10, 8)), CAST(69.17139000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q944395')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (62, N'Chiras', 3885, N'SAR', 1, N'AF', CAST(35.41674000 AS Decimal(10, 8)), CAST(65.98234000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21760615')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (63, N'Darzab', 3886, N'JOW', 1, N'AF', CAST(35.97744000 AS Decimal(10, 8)), CAST(65.37828000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q5196429')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (64, N'Dasht-e Archi', 3900, N'KDZ', 1, N'AF', CAST(37.13333000 AS Decimal(10, 8)), CAST(69.16667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21758408')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (65, N'Dowlatabad', 3884, N'BAL', 1, N'AF', CAST(36.98821000 AS Decimal(10, 8)), CAST(66.82069000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2163607')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (66, N'Farah', 3899, N'FRA', 1, N'AF', CAST(32.37451000 AS Decimal(10, 8)), CAST(62.11638000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q593156')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (67, N'Fayroz Koh', 3888, N'GHO', 1, N'AF', CAST(34.51952000 AS Decimal(10, 8)), CAST(65.25093000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q958621')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (68, N'Fayzabad', 3901, N'BDS', 1, N'AF', CAST(37.11664000 AS Decimal(10, 8)), CAST(70.58002000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q156558')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (69, N'Gardez', 3894, N'PIA', 1, N'AF', CAST(33.59744000 AS Decimal(10, 8)), CAST(69.22592000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q467632')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (70, N'Gereshk', 3873, N'HEL', 1, N'AF', CAST(31.82089000 AS Decimal(10, 8)), CAST(64.57005000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q3735459')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (71, N'Ghazni', 3870, N'GHA', 1, N'AF', CAST(33.55391000 AS Decimal(10, 8)), CAST(68.42096000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q173731')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (72, N'Ghormach', 3871, N'BDG', 1, N'AF', CAST(35.73062000 AS Decimal(10, 8)), CAST(63.78264000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q5556982')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (73, N'Ghoriyan', 3887, N'HER', 1, N'AF', CAST(34.34480000 AS Decimal(10, 8)), CAST(61.49321000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2634612')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (74, N'Herat', 3887, N'HER', 1, N'AF', CAST(34.34817000 AS Decimal(10, 8)), CAST(62.19967000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q45313')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (75, N'Imam Sa?ib', 3900, N'KDZ', 1, N'AF', CAST(37.18897000 AS Decimal(10, 8)), CAST(68.93644000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q670101')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (76, N'Jabal os Saraj', 3895, N'PAR', 1, N'AF', CAST(35.11833000 AS Decimal(10, 8)), CAST(69.23778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q670101')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (77, N'Jalalabad', 3882, N'NAN', 1, N'AF', CAST(34.42647000 AS Decimal(10, 8)), CAST(70.45153000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q183303')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (78, N'Jurm', 3901, N'BDS', 1, N'AF', CAST(36.86477000 AS Decimal(10, 8)), CAST(70.83421000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q10308323')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (79, N'Kabul', 3902, N'KAB', 1, N'AF', CAST(34.52813000 AS Decimal(10, 8)), CAST(69.17233000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q5838')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (80, N'Kafir Qala', 3887, N'HER', 1, N'AF', CAST(34.66667000 AS Decimal(10, 8)), CAST(61.06667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q4115284')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (81, N'Kandahar', 3890, N'KAN', 1, N'AF', CAST(31.61332000 AS Decimal(10, 8)), CAST(65.71013000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q45604')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (82, N'Karukh', 3887, N'HER', 1, N'AF', CAST(34.48108000 AS Decimal(10, 8)), CAST(62.58630000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q6373621')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (83, N'Khanabad', 3900, N'KDZ', 1, N'AF', CAST(36.68250000 AS Decimal(10, 8)), CAST(69.11556000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1247205')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (84, N'Khandud', 3901, N'BDS', 1, N'AF', CAST(36.95127000 AS Decimal(10, 8)), CAST(72.31800000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q3290334')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (85, N'Khulm', 3884, N'BAL', 1, N'AF', CAST(36.69736000 AS Decimal(10, 8)), CAST(67.69826000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1014375')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (86, N'Khash', 3896, N'NIM', 1, N'AF', CAST(31.52919000 AS Decimal(10, 8)), CAST(62.79055000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21752345')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (87, N'Khost', 3878, N'KHO', 1, N'AF', CAST(33.33951000 AS Decimal(10, 8)), CAST(69.92041000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q386682')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (88, N'Kuhsan', 3887, N'HER', 1, N'AF', CAST(34.65389000 AS Decimal(10, 8)), CAST(61.19778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q6426147')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (89, N'Kunduz', 3900, N'KDZ', 1, N'AF', CAST(36.72895000 AS Decimal(10, 8)), CAST(68.85700000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q108155')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (90, N'Kushk', 3887, N'HER', 1, N'AF', CAST(33.29565000 AS Decimal(10, 8)), CAST(61.95221000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q21751918')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (91, N'Lab-Sar', 3884, N'BAL', 1, N'AF', CAST(36.02634000 AS Decimal(10, 8)), CAST(66.83799000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q21813067')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (92, N'Larkird', 3885, N'SAR', 1, N'AF', CAST(35.48936000 AS Decimal(10, 8)), CAST(66.66409000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q21752020')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (93, N'Lashkar Gah', 3873, N'HEL', 1, N'AF', CAST(31.59382000 AS Decimal(10, 8)), CAST(64.37161000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q476800')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (94, N'Markaz-e Woluswali-ye Achin', 3882, N'NAN', 1, N'AF', CAST(34.12583000 AS Decimal(10, 8)), CAST(70.70778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q476800')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (95, N'Markaz-e ?ukumat-e Darweshan', 3873, N'HEL', 1, N'AF', CAST(31.13231000 AS Decimal(10, 8)), CAST(64.19340000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21758384')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (96, N'Maymana', 3889, N'FYB', 1, N'AF', CAST(35.92139000 AS Decimal(10, 8)), CAST(64.78361000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q309345')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (97, N'Mazar-e Sharif', 3884, N'BAL', 1, N'AF', CAST(36.70904000 AS Decimal(10, 8)), CAST(67.11087000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q130469')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (98, N'Mehtar Lam', 3891, N'LAG', 1, N'AF', CAST(34.67139000 AS Decimal(10, 8)), CAST(70.20944000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q1982155')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (99, N'Mir Bachah Ko?', 3902, N'KAB', 1, N'AF', CAST(34.74999000 AS Decimal(10, 8)), CAST(69.11899000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q6872026')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (100, N'Mirabad', 3896, N'NIM', 1, N'AF', CAST(30.43624000 AS Decimal(10, 8)), CAST(61.83830000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21751462')
GO
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (101, N'Nahrin', 3875, N'BGL', 1, N'AF', CAST(36.06490000 AS Decimal(10, 8)), CAST(69.13343000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q6959392')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (102, N'Nili', 3892, N'DAY', 1, N'AF', CAST(33.76329000 AS Decimal(10, 8)), CAST(66.07617000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q3218967')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (103, N'Paghman', 3902, N'KAB', 1, N'AF', CAST(34.58787000 AS Decimal(10, 8)), CAST(68.95091000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2502256')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (104, N'Panjab', 3872, N'BAM', 1, N'AF', CAST(34.38795000 AS Decimal(10, 8)), CAST(67.02327000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q7131225')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (105, N'Pul-e Khumri', 3875, N'BGL', 1, N'AF', CAST(35.94458000 AS Decimal(10, 8)), CAST(68.71512000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q477148')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (106, N'Pul-e ‘Alam', 3897, N'LOG', 1, N'AF', CAST(33.99529000 AS Decimal(10, 8)), CAST(69.02274000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q1006289')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (107, N'Parun', 3880, N'NUR', 1, N'AF', CAST(35.42064000 AS Decimal(10, 8)), CAST(70.92261000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q1023669')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (108, N'Qala i Naw', 3871, N'BDG', 1, N'AF', CAST(34.98735000 AS Decimal(10, 8)), CAST(63.12891000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q26396')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (109, N'Qalat', 3874, N'ZAB', 1, N'AF', CAST(32.10575000 AS Decimal(10, 8)), CAST(66.90833000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q527318')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (110, N'Qal‘ah-ye Shahr', 3885, N'SAR', 1, N'AF', CAST(35.54729000 AS Decimal(10, 8)), CAST(65.56760000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21750144')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (111, N'Qarah Bagh', 3887, N'HER', 1, N'AF', CAST(34.94023000 AS Decimal(10, 8)), CAST(61.77589000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21750144')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (112, N'Qarchi Gak', 3884, N'BAL', 1, N'AF', CAST(37.03999000 AS Decimal(10, 8)), CAST(66.78891000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q3290339')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (113, N'Qarqin', 3886, N'JOW', 1, N'AF', CAST(37.41853000 AS Decimal(10, 8)), CAST(66.04358000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q5199398')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (114, N'Qarawul', 3900, N'KDZ', 1, N'AF', CAST(37.21959000 AS Decimal(10, 8)), CAST(68.78020000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21748632')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (115, N'Raghistan', 3901, N'BDS', 1, N'AF', CAST(37.66079000 AS Decimal(10, 8)), CAST(70.67346000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2670909')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (116, N'Rudbar', 3896, N'NIM', 1, N'AF', CAST(30.15000000 AS Decimal(10, 8)), CAST(62.60000000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21748160')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (117, N'Sang-e Charak', 3885, N'SAR', 1, N'AF', CAST(35.84972000 AS Decimal(10, 8)), CAST(66.43694000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21748160')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (118, N'Sangin', 3873, N'HEL', 1, N'AF', CAST(32.07275000 AS Decimal(10, 8)), CAST(64.83590000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2457742')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (119, N'Sar-e Pul', 3885, N'SAR', 1, N'AF', CAST(36.21544000 AS Decimal(10, 8)), CAST(65.93249000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1649301')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (120, N'Sa?obi', 3877, N'PKA', 1, N'AF', CAST(32.75221000 AS Decimal(10, 8)), CAST(69.04587000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q6596821')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (121, N'Shahrak', 3888, N'GHO', 1, N'AF', CAST(34.10737000 AS Decimal(10, 8)), CAST(64.30520000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q7461922')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (122, N'Shibirghan', 3886, N'JOW', 1, N'AF', CAST(36.66757000 AS Decimal(10, 8)), CAST(65.75290000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q838954')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (123, N'Shin?an?', 3887, N'HER', 1, N'AF', CAST(33.30294000 AS Decimal(10, 8)), CAST(62.14740000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q3944388')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (124, N'Sidqabad', 3879, N'KAP', 1, N'AF', CAST(35.02298000 AS Decimal(10, 8)), CAST(69.35112000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q600514')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (125, N'Tagaw-Bay', 3885, N'SAR', 1, N'AF', CAST(35.69941000 AS Decimal(10, 8)), CAST(66.06164000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21742929')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (126, N'Taloqan', 3893, N'TAK', 1, N'AF', CAST(36.73605000 AS Decimal(10, 8)), CAST(69.53451000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q477238')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (127, N'Tarinkot', 3898, N'URU', 1, N'AF', CAST(32.62998000 AS Decimal(10, 8)), CAST(65.87806000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q989293')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (128, N'Tukzar', 3885, N'SAR', 1, N'AF', CAST(35.94831000 AS Decimal(10, 8)), CAST(66.42132000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q7851883')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (129, N'Tir Pul', 3887, N'HER', 1, N'AF', CAST(34.59431000 AS Decimal(10, 8)), CAST(61.26895000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21740029')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (130, N'Uruzgan', 3898, N'URU', 1, N'AF', CAST(32.92775000 AS Decimal(10, 8)), CAST(66.63253000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21750884')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (131, N'Wakhan', 3901, N'BDS', 1, N'AF', CAST(37.05710000 AS Decimal(10, 8)), CAST(73.34928000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2509959')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (132, N'Zaranj', 3896, N'NIM', 1, N'AF', CAST(30.95962000 AS Decimal(10, 8)), CAST(61.86037000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q475802')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (133, N'Zarghun Shahr', 3877, N'PKA', 1, N'AF', CAST(32.84734000 AS Decimal(10, 8)), CAST(68.44573000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21737614')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (134, N'Za?ah Sharan', 3877, N'PKA', 1, N'AF', CAST(33.14641000 AS Decimal(10, 8)), CAST(68.79213000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2615863')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (135, N'Zindah Jan', 3887, N'HER', 1, N'AF', CAST(34.34264000 AS Decimal(10, 8)), CAST(61.74675000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q5918492')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (136, N'Aqchah', 3886, N'JOW', 1, N'AF', CAST(36.90500000 AS Decimal(10, 8)), CAST(66.18341000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2246526')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (137, N'Art Khwajah', 3893, N'TAK', 1, N'AF', CAST(37.08571000 AS Decimal(10, 8)), CAST(69.47958000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21765117')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (138, N'Asmar', 3876, N'KNR', 1, N'AF', CAST(35.03333000 AS Decimal(10, 8)), CAST(71.35809000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21765090')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (139, N'?ukumati Azrah', 3897, N'LOG', 1, N'AF', CAST(34.17355000 AS Decimal(10, 8)), CAST(69.64573000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q21765090')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (140, N'?ukumati Dahanah-ye Ghori', 3875, N'BGL', 1, N'AF', CAST(35.90617000 AS Decimal(10, 8)), CAST(68.48869000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q5194960')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (141, N'‘Alaqahdari Dishu', 3873, N'HEL', 1, N'AF', CAST(30.43206000 AS Decimal(10, 8)), CAST(63.29802000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q5194960')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (142, N'All Saints', 3704, N'07', 10, N'AG', CAST(17.06671000 AS Decimal(10, 8)), CAST(-61.79303000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1771715')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (143, N'Bolands', 3707, N'05', 10, N'AG', CAST(17.06565000 AS Decimal(10, 8)), CAST(-61.87466000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1771701')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (144, N'Codrington', 3708, N'10', 10, N'AG', CAST(17.63333000 AS Decimal(10, 8)), CAST(-61.83333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1024679')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (145, N'Falmouth', 3705, N'06', 10, N'AG', CAST(17.02741000 AS Decimal(10, 8)), CAST(-61.78136000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q3299460')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (146, N'Liberta', 3705, N'06', 10, N'AG', CAST(17.04141000 AS Decimal(10, 8)), CAST(-61.79052000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1771710')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (147, N'Parham', 3704, N'07', 10, N'AG', CAST(17.09682000 AS Decimal(10, 8)), CAST(-61.77046000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q376195')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (148, N'Piggotts', 3709, N'03', 10, N'AG', CAST(17.11667000 AS Decimal(10, 8)), CAST(-61.80000000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1771704')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (149, N'Potters Village', 3706, N'04', 10, N'AG', CAST(17.11337000 AS Decimal(10, 8)), CAST(-61.81962000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q1771587')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (150, N'Saint John’s', 3706, N'04', 10, N'AG', CAST(17.12096000 AS Decimal(10, 8)), CAST(-61.84329000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q36262')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (151, N'Bajram Curri', 623, N'KU', 3, N'AL', CAST(42.35734000 AS Decimal(10, 8)), CAST(20.07679000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q18705')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (152, N'Ballsh', 631, N'04', 3, N'AL', CAST(40.59889000 AS Decimal(10, 8)), CAST(19.73472000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q743016')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (153, N'Banaj', 629, N'BR', 3, N'AL', CAST(40.82492000 AS Decimal(10, 8)), CAST(19.84074000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q3301181')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (154, N'Bashkia Berat', 629, N'BR', 3, N'AL', CAST(40.69997000 AS Decimal(10, 8)), CAST(19.94983000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q3301181')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (155, N'Bashkia Bulqizë', 610, N'09', 3, N'AL', CAST(41.47152000 AS Decimal(10, 8)), CAST(20.33192000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q3301181')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (156, N'Bashkia Devoll', 630, N'06', 3, N'AL', CAST(40.60078000 AS Decimal(10, 8)), CAST(20.93814000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q3301181')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (157, N'Bashkia Divjakë', 631, N'04', 3, N'AL', CAST(40.95716000 AS Decimal(10, 8)), CAST(19.52364000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (158, N'Bashkia Dropull', 621, N'GJ', 3, N'AL', CAST(39.98584000 AS Decimal(10, 8)), CAST(20.30529000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (159, N'Bashkia Durrës', 639, N'DR', 3, N'AL', CAST(41.42743000 AS Decimal(10, 8)), CAST(19.48690000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (160, N'Bashkia Fier', 631, N'04', 3, N'AL', CAST(40.72937000 AS Decimal(10, 8)), CAST(19.48690000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (161, N'Bashkia Finiq', 634, N'12', 3, N'AL', CAST(39.84393000 AS Decimal(10, 8)), CAST(20.16659000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (162, N'Bashkia Himarë', 634, N'12', 3, N'AL', CAST(40.11581000 AS Decimal(10, 8)), CAST(19.81389000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (163, N'Bashkia Kavajë', 633, N'TR', 3, N'AL', CAST(41.18127000 AS Decimal(10, 8)), CAST(19.55579000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (164, N'Bashkia Kelcyrë', 621, N'GJ', 3, N'AL', CAST(40.36196000 AS Decimal(10, 8)), CAST(20.16476000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-06-14T11:23:41.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (165, N'Bashkia Klos', 610, N'09', 3, N'AL', CAST(41.50826000 AS Decimal(10, 8)), CAST(20.07107000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (166, N'Bashkia Kolonjë', 630, N'06', 3, N'AL', CAST(40.31420000 AS Decimal(10, 8)), CAST(20.61482000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (167, N'Bashkia Konispol', 634, N'12', 3, N'AL', CAST(39.70064000 AS Decimal(10, 8)), CAST(20.13353000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2019-10-05T18:28:07.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (168, N'Bashkia Krujë', 639, N'DR', 3, N'AL', CAST(41.50091000 AS Decimal(10, 8)), CAST(19.72571000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:07.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (169, N'Bashkia Kurbin', 609, N'08', 3, N'AL', CAST(41.62215000 AS Decimal(10, 8)), CAST(19.70734000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (170, N'Bashkia Kuçovë', 629, N'BR', 3, N'AL', CAST(40.82489000 AS Decimal(10, 8)), CAST(19.95350000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (171, N'Bashkia Lezhë', 609, N'08', 3, N'AL', CAST(41.81320000 AS Decimal(10, 8)), CAST(19.64121000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (172, N'Bashkia Libohovë', 621, N'GJ', 3, N'AL', CAST(40.10754000 AS Decimal(10, 8)), CAST(20.25753000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-06-14T11:23:39.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (173, N'Bashkia Maliq', 630, N'06', 3, N'AL', CAST(40.75508000 AS Decimal(10, 8)), CAST(20.60748000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (174, N'Bashkia Mallakastër', 631, N'04', 3, N'AL', CAST(40.55669000 AS Decimal(10, 8)), CAST(19.77347000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (175, N'Bashkia Malësi e Madhe', 626, N'SH', 3, N'AL', CAST(42.36798000 AS Decimal(10, 8)), CAST(19.58977000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (176, N'Bashkia Mat', 610, N'09', 3, N'AL', CAST(41.63317000 AS Decimal(10, 8)), CAST(20.01228000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (177, N'Bashkia Memaliaj', 621, N'GJ', 3, N'AL', CAST(40.41524000 AS Decimal(10, 8)), CAST(19.96911000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (178, N'Bashkia Mirditë', 609, N'08', 3, N'AL', CAST(41.80953000 AS Decimal(10, 8)), CAST(19.99024000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (179, N'Bashkia Patos', 631, N'04', 3, N'AL', CAST(40.67793000 AS Decimal(10, 8)), CAST(19.65591000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (180, N'Bashkia Poliçan', 629, N'BR', 3, N'AL', CAST(40.58608000 AS Decimal(10, 8)), CAST(20.04535000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (181, N'Bashkia Pukë', 626, N'SH', 3, N'AL', CAST(42.02997000 AS Decimal(10, 8)), CAST(19.92778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (182, N'Bashkia Pustec', 630, N'06', 3, N'AL', CAST(40.83591000 AS Decimal(10, 8)), CAST(20.89405000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (183, N'Bashkia Përmet', 621, N'GJ', 3, N'AL', CAST(40.23246000 AS Decimal(10, 8)), CAST(20.41091000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (184, N'Bashkia Selenicë', 634, N'12', 3, N'AL', CAST(40.39503000 AS Decimal(10, 8)), CAST(19.65958000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (185, N'Bashkia Shijak', 639, N'DR', 3, N'AL', CAST(41.33558000 AS Decimal(10, 8)), CAST(19.58977000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (186, N'Bashkia Skrapar', 629, N'BR', 3, N'AL', CAST(40.56036000 AS Decimal(10, 8)), CAST(20.25477000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (187, N'Bashkia Tepelenë', 621, N'GJ', 3, N'AL', CAST(40.26736000 AS Decimal(10, 8)), CAST(19.97003000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (188, N'Bashkia Vau i Dejës', 626, N'SH', 3, N'AL', CAST(42.04834000 AS Decimal(10, 8)), CAST(19.69999000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (189, N'Bashkia Vlorë', 634, N'12', 3, N'AL', CAST(40.41340000 AS Decimal(10, 8)), CAST(19.49792000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (190, N'Bashkia Vorë', 633, N'TR', 3, N'AL', CAST(41.39804000 AS Decimal(10, 8)), CAST(19.67703000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q16350064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (191, N'Berat', 629, N'BR', 3, N'AL', CAST(40.70583000 AS Decimal(10, 8)), CAST(19.95222000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q170244')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (192, N'Bilisht', 630, N'06', 3, N'AL', CAST(40.62750000 AS Decimal(10, 8)), CAST(20.99000000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q817140')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (193, N'Bulqizë', 610, N'09', 3, N'AL', CAST(41.49167000 AS Decimal(10, 8)), CAST(20.22194000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q463384')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (194, N'Burrel', 610, N'09', 3, N'AL', CAST(41.61028000 AS Decimal(10, 8)), CAST(20.00889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q461313')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (195, N'Delvinë', 634, N'12', 3, N'AL', CAST(39.95111000 AS Decimal(10, 8)), CAST(20.09778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q372872')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (196, N'Divjakë', 631, N'04', 3, N'AL', CAST(40.99667000 AS Decimal(10, 8)), CAST(19.52944000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q1945622')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (197, N'Durrës', 639, N'DR', 3, N'AL', CAST(41.32355000 AS Decimal(10, 8)), CAST(19.45469000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q83285')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (198, N'Durrës District', 639, N'DR', 3, N'AL', CAST(41.31660000 AS Decimal(10, 8)), CAST(19.45000000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q37662')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (199, N'Ersekë', 630, N'06', 3, N'AL', CAST(40.33778000 AS Decimal(10, 8)), CAST(20.67889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q18793')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (200, N'Fier', 631, N'04', 3, N'AL', CAST(40.72389000 AS Decimal(10, 8)), CAST(19.55611000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q190897')
GO
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (201, N'Fier-Çifçi', 631, N'04', 3, N'AL', CAST(40.71667000 AS Decimal(10, 8)), CAST(19.56667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q22012402')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (202, N'Fushë-Arrëz', 626, N'SH', 3, N'AL', CAST(42.06222000 AS Decimal(10, 8)), CAST(20.01667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q22005048')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (203, N'Fushë-Krujë', 639, N'DR', 3, N'AL', CAST(41.47833000 AS Decimal(10, 8)), CAST(19.71778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q22012409')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (204, N'Gjinkar', 621, N'GJ', 3, N'AL', CAST(40.19944000 AS Decimal(10, 8)), CAST(20.40611000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q155137')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (205, N'Gjirokastër', 621, N'GJ', 3, N'AL', CAST(40.07583000 AS Decimal(10, 8)), CAST(20.13889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q173690')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (206, N'Himarë', 634, N'12', 3, N'AL', CAST(40.10167000 AS Decimal(10, 8)), CAST(19.74472000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q5765138')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (207, N'Kamëz', 633, N'TR', 3, N'AL', CAST(41.38167000 AS Decimal(10, 8)), CAST(19.76028000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q605160')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (208, N'Kavajë', 633, N'TR', 3, N'AL', CAST(41.18556000 AS Decimal(10, 8)), CAST(19.55694000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q46702')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (209, N'Klos', 610, N'09', 3, N'AL', CAST(41.50694000 AS Decimal(10, 8)), CAST(20.08667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q278613')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (210, N'Konispol', 634, N'12', 3, N'AL', CAST(39.65889000 AS Decimal(10, 8)), CAST(20.18139000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q18731')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (211, N'Koplik', 626, N'SH', 3, N'AL', CAST(42.21361000 AS Decimal(10, 8)), CAST(19.43639000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q991288')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (212, N'Korçë', 630, N'06', 3, N'AL', CAST(40.61861000 AS Decimal(10, 8)), CAST(20.78083000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q116341')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (213, N'Krrabë', 633, N'TR', 3, N'AL', CAST(41.21556000 AS Decimal(10, 8)), CAST(19.97139000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q22009668')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (214, N'Krujë', 639, N'DR', 3, N'AL', CAST(41.50917000 AS Decimal(10, 8)), CAST(19.79278000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q194164')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (215, N'Krumë', 623, N'KU', 3, N'AL', CAST(42.19694000 AS Decimal(10, 8)), CAST(20.41333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q958899')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (216, N'Ksamil', 634, N'12', 3, N'AL', CAST(39.76889000 AS Decimal(10, 8)), CAST(19.99972000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q1790776')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (217, N'Kukës', 623, N'KU', 3, N'AL', CAST(42.07694000 AS Decimal(10, 8)), CAST(20.42194000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q210197')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (218, N'Kurbnesh', 609, N'08', 3, N'AL', CAST(41.77972000 AS Decimal(10, 8)), CAST(20.08361000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q616927')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (219, N'Kuçovë', 629, N'BR', 3, N'AL', CAST(40.80028000 AS Decimal(10, 8)), CAST(19.91667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q18774')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (220, N'Këlcyrë', 621, N'GJ', 3, N'AL', CAST(40.31306000 AS Decimal(10, 8)), CAST(20.18944000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q1007556')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (221, N'Lazarat', 621, N'GJ', 3, N'AL', CAST(40.04667000 AS Decimal(10, 8)), CAST(20.14750000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q2713473')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (222, N'Laç', 609, N'08', 3, N'AL', CAST(41.63556000 AS Decimal(10, 8)), CAST(19.71306000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q18768')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (223, N'Leskovik', 630, N'06', 3, N'AL', CAST(40.15139000 AS Decimal(10, 8)), CAST(20.59722000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q18768')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (224, N'Lezhë', 609, N'08', 3, N'AL', CAST(41.78361000 AS Decimal(10, 8)), CAST(19.64361000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q169160')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (225, N'Libohovë', 621, N'GJ', 3, N'AL', CAST(40.03111000 AS Decimal(10, 8)), CAST(20.26306000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q18738')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (226, N'Libonik', 630, N'06', 3, N'AL', CAST(40.70444000 AS Decimal(10, 8)), CAST(20.70861000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q628181')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (227, N'Lushnjë', 631, N'04', 3, N'AL', CAST(40.94194000 AS Decimal(10, 8)), CAST(19.70500000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q212680')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (228, N'Maliq', 630, N'06', 3, N'AL', CAST(40.70583000 AS Decimal(10, 8)), CAST(20.69972000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q772248')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (229, N'Mamurras', 609, N'08', 3, N'AL', CAST(41.57750000 AS Decimal(10, 8)), CAST(19.69222000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q991268')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (230, N'Mborje', 630, N'06', 3, N'AL', CAST(40.60333000 AS Decimal(10, 8)), CAST(20.80306000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q16347657')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (231, N'Memaliaj', 621, N'GJ', 3, N'AL', CAST(40.35167000 AS Decimal(10, 8)), CAST(19.98028000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q18749')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (232, N'Milot', 609, N'08', 3, N'AL', CAST(41.68389000 AS Decimal(10, 8)), CAST(19.71556000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q18749')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (233, N'Orikum', 634, N'12', 3, N'AL', CAST(40.32528000 AS Decimal(10, 8)), CAST(19.47139000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q22009845')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (234, N'Patos', 631, N'04', 3, N'AL', CAST(40.68333000 AS Decimal(10, 8)), CAST(19.61944000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q18709')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (235, N'Patos Fshat', 631, N'04', 3, N'AL', CAST(40.64278000 AS Decimal(10, 8)), CAST(19.65083000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q13044035')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (236, N'Peshkopi', 610, N'09', 3, N'AL', CAST(41.68500000 AS Decimal(10, 8)), CAST(20.42889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q223154')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (237, N'Pogradec', 630, N'06', 3, N'AL', CAST(40.90250000 AS Decimal(10, 8)), CAST(20.65250000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q73639')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (238, N'Poliçan', 629, N'BR', 3, N'AL', CAST(40.61222000 AS Decimal(10, 8)), CAST(20.09806000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q18751')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (239, N'Pukë', 626, N'SH', 3, N'AL', CAST(42.04444000 AS Decimal(10, 8)), CAST(19.89972000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q19310')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (240, N'Përmet', 621, N'GJ', 3, N'AL', CAST(40.23361000 AS Decimal(10, 8)), CAST(20.35167000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q642856')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (241, N'Roskovec', 631, N'04', 3, N'AL', CAST(40.73750000 AS Decimal(10, 8)), CAST(19.70222000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q18746')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (242, N'Rrethi i Beratit', 629, N'BR', 3, N'AL', CAST(40.66667000 AS Decimal(10, 8)), CAST(20.00000000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q202981')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (243, N'Rrethi i Bulqizës', 610, N'09', 3, N'AL', CAST(41.50000000 AS Decimal(10, 8)), CAST(20.33333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q191872')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (244, N'Rrethi i Delvinës', 634, N'12', 3, N'AL', CAST(39.91667000 AS Decimal(10, 8)), CAST(20.08333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q166959')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (245, N'Rrethi i Devollit', 630, N'06', 3, N'AL', CAST(40.58333000 AS Decimal(10, 8)), CAST(20.91667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q192126')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (246, N'Rrethi i Dibrës', 610, N'09', 3, N'AL', CAST(41.75000000 AS Decimal(10, 8)), CAST(20.33333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q192123')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (247, N'Rrethi i Hasit', 623, N'KU', 3, N'AL', CAST(42.16667000 AS Decimal(10, 8)), CAST(20.33333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q207007')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (248, N'Rrethi i Kavajës', 633, N'TR', 3, N'AL', CAST(41.16667000 AS Decimal(10, 8)), CAST(19.58333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q194182')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (249, N'Rrethi i Kolonjës', 630, N'06', 3, N'AL', CAST(40.25000000 AS Decimal(10, 8)), CAST(20.66667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q194178')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (250, N'Rrethi i Krujës', 639, N'DR', 3, N'AL', CAST(41.55000000 AS Decimal(10, 8)), CAST(19.75000000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q194178')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (251, N'Rrethi i Kukësit', 623, N'KU', 3, N'AL', CAST(42.00000000 AS Decimal(10, 8)), CAST(20.33333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q123395')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (252, N'Rrethi i Kurbinit', 609, N'08', 3, N'AL', CAST(41.63333000 AS Decimal(10, 8)), CAST(19.71667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q123602')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (253, N'Rrethi i Kuçovës', 629, N'BR', 3, N'AL', CAST(40.83333000 AS Decimal(10, 8)), CAST(19.91667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q211946')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (254, N'Rrethi i Mallakastrës', 631, N'04', 3, N'AL', CAST(40.55000000 AS Decimal(10, 8)), CAST(19.78333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q211946')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (255, N'Rrethi i Malësia e Madhe', 626, N'SH', 3, N'AL', CAST(42.33333000 AS Decimal(10, 8)), CAST(19.58333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q236845')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (256, N'Rrethi i Matit', 610, N'09', 3, N'AL', CAST(41.58333000 AS Decimal(10, 8)), CAST(20.08333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q202665')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (257, N'Rrethi i Shkodrës', 626, N'SH', 3, N'AL', CAST(42.06917000 AS Decimal(10, 8)), CAST(19.53506000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q194176')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (258, N'Rrethi i Skraparit', 629, N'BR', 3, N'AL', CAST(40.55000000 AS Decimal(10, 8)), CAST(20.26667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q194381')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (259, N'Rrethi i Tiranës', 633, N'TR', 3, N'AL', CAST(41.33333000 AS Decimal(10, 8)), CAST(19.91667000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q201073')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (260, N'Rrogozhinë', 633, N'TR', 3, N'AL', CAST(41.07639000 AS Decimal(10, 8)), CAST(19.66528000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q22008389')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (261, N'Rrëshen', 609, N'08', 3, N'AL', CAST(41.76750000 AS Decimal(10, 8)), CAST(19.87556000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q18737')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (262, N'Rubik', 609, N'08', 3, N'AL', CAST(41.77444000 AS Decimal(10, 8)), CAST(19.78611000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q19259')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (263, N'Sarandë', 634, N'12', 3, N'AL', CAST(39.87534000 AS Decimal(10, 8)), CAST(20.00477000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q193226')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (264, N'Selenicë', 634, N'12', 3, N'AL', CAST(40.53056000 AS Decimal(10, 8)), CAST(19.63583000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q134613')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (265, N'Shijak', 639, N'DR', 3, N'AL', CAST(41.34556000 AS Decimal(10, 8)), CAST(19.56722000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q18791')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (266, N'Shkodër', 626, N'SH', 3, N'AL', CAST(42.06828000 AS Decimal(10, 8)), CAST(19.51258000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q131638')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (267, N'Shëngjin', 609, N'08', 3, N'AL', CAST(41.81361000 AS Decimal(10, 8)), CAST(19.59389000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q606485')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (268, N'Sinaballaj', 633, N'TR', 3, N'AL', CAST(41.06889000 AS Decimal(10, 8)), CAST(19.69944000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q602969')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (269, N'Sukth', 639, N'DR', 3, N'AL', CAST(41.38056000 AS Decimal(10, 8)), CAST(19.53778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q593557')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (270, N'Tepelenë', 621, N'GJ', 3, N'AL', CAST(40.29583000 AS Decimal(10, 8)), CAST(20.01917000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q81631')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (271, N'Tirana', 633, N'TR', 3, N'AL', CAST(41.32750000 AS Decimal(10, 8)), CAST(19.81889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q19689')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (272, N'Ulëz', 610, N'09', 3, N'AL', CAST(41.68278000 AS Decimal(10, 8)), CAST(19.89333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q2542462')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (273, N'Ura Vajgurore', 629, N'BR', 3, N'AL', CAST(40.76889000 AS Decimal(10, 8)), CAST(19.87778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2019-10-05T18:28:08.000' AS DateTime), 1, N'Q1524575')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (274, N'Vau i Dejës', 626, N'SH', 3, N'AL', CAST(42.01000000 AS Decimal(10, 8)), CAST(19.62472000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q1787536')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (275, N'Velçan', 630, N'06', 3, N'AL', CAST(40.95472000 AS Decimal(10, 8)), CAST(20.46222000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q285899')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (276, N'Vlorë', 634, N'12', 3, N'AL', CAST(40.46860000 AS Decimal(10, 8)), CAST(19.48318000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:08.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q159610')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (277, N'Vorë', 633, N'TR', 3, N'AL', CAST(41.39083000 AS Decimal(10, 8)), CAST(19.65500000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q22007611')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (278, N'Voskopojë', 630, N'06', 3, N'AL', CAST(40.63306000 AS Decimal(10, 8)), CAST(20.58889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q757298')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (279, N'Vukatanë', 626, N'SH', 3, N'AL', CAST(42.02806000 AS Decimal(10, 8)), CAST(19.54778000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q757298')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (280, N'Çorovodë', 629, N'BR', 3, N'AL', CAST(40.50417000 AS Decimal(10, 8)), CAST(20.22722000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:32.000' AS DateTime), 1, N'Q19307')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (281, N'Abovyan', 2033, N'KT', 12, N'AM', CAST(40.27368000 AS Decimal(10, 8)), CAST(44.63348000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q31493')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (282, N'Abovyan', 2024, N'AR', 12, N'AM', CAST(40.04851000 AS Decimal(10, 8)), CAST(44.54742000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2379896')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (283, N'Agarak', 2029, N'LO', 12, N'AM', CAST(41.01072000 AS Decimal(10, 8)), CAST(44.46845000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q590469')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (284, N'Agarak', 2027, N'SU', 12, N'AM', CAST(39.20684000 AS Decimal(10, 8)), CAST(46.54460000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2059513')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (285, N'Agarakadzor', 2025, N'VD', 12, N'AM', CAST(39.73608000 AS Decimal(10, 8)), CAST(45.35553000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1955941')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (286, N'Agarakavan', 2023, N'AG', 12, N'AM', CAST(40.33069000 AS Decimal(10, 8)), CAST(44.07233000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2667087')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (287, N'Aghavnadzor', 2033, N'KT', 12, N'AM', CAST(40.58195000 AS Decimal(10, 8)), CAST(44.69581000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2303688')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (288, N'Aghavnadzor', 2025, N'VD', 12, N'AM', CAST(39.78607000 AS Decimal(10, 8)), CAST(45.22790000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2422770')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (289, N'Aghavnatun', 2026, N'AV', 12, N'AM', CAST(40.23330000 AS Decimal(10, 8)), CAST(44.25295000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2626777')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (290, N'Akht’ala', 2029, N'LO', 12, N'AM', CAST(41.16838000 AS Decimal(10, 8)), CAST(44.75811000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q7921347')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (291, N'Akhuryan', 2031, N'SH', 12, N'AM', CAST(40.78003000 AS Decimal(10, 8)), CAST(43.90027000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1958096')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (292, N'Aknalich', 2026, N'AV', 12, N'AM', CAST(40.14728000 AS Decimal(10, 8)), CAST(44.16669000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1144641')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (293, N'Aknashen', 2026, N'AV', 12, N'AM', CAST(40.09551000 AS Decimal(10, 8)), CAST(44.28604000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2630421')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (294, N'Akner', 2027, N'SU', 12, N'AM', CAST(39.53491000 AS Decimal(10, 8)), CAST(46.30732000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2630421')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (295, N'Akunk’', 2033, N'KT', 12, N'AM', CAST(40.26672000 AS Decimal(10, 8)), CAST(44.68610000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q590561')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (296, N'Akunk’', 2028, N'GR', 12, N'AM', CAST(40.15886000 AS Decimal(10, 8)), CAST(45.72568000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q590913')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (297, N'Alashkert', 2026, N'AV', 12, N'AM', CAST(40.10712000 AS Decimal(10, 8)), CAST(44.05108000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2222204')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (298, N'Alaverdi', 2029, N'LO', 12, N'AM', CAST(41.09766000 AS Decimal(10, 8)), CAST(44.67316000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q39545')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (299, N'Amasia', 2031, N'SH', 12, N'AM', CAST(40.95442000 AS Decimal(10, 8)), CAST(43.78720000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2672566')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (300, N'Angeghakot’', 2027, N'SU', 12, N'AM', CAST(39.56952000 AS Decimal(10, 8)), CAST(45.94452000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q590508')
GO
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (301, N'Anushavan', 2031, N'SH', 12, N'AM', CAST(40.65008000 AS Decimal(10, 8)), CAST(43.98053000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2222886')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (302, N'Apaga', 2026, N'AV', 12, N'AM', CAST(40.09729000 AS Decimal(10, 8)), CAST(44.25293000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2222226')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (303, N'Aparan', 2023, N'AG', 12, N'AM', CAST(40.59323000 AS Decimal(10, 8)), CAST(44.35890000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q39618')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (304, N'Arabkir', 2030, N'ER', 12, N'AM', CAST(40.20549000 AS Decimal(10, 8)), CAST(44.50699000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q39618')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (305, N'Aragats', 2023, N'AG', 12, N'AM', CAST(40.48889000 AS Decimal(10, 8)), CAST(44.35290000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2670427')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (306, N'Arak’s', 2026, N'AV', 12, N'AM', CAST(40.05548000 AS Decimal(10, 8)), CAST(44.30292000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q1142800')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (307, N'Aralez', 2024, N'AR', 12, N'AM', CAST(39.90008000 AS Decimal(10, 8)), CAST(44.65570000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q338107')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (308, N'Aramus', 2033, N'KT', 12, N'AM', CAST(40.25095000 AS Decimal(10, 8)), CAST(44.66351000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2006361')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (309, N'Ararat', 2024, N'AR', 12, N'AM', CAST(39.83069000 AS Decimal(10, 8)), CAST(44.70569000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q39504')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (310, N'Arazap’', 2026, N'AV', 12, N'AM', CAST(40.04169000 AS Decimal(10, 8)), CAST(44.14728000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q1142763')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (311, N'Arbat’', 2026, N'AV', 12, N'AM', CAST(40.13892000 AS Decimal(10, 8)), CAST(44.40289000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2626761')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (312, N'Archis', 2032, N'TV', 12, N'AM', CAST(41.16351000 AS Decimal(10, 8)), CAST(44.87631000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q33901')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (313, N'Areni', 2025, N'VD', 12, N'AM', CAST(39.71668000 AS Decimal(10, 8)), CAST(45.18329000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q207291')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (314, N'Arevabuyr', 2024, N'AR', 12, N'AM', CAST(40.03607000 AS Decimal(10, 8)), CAST(44.46948000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2630431')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (315, N'Arevashat', 2026, N'AV', 12, N'AM', CAST(40.14447000 AS Decimal(10, 8)), CAST(44.37512000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2667172')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (316, N'Arevashogh', 2029, N'LO', 12, N'AM', CAST(40.86039000 AS Decimal(10, 8)), CAST(44.27438000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2222733')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (317, N'Arevik', 2026, N'AV', 12, N'AM', CAST(40.10010000 AS Decimal(10, 8)), CAST(44.09448000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2639886')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (318, N'Arevik', 2031, N'SH', 12, N'AM', CAST(40.74170000 AS Decimal(10, 8)), CAST(43.90430000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2639707')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (319, N'Arevshat', 2024, N'AR', 12, N'AM', CAST(40.03963000 AS Decimal(10, 8)), CAST(44.54179000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1994619')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (320, N'Arevshat', 2031, N'SH', 12, N'AM', CAST(40.65345000 AS Decimal(10, 8)), CAST(44.04419000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2222710')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (321, N'Argavand', 2030, N'ER', 12, N'AM', CAST(40.15289000 AS Decimal(10, 8)), CAST(44.43890000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1142867')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (322, N'Argavand', 2026, N'AV', 12, N'AM', CAST(40.06110000 AS Decimal(10, 8)), CAST(44.09448000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1142775')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (323, N'Argel', 2033, N'KT', 12, N'AM', CAST(40.37793000 AS Decimal(10, 8)), CAST(44.60010000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2006382')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (324, N'Armash', 2024, N'AR', 12, N'AM', CAST(39.76672000 AS Decimal(10, 8)), CAST(44.81110000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2667041')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (325, N'Armavir', 2026, N'AV', 12, N'AM', CAST(40.15446000 AS Decimal(10, 8)), CAST(44.03815000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q15771')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (326, N'Arrap’i', 2031, N'SH', 12, N'AM', CAST(40.78276000 AS Decimal(10, 8)), CAST(43.80583000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2640112')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (327, N'Arshaluys', 2026, N'AV', 12, N'AM', CAST(40.16949000 AS Decimal(10, 8)), CAST(44.21393000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2221680')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (328, N'Artashat', 2024, N'AR', 12, N'AM', CAST(39.96144000 AS Decimal(10, 8)), CAST(44.54447000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q39560')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (329, N'Arteni', 2023, N'AG', 12, N'AM', CAST(40.29730000 AS Decimal(10, 8)), CAST(43.76672000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q959197')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (330, N'Artimet', 2026, N'AV', 12, N'AM', CAST(40.15008000 AS Decimal(10, 8)), CAST(44.26672000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1142786')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (331, N'Artsvaberd', 2032, N'TV', 12, N'AM', CAST(40.83947000 AS Decimal(10, 8)), CAST(45.47033000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2672592')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (332, N'Arzakan', 2033, N'KT', 12, N'AM', CAST(40.45007000 AS Decimal(10, 8)), CAST(44.60828000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2670437')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (333, N'Arzni', 2033, N'KT', 12, N'AM', CAST(40.29730000 AS Decimal(10, 8)), CAST(44.59869000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2595265')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (334, N'Ashnak', 2023, N'AG', 12, N'AM', CAST(40.33069000 AS Decimal(10, 8)), CAST(43.91669000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2535262')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (335, N'Ashtarak', 2023, N'AG', 12, N'AM', CAST(40.29910000 AS Decimal(10, 8)), CAST(44.36204000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q39510')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (336, N'Astghadzor', 2028, N'GR', 12, N'AM', CAST(40.12231000 AS Decimal(10, 8)), CAST(45.35553000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2636216')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (337, N'Avshar', 2024, N'AR', 12, N'AM', CAST(39.85553000 AS Decimal(10, 8)), CAST(44.65832000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1446028')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (338, N'Aygavan', 2024, N'AR', 12, N'AM', CAST(39.87327000 AS Decimal(10, 8)), CAST(44.66984000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2631545')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (339, N'Aygehovit', 2032, N'TV', 12, N'AM', CAST(40.97951000 AS Decimal(10, 8)), CAST(45.25033000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2672616')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (340, N'Aygek', 2026, N'AV', 12, N'AM', CAST(40.18890000 AS Decimal(10, 8)), CAST(44.38611000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1142804')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (341, N'Aygepat', 2024, N'AR', 12, N'AM', CAST(39.95845000 AS Decimal(10, 8)), CAST(44.59981000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2535569')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (342, N'Aygeshat', 2026, N'AV', 12, N'AM', CAST(40.07507000 AS Decimal(10, 8)), CAST(44.06110000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q764724')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (343, N'Aygestan', 2024, N'AR', 12, N'AM', CAST(40.00293000 AS Decimal(10, 8)), CAST(44.55829000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2667073')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (344, N'Aygezard', 2024, N'AR', 12, N'AM', CAST(39.95436000 AS Decimal(10, 8)), CAST(44.60229000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2535651')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (345, N'Azatamut', 2032, N'TV', 12, N'AM', CAST(40.98204000 AS Decimal(10, 8)), CAST(45.18551000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2536393')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (346, N'Azatan', 2031, N'SH', 12, N'AM', CAST(40.71959000 AS Decimal(10, 8)), CAST(43.82727000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2657939')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (347, N'Baghramyan', 2026, N'AV', 12, N'AM', CAST(40.19452000 AS Decimal(10, 8)), CAST(44.36951000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1142982')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (348, N'Bagratashen', 2032, N'TV', 12, N'AM', CAST(41.24358000 AS Decimal(10, 8)), CAST(44.81737000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q33812')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (349, N'Balahovit', 2033, N'KT', 12, N'AM', CAST(40.25153000 AS Decimal(10, 8)), CAST(44.60828000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1921847')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (350, N'Bambakashat', 2026, N'AV', 12, N'AM', CAST(40.10828000 AS Decimal(10, 8)), CAST(44.01947000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q744617')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (351, N'Bardzrashen', 2024, N'AR', 12, N'AM', CAST(40.08533000 AS Decimal(10, 8)), CAST(44.57957000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2222235')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (352, N'Basen', 2031, N'SH', 12, N'AM', CAST(40.75767000 AS Decimal(10, 8)), CAST(43.99274000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q738164')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (353, N'Bazum', 2029, N'LO', 12, N'AM', CAST(40.86763000 AS Decimal(10, 8)), CAST(44.43978000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q785295')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (354, N'Berd', 2032, N'TV', 12, N'AM', CAST(40.88135000 AS Decimal(10, 8)), CAST(45.38901000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1886688')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (355, N'Berdavan', 2032, N'TV', 12, N'AM', CAST(41.20503000 AS Decimal(10, 8)), CAST(44.99967000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q33876')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (356, N'Berk’anush', 2024, N'AR', 12, N'AM', CAST(39.97790000 AS Decimal(10, 8)), CAST(44.51672000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2631503')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (357, N'Bjni', 2033, N'KT', 12, N'AM', CAST(40.45831000 AS Decimal(10, 8)), CAST(44.65008000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1280781')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (358, N'Brrnakot’', 2027, N'SU', 12, N'AM', CAST(39.49742000 AS Decimal(10, 8)), CAST(45.97241000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q713488')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (359, N'Burastan', 2024, N'AR', 12, N'AM', CAST(39.99157000 AS Decimal(10, 8)), CAST(44.49681000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2635578')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (360, N'Buzhakan', 2033, N'KT', 12, N'AM', CAST(40.45569000 AS Decimal(10, 8)), CAST(44.51947000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1922515')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (361, N'Byurakan', 2023, N'AG', 12, N'AM', CAST(40.33894000 AS Decimal(10, 8)), CAST(44.27275000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2305036')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (362, N'Byuravan', 2024, N'AR', 12, N'AM', CAST(40.01604000 AS Decimal(10, 8)), CAST(44.51889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q2631973')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (363, N'Byureghavan', 2033, N'KT', 12, N'AM', CAST(40.31417000 AS Decimal(10, 8)), CAST(44.59333000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:09.000' AS DateTime), CAST(N'2019-10-05T18:28:09.000' AS DateTime), 1, N'Q1752731')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (364, N'Chambarak', 2028, N'GR', 12, N'AM', CAST(40.59655000 AS Decimal(10, 8)), CAST(45.35498000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1024822')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (365, N'Chochkan', 2029, N'LO', 12, N'AM', CAST(41.18118000 AS Decimal(10, 8)), CAST(44.83217000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1921917')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (366, N'Dalar', 2024, N'AR', 12, N'AM', CAST(39.97653000 AS Decimal(10, 8)), CAST(44.52649000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2631533')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (367, N'Dalarik', 2026, N'AV', 12, N'AM', CAST(40.22790000 AS Decimal(10, 8)), CAST(43.87793000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2272491')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (368, N'Darakert', 2024, N'AR', 12, N'AM', CAST(40.10553000 AS Decimal(10, 8)), CAST(44.41388000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2313566')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (369, N'Darpas', 2029, N'LO', 12, N'AM', CAST(40.83674000 AS Decimal(10, 8)), CAST(44.42494000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1920811')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (370, N'Dashtavan', 2024, N'AR', 12, N'AM', CAST(40.10010000 AS Decimal(10, 8)), CAST(44.39172000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2632039')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (371, N'Ddmashen', 2028, N'GR', 12, N'AM', CAST(40.57028000 AS Decimal(10, 8)), CAST(44.82295000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1528594')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (372, N'Dilijan', 2032, N'TV', 12, N'AM', CAST(40.74170000 AS Decimal(10, 8)), CAST(44.85010000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q39569')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (373, N'Dimitrov', 2024, N'AR', 12, N'AM', CAST(40.00848000 AS Decimal(10, 8)), CAST(44.49170000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2455209')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (374, N'Doghs', 2026, N'AV', 12, N'AM', CAST(40.22229000 AS Decimal(10, 8)), CAST(44.27228000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2222192')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (375, N'Drakhtik', 2028, N'GR', 12, N'AM', CAST(40.56497000 AS Decimal(10, 8)), CAST(45.23670000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1024548')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (376, N'Dsegh', 2029, N'LO', 12, N'AM', CAST(40.96170000 AS Decimal(10, 8)), CAST(44.65003000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2636324')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (377, N'Dvin', 2024, N'AR', 12, N'AM', CAST(40.01984000 AS Decimal(10, 8)), CAST(44.58376000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1774051')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (378, N'Dzit’hank’ov', 2031, N'SH', 12, N'AM', CAST(40.50848000 AS Decimal(10, 8)), CAST(43.82092000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2017927')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (379, N'Dzoraghbyur', 2033, N'KT', 12, N'AM', CAST(40.20412000 AS Decimal(10, 8)), CAST(44.64150000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2636363')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (380, N'Dzoragyugh', 2028, N'GR', 12, N'AM', CAST(40.16957000 AS Decimal(10, 8)), CAST(45.18337000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2636104')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (381, N'Dzorastan', 2027, N'SU', 12, N'AM', CAST(39.27059000 AS Decimal(10, 8)), CAST(46.35720000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2701470')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (382, N'Fantan', 2033, N'KT', 12, N'AM', CAST(40.39447000 AS Decimal(10, 8)), CAST(44.68610000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2485210')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (383, N'Fioletovo', 2029, N'LO', 12, N'AM', CAST(40.72241000 AS Decimal(10, 8)), CAST(44.71769000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q640674')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (384, N'Gagarin', 2028, N'GR', 12, N'AM', CAST(40.54026000 AS Decimal(10, 8)), CAST(44.86962000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q5516814')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (385, N'Gandzak', 2028, N'GR', 12, N'AM', CAST(40.31472000 AS Decimal(10, 8)), CAST(45.11139000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1528536')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (386, N'Garrni', 2033, N'KT', 12, N'AM', CAST(40.11931000 AS Decimal(10, 8)), CAST(44.73442000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1010273')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (387, N'Gavarr', 2028, N'GR', 12, N'AM', CAST(40.35398000 AS Decimal(10, 8)), CAST(45.12386000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q39565')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (388, N'Gay', 2026, N'AV', 12, N'AM', CAST(40.08444000 AS Decimal(10, 8)), CAST(44.30528000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2001183')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (389, N'Geghakert', 2026, N'AV', 12, N'AM', CAST(40.18516000 AS Decimal(10, 8)), CAST(44.24331000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2389968')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (390, N'Geghamasar', 2028, N'GR', 12, N'AM', CAST(40.31091000 AS Decimal(10, 8)), CAST(45.67924000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q930125')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (391, N'Geghamavan', 2028, N'GR', 12, N'AM', CAST(40.56250000 AS Decimal(10, 8)), CAST(44.88892000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1528439')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (392, N'Geghanist', 2026, N'AV', 12, N'AM', CAST(40.14587000 AS Decimal(10, 8)), CAST(44.43048000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q633723')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (393, N'Getap’', 2025, N'VD', 12, N'AM', CAST(39.76392000 AS Decimal(10, 8)), CAST(45.30829000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2536601')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (394, N'Getashen', 2026, N'AV', 12, N'AM', CAST(40.04449000 AS Decimal(10, 8)), CAST(43.94171000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1144653')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (395, N'Getazat', 2024, N'AR', 12, N'AM', CAST(40.03844000 AS Decimal(10, 8)), CAST(44.56369000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2631570')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (396, N'Ghukasavan', 2024, N'AR', 12, N'AM', CAST(40.12793000 AS Decimal(10, 8)), CAST(44.41669000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2631582')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (397, N'Gladzor', 2025, N'VD', 12, N'AM', CAST(39.78070000 AS Decimal(10, 8)), CAST(45.34729000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2536608')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (398, N'Gmbet’', 2026, N'AV', 12, N'AM', CAST(40.22369000 AS Decimal(10, 8)), CAST(44.25409000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2536608')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (399, N'Gogaran', 2029, N'LO', 12, N'AM', CAST(40.89255000 AS Decimal(10, 8)), CAST(44.19915000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1922548')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (400, N'Goght’', 2033, N'KT', 12, N'AM', CAST(40.13470000 AS Decimal(10, 8)), CAST(44.78332000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q1519141')
GO
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (401, N'Goravan', 2024, N'AR', 12, N'AM', CAST(39.90832000 AS Decimal(10, 8)), CAST(44.73328000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2658136')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (402, N'Goris', 2027, N'SU', 12, N'AM', CAST(39.51111000 AS Decimal(10, 8)), CAST(46.34168000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2658136')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (403, N'Griboyedov', 2026, N'AV', 12, N'AM', CAST(40.11307000 AS Decimal(10, 8)), CAST(44.27169000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2222094')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (404, N'Gugark’', 2029, N'LO', 12, N'AM', CAST(40.80460000 AS Decimal(10, 8)), CAST(44.54025000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2682375')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (405, N'Gyulagarak', 2029, N'LO', 12, N'AM', CAST(40.96715000 AS Decimal(10, 8)), CAST(44.47144000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q693771')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (406, N'Gyumri', 2031, N'SH', 12, N'AM', CAST(40.79420000 AS Decimal(10, 8)), CAST(43.84528000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q199500')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (407, N'Haghartsin', 2032, N'TV', 12, N'AM', CAST(40.77614000 AS Decimal(10, 8)), CAST(44.96847000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2536499')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (408, N'Hats’avan', 2027, N'SU', 12, N'AM', CAST(39.46405000 AS Decimal(10, 8)), CAST(45.97047000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q590465')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (409, N'Hayanist', 2024, N'AR', 12, N'AM', CAST(40.12231000 AS Decimal(10, 8)), CAST(44.37793000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2631943')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (410, N'Haykashen', 2026, N'AV', 12, N'AM', CAST(40.07233000 AS Decimal(10, 8)), CAST(44.30829000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2530823')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (411, N'Haykavan', 2031, N'SH', 12, N'AM', CAST(40.80312000 AS Decimal(10, 8)), CAST(43.75173000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q537524')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (412, N'Hnaberd', 2023, N'AG', 12, N'AM', CAST(40.63721000 AS Decimal(10, 8)), CAST(44.14058000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2591402')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (413, N'Horrom', 2031, N'SH', 12, N'AM', CAST(40.65973000 AS Decimal(10, 8)), CAST(43.89032000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2223275')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (414, N'Hovtamej', 2026, N'AV', 12, N'AM', CAST(40.18329000 AS Decimal(10, 8)), CAST(44.25848000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2222182')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (415, N'Hovtashat', 2024, N'AR', 12, N'AM', CAST(40.09729000 AS Decimal(10, 8)), CAST(44.34448000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q958476')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (416, N'Hovtashen', 2024, N'AR', 12, N'AM', CAST(40.02508000 AS Decimal(10, 8)), CAST(44.45007000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2456540')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (417, N'Hrazdan', 2033, N'KT', 12, N'AM', CAST(40.49748000 AS Decimal(10, 8)), CAST(44.76620000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q31610')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (418, N'Ijevan', 2032, N'TV', 12, N'AM', CAST(40.87877000 AS Decimal(10, 8)), CAST(45.14851000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q62367')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (419, N'Janfida', 2026, N'AV', 12, N'AM', CAST(40.04449000 AS Decimal(10, 8)), CAST(44.02789000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2222119')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (420, N'Jermuk', 2025, N'VD', 12, N'AM', CAST(39.84168000 AS Decimal(10, 8)), CAST(45.66949000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q39556')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (421, N'Jrahovit', 2024, N'AR', 12, N'AM', CAST(40.04730000 AS Decimal(10, 8)), CAST(44.47510000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2631560')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (422, N'Jrashen', 2030, N'ER', 12, N'AM', CAST(40.05275000 AS Decimal(10, 8)), CAST(44.51259000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2222156')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (423, N'Jrashen', 2029, N'LO', 12, N'AM', CAST(40.79028000 AS Decimal(10, 8)), CAST(44.18664000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2016848')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (424, N'Kamo', 2031, N'SH', 12, N'AM', CAST(40.82572000 AS Decimal(10, 8)), CAST(43.95071000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2017455')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (425, N'Kapan', 2027, N'SU', 12, N'AM', CAST(39.20755000 AS Decimal(10, 8)), CAST(46.40576000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q31583')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (426, N'Kaputan', 2033, N'KT', 12, N'AM', CAST(40.32507000 AS Decimal(10, 8)), CAST(44.70007000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1921689')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (427, N'Karanlukh', 2028, N'GR', 12, N'AM', CAST(40.10444000 AS Decimal(10, 8)), CAST(45.28972000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2636125')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (428, N'Karbi', 2023, N'AG', 12, N'AM', CAST(40.33069000 AS Decimal(10, 8)), CAST(44.37793000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2632471')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (429, N'Karchaghbyur', 2028, N'GR', 12, N'AM', CAST(40.17048000 AS Decimal(10, 8)), CAST(45.57785000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q549736')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (430, N'Kasakh', 2023, N'AG', 12, N'AM', CAST(40.53697000 AS Decimal(10, 8)), CAST(44.41046000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q549736')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (431, N'Khasht’arrak', 2032, N'TV', 12, N'AM', CAST(40.93668000 AS Decimal(10, 8)), CAST(45.18210000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q69477')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (432, N'Khndzoresk', 2027, N'SU', 12, N'AM', CAST(39.50568000 AS Decimal(10, 8)), CAST(46.43610000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2640140')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (433, N'Khoronk’', 2026, N'AV', 12, N'AM', CAST(40.13611000 AS Decimal(10, 8)), CAST(44.24731000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2221709')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (434, N'Kosh', 2023, N'AG', 12, N'AM', CAST(40.30011000 AS Decimal(10, 8)), CAST(44.16107000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2414638')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (435, N'Kotayk’', 2033, N'KT', 12, N'AM', CAST(40.27789000 AS Decimal(10, 8)), CAST(44.66388000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q970959')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (436, N'K’anak’erravan', 2030, N'ER', 12, N'AM', CAST(40.24739000 AS Decimal(10, 8)), CAST(44.53511000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q1922496')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (437, N'Lanjaghbyur', 2028, N'GR', 12, N'AM', CAST(40.26947000 AS Decimal(10, 8)), CAST(45.14447000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1528076')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (438, N'Lchap’', 2028, N'GR', 12, N'AM', CAST(40.45569000 AS Decimal(10, 8)), CAST(45.07507000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q1529772')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (439, N'Lchashen', 2028, N'GR', 12, N'AM', CAST(40.51947000 AS Decimal(10, 8)), CAST(44.93048000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1528531')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (440, N'Lenughi', 2026, N'AV', 12, N'AM', CAST(40.12512000 AS Decimal(10, 8)), CAST(43.96393000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2222166')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (441, N'Lerrnakert', 2031, N'SH', 12, N'AM', CAST(40.56250000 AS Decimal(10, 8)), CAST(43.93890000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2223354')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (442, N'Lerrnanist', 2033, N'KT', 12, N'AM', CAST(40.46676000 AS Decimal(10, 8)), CAST(44.79249000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2222168')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (443, N'Lerrnants’k’', 2029, N'LO', 12, N'AM', CAST(40.79532000 AS Decimal(10, 8)), CAST(44.27435000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q3230250')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (444, N'Lerrnapat', 2029, N'LO', 12, N'AM', CAST(40.81538000 AS Decimal(10, 8)), CAST(44.39344000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q33199423')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (445, N'Lerrnavan', 2029, N'LO', 12, N'AM', CAST(40.78820000 AS Decimal(10, 8)), CAST(44.16024000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1922504')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (446, N'Lichk’', 2028, N'GR', 12, N'AM', CAST(40.15933000 AS Decimal(10, 8)), CAST(45.23467000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2636159')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (447, N'Lorut', 2029, N'LO', 12, N'AM', CAST(40.93717000 AS Decimal(10, 8)), CAST(44.77142000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q687064')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (448, N'Lukashin', 2026, N'AV', 12, N'AM', CAST(40.18726000 AS Decimal(10, 8)), CAST(44.00390000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2221651')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (449, N'Lusarrat', 2024, N'AR', 12, N'AM', CAST(39.87403000 AS Decimal(10, 8)), CAST(44.58678000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2221651')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (450, N'Madina', 2028, N'GR', 12, N'AM', CAST(40.07637000 AS Decimal(10, 8)), CAST(45.25507000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q2392033')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (451, N'Malishka', 2025, N'VD', 12, N'AM', CAST(39.74731000 AS Decimal(10, 8)), CAST(45.40570000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q949136')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (452, N'Maralik', 2031, N'SH', 12, N'AM', CAST(40.57507000 AS Decimal(10, 8)), CAST(43.87231000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:10.000' AS DateTime), CAST(N'2019-10-05T18:28:10.000' AS DateTime), 1, N'Q1613499')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (453, N'Margahovit', 2029, N'LO', 12, N'AM', CAST(40.73381000 AS Decimal(10, 8)), CAST(44.68474000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q648909')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (454, N'Margara', 2026, N'AV', 12, N'AM', CAST(40.03332000 AS Decimal(10, 8)), CAST(44.18048000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2634781')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (455, N'Marmarashen', 2024, N'AR', 12, N'AM', CAST(40.05829000 AS Decimal(10, 8)), CAST(44.47229000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2631949')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (456, N'Marmashen', 2031, N'SH', 12, N'AM', CAST(40.83486000 AS Decimal(10, 8)), CAST(43.77790000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1110040')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (457, N'Martuni', 2028, N'GR', 12, N'AM', CAST(40.08333000 AS Decimal(10, 8)), CAST(45.25000000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q39603')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (458, N'Masis', 2024, N'AR', 12, N'AM', CAST(40.06542000 AS Decimal(10, 8)), CAST(44.41618000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1993763')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (459, N'Mayakovski', 2033, N'KT', 12, N'AM', CAST(40.25293000 AS Decimal(10, 8)), CAST(44.63892000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q3302935')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (460, N'Mayisyan', 2031, N'SH', 12, N'AM', CAST(40.84715000 AS Decimal(10, 8)), CAST(43.83938000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2017875')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (461, N'Mayisyan', 2026, N'AV', 12, N'AM', CAST(40.15701000 AS Decimal(10, 8)), CAST(44.09192000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q21403652')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (462, N'Meghradzor', 2033, N'KT', 12, N'AM', CAST(40.60611000 AS Decimal(10, 8)), CAST(44.65147000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222193')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (463, N'Meghrashen', 2031, N'SH', 12, N'AM', CAST(40.67230000 AS Decimal(10, 8)), CAST(43.95831000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q614997')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (464, N'Meghri', 2027, N'SU', 12, N'AM', CAST(38.90292000 AS Decimal(10, 8)), CAST(46.24458000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q39549')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (465, N'Merdzavan', 2026, N'AV', 12, N'AM', CAST(40.18140000 AS Decimal(10, 8)), CAST(44.40033000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222146')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (466, N'Mets Mant’ash', 2031, N'SH', 12, N'AM', CAST(40.64376000 AS Decimal(10, 8)), CAST(44.05653000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2223248')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (467, N'Mets Masrik', 2028, N'GR', 12, N'AM', CAST(40.21948000 AS Decimal(10, 8)), CAST(45.76391000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2650143')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (468, N'Mets Parni', 2029, N'LO', 12, N'AM', CAST(40.83472000 AS Decimal(10, 8)), CAST(44.11108000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2223160')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (469, N'Metsamor', 2026, N'AV', 12, N'AM', CAST(40.14447000 AS Decimal(10, 8)), CAST(44.11670000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1828101')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (470, N'Metsavan', 2029, N'LO', 12, N'AM', CAST(41.20156000 AS Decimal(10, 8)), CAST(44.22877000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1921873')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (471, N'Mosesgegh', 2032, N'TV', 12, N'AM', CAST(40.90534000 AS Decimal(10, 8)), CAST(45.48838000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q33808')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (472, N'Mrganush', 2024, N'AR', 12, N'AM', CAST(40.02857000 AS Decimal(10, 8)), CAST(44.55831000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2631920')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (473, N'Mrgashat', 2026, N'AV', 12, N'AM', CAST(40.13068000 AS Decimal(10, 8)), CAST(44.08069000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2221694')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (474, N'Mrgashen', 2033, N'KT', 12, N'AM', CAST(40.28607000 AS Decimal(10, 8)), CAST(44.54449000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q733549')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (475, N'Mrgavan', 2024, N'AR', 12, N'AM', CAST(39.97251000 AS Decimal(10, 8)), CAST(44.53565000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2632073')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (476, N'Mrgavet', 2024, N'AR', 12, N'AM', CAST(40.02789000 AS Decimal(10, 8)), CAST(44.48328000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2668107')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (477, N'Musalerr', 2026, N'AV', 12, N'AM', CAST(40.15570000 AS Decimal(10, 8)), CAST(44.37793000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2636195')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (478, N'Myasnikyan', 2026, N'AV', 12, N'AM', CAST(40.18048000 AS Decimal(10, 8)), CAST(43.91949000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222067')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (479, N'Nalbandyan', 2026, N'AV', 12, N'AM', CAST(40.06390000 AS Decimal(10, 8)), CAST(43.98889000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q513202')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (480, N'Navur', 2032, N'TV', 12, N'AM', CAST(40.86695000 AS Decimal(10, 8)), CAST(45.34179000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q33922')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (481, N'Nerk’in Getashen', 2028, N'GR', 12, N'AM', CAST(40.14172000 AS Decimal(10, 8)), CAST(45.27087000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2670399')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (482, N'Nizami', 2024, N'AR', 12, N'AM', CAST(40.09168000 AS Decimal(10, 8)), CAST(44.40570000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2668122')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (483, N'Nor Armavir', 2026, N'AV', 12, N'AM', CAST(40.08612000 AS Decimal(10, 8)), CAST(43.99451000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222055')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (484, N'Nor Geghi', 2033, N'KT', 12, N'AM', CAST(40.32233000 AS Decimal(10, 8)), CAST(44.58331000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q934995')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (485, N'Nor Gyugh', 2033, N'KT', 12, N'AM', CAST(40.26672000 AS Decimal(10, 8)), CAST(44.65832000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q3343429')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (486, N'Nor Yerznka', 2023, N'AG', 12, N'AM', CAST(40.30011000 AS Decimal(10, 8)), CAST(44.38892000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1920915')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (487, N'Norabats’', 2024, N'AR', 12, N'AM', CAST(40.10553000 AS Decimal(10, 8)), CAST(44.43329000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q588901')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (488, N'Norakert', 2026, N'AV', 12, N'AM', CAST(40.19733000 AS Decimal(10, 8)), CAST(44.35010000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222682')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (489, N'Noramarg', 2024, N'AR', 12, N'AM', CAST(40.02228000 AS Decimal(10, 8)), CAST(44.42511000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2634323')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (490, N'Norashen', 2029, N'LO', 12, N'AM', CAST(41.18886000 AS Decimal(10, 8)), CAST(44.33336000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1921697')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (491, N'Norashen', 2024, N'AR', 12, N'AM', CAST(40.00130000 AS Decimal(10, 8)), CAST(44.59296000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2634389')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (492, N'Noratus', 2028, N'GR', 12, N'AM', CAST(40.37793000 AS Decimal(10, 8)), CAST(45.18048000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1528182')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (493, N'Noyakert', 2024, N'AR', 12, N'AM', CAST(39.83069000 AS Decimal(10, 8)), CAST(44.66949000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2634363')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (494, N'Noyemberyan', 2032, N'TV', 12, N'AM', CAST(41.17244000 AS Decimal(10, 8)), CAST(44.99917000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q34372')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (495, N'Nshavan', 2024, N'AR', 12, N'AM', CAST(40.02787000 AS Decimal(10, 8)), CAST(44.52565000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2634379')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (496, N'Odzun', 2029, N'LO', 12, N'AM', CAST(41.05321000 AS Decimal(10, 8)), CAST(44.61341000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2300267')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (497, N'Oshakan', 2023, N'AG', 12, N'AM', CAST(40.26392000 AS Decimal(10, 8)), CAST(44.31671000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1777770')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (498, N'Parravak’ar', 2032, N'TV', 12, N'AM', CAST(40.98248000 AS Decimal(10, 8)), CAST(45.36696000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2536571')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (499, N'Pemzashen', 2031, N'SH', 12, N'AM', CAST(40.58612000 AS Decimal(10, 8)), CAST(43.94311000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2671137')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (500, N'Prroshyan', 2033, N'KT', 12, N'AM', CAST(40.24731000 AS Decimal(10, 8)), CAST(44.41949000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222307')
GO
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (501, N'Ptghni', 2033, N'KT', 12, N'AM', CAST(40.25568000 AS Decimal(10, 8)), CAST(44.58612000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1920828')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (502, N'Ptghunk’', 2026, N'AV', 12, N'AM', CAST(40.16388000 AS Decimal(10, 8)), CAST(44.36389000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2222622')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (503, N'P’ok’r Mant’ash', 2031, N'SH', 12, N'AM', CAST(40.64026000 AS Decimal(10, 8)), CAST(44.04666000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2223066')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (504, N'P’shatavan', 2026, N'AV', 12, N'AM', CAST(40.03888000 AS Decimal(10, 8)), CAST(44.06671000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q770615')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (505, N'Rrind', 2025, N'VD', 12, N'AM', CAST(39.76111000 AS Decimal(10, 8)), CAST(45.17792000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2710126')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (506, N'Sarahart’', 2029, N'LO', 12, N'AM', CAST(40.87043000 AS Decimal(10, 8)), CAST(44.21407000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2223140')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (507, N'Saramej', 2029, N'LO', 12, N'AM', CAST(40.77487000 AS Decimal(10, 8)), CAST(44.22220000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q543774')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (508, N'Saratak', 2031, N'SH', 12, N'AM', CAST(40.67090000 AS Decimal(10, 8)), CAST(43.87231000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222975')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (509, N'Sardarapat', 2026, N'AV', 12, N'AM', CAST(40.13206000 AS Decimal(10, 8)), CAST(44.00969000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2412883')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (510, N'Sarigyugh', 2032, N'TV', 12, N'AM', CAST(41.03531000 AS Decimal(10, 8)), CAST(45.14486000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q69271')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (511, N'Sarukhan', 2028, N'GR', 12, N'AM', CAST(40.29169000 AS Decimal(10, 8)), CAST(45.13068000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1528514')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (512, N'Sasunik', 2023, N'AG', 12, N'AM', CAST(40.25012000 AS Decimal(10, 8)), CAST(44.34448000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1528514')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (513, N'Sayat’-Nova', 2024, N'AR', 12, N'AM', CAST(40.07507000 AS Decimal(10, 8)), CAST(44.40008000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q2222503')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (514, N'Sevan', 2028, N'GR', 12, N'AM', CAST(40.54730000 AS Decimal(10, 8)), CAST(44.94171000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q39625')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (515, N'Shaghat', 2027, N'SU', 12, N'AM', CAST(39.55698000 AS Decimal(10, 8)), CAST(45.90727000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q640486')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (516, N'Shahumyan', 2024, N'AR', 12, N'AM', CAST(39.94171000 AS Decimal(10, 8)), CAST(44.57233000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2636202')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (517, N'Shahumyan', 2029, N'LO', 12, N'AM', CAST(40.77482000 AS Decimal(10, 8)), CAST(44.54596000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222776')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (518, N'Shatin', 2025, N'VD', 12, N'AM', CAST(39.83612000 AS Decimal(10, 8)), CAST(45.30292000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2536626')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (519, N'Shenavan', 2026, N'AV', 12, N'AM', CAST(40.05548000 AS Decimal(10, 8)), CAST(43.93048000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222632')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (520, N'Shenavan', 2023, N'AG', 12, N'AM', CAST(40.48328000 AS Decimal(10, 8)), CAST(44.38348000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2535621')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (521, N'Shinuhayr', 2027, N'SU', 12, N'AM', CAST(39.43670000 AS Decimal(10, 8)), CAST(46.31787000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2670154')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (522, N'Shirak', 2031, N'SH', 12, N'AM', CAST(40.84042000 AS Decimal(10, 8)), CAST(43.91582000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2643853')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (523, N'Shirakamut', 2029, N'LO', 12, N'AM', CAST(40.86056000 AS Decimal(10, 8)), CAST(44.15278000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q1922530')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (524, N'Shnogh', 2029, N'LO', 12, N'AM', CAST(41.14693000 AS Decimal(10, 8)), CAST(44.84043000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2642758')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (525, N'Sis', 2024, N'AR', 12, N'AM', CAST(40.05829000 AS Decimal(10, 8)), CAST(44.38892000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2462773')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (526, N'Sisavan', 2024, N'AR', 12, N'AM', CAST(39.90802000 AS Decimal(10, 8)), CAST(44.66721000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2634735')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (527, N'Solak', 2033, N'KT', 12, N'AM', CAST(40.46252000 AS Decimal(10, 8)), CAST(44.70709000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2015768')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (528, N'Spandaryan', 2031, N'SH', 12, N'AM', CAST(40.66105000 AS Decimal(10, 8)), CAST(44.01551000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q430887')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (529, N'Spitak', 2029, N'LO', 12, N'AM', CAST(40.83221000 AS Decimal(10, 8)), CAST(44.26731000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q430887')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (530, N'Step’anavan', 2029, N'LO', 12, N'AM', CAST(41.00995000 AS Decimal(10, 8)), CAST(44.38531000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2020-05-01T13:22:33.000' AS DateTime), 1, N'Q39678')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (531, N'Surenavan', 2024, N'AR', 12, N'AM', CAST(39.79449000 AS Decimal(10, 8)), CAST(44.77508000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q645308')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (532, N'Tandzut', 2026, N'AV', 12, N'AM', CAST(40.06952000 AS Decimal(10, 8)), CAST(44.07788000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2222614')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (533, N'Taronik', 2026, N'AV', 12, N'AM', CAST(40.13367000 AS Decimal(10, 8)), CAST(44.19957000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q765949')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (534, N'Tashir', 2029, N'LO', 12, N'AM', CAST(41.12072000 AS Decimal(10, 8)), CAST(44.28462000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q598741')
INSERT [dbo].[tbl_Cities] ([CityId], [CityName], [state_id], [state_code], [country_id], [country_code], [latitude], [longitude], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (535, N'Tegh', 2027, N'SU', 12, N'AM', CAST(39.55826000 AS Decimal(10, 8)), CAST(46.48054000 AS Decimal(11, 8)), CAST(N'2019-10-05T18:28:11.000' AS DateTime), CAST(N'2019-10-05T18:28:11.000' AS DateTime), 1, N'Q2670423')
GO
SET IDENTITY_INSERT [dbo].[tbl_Countries] ON 

INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (1, N'Afghanistan', N'AFG', N'004', N'AF', N'93', N'Kabul', N'AFN', N'?', N'.af', N'?????????', N'Asia', N'Southern Asia', N'[{\"zoneName\":\"Asia/Kabul\",\"gmtOffset\":16200,\"gmtOffsetName\":\"UTC+04:30\",\"abbreviation\":\"AFT\",\"tzName\":\"Afghanistan Time\"}]', N'{\"kr\":\"??????\",\"br\":\"Afeganistão\",\"pt\":\"Afeganistão\",\"nl\":\"Afghanistan\",\"hr\":\"Afganistan\",\"fa\":\"?????????\",\"de\":\"Afghanistan\",\"es\":\"Afganistán\",\"fr\":\"Afghanistan\",\"ja\":\"???????\",\"it\":\"Afghanistan\",\"cn\":\"???\"}', CAST(33.00000000 AS Decimal(11, 8)), CAST(65.00000000 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1EB', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, N'Q889')
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (10, N'Aland Islands', N'ALA', N'248', N'AX', N'+358-18', N'Mariehamn', N'EUR', N'€', N'.ax', N'Åland', N'Europe', N'Northern Europe', N'[{\"zoneName\":\"Europe/Mariehamn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', N'{\"kr\":\"??? ??\",\"br\":\"Ilhas de Aland\",\"pt\":\"Ilhas de Aland\",\"nl\":\"Ålandeilanden\",\"hr\":\"Ålandski otoci\",\"fa\":\"????? ????\",\"de\":\"Åland\",\"es\":\"Alandia\",\"fr\":\"Åland\",\"ja\":\"???????\",\"it\":\"Isole Aland\",\"cn\":\"????\"}', CAST(60.11666700 AS Decimal(11, 8)), CAST(19.90000000 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1FD', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, NULL)
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (11, N'Albania', N'ALB', N'008', N'AL', N'355', N'Tirana', N'ALL', N'Lek', N'.al', N'Shqipëria', N'Europe', N'Southern Europe', N'[{\"zoneName\":\"Europe/Tirane\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', N'{\"kr\":\"????\",\"br\":\"Albânia\",\"pt\":\"Albânia\",\"nl\":\"Albanië\",\"hr\":\"Albanija\",\"fa\":\"??????\",\"de\":\"Albanien\",\"es\":\"Albania\",\"fr\":\"Albanie\",\"ja\":\"?????\",\"it\":\"Albania\",\"cn\":\"?????\"}', CAST(41.00000000 AS Decimal(11, 8)), CAST(20.00000000 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1F1', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, N'Q222')
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (12, N'Algeria', N'DZA', N'012', N'DZ', N'213', N'Algiers', N'DZD', N'??', N'.dz', N'???????', N'Africa', N'Northern Africa', N'[{\"zoneName\":\"Africa/Algiers\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', N'{\"kr\":\"???\",\"br\":\"Argélia\",\"pt\":\"Argélia\",\"nl\":\"Algerije\",\"hr\":\"Alžir\",\"fa\":\"???????\",\"de\":\"Algerien\",\"es\":\"Argelia\",\"fr\":\"Algérie\",\"ja\":\"??????\",\"it\":\"Algeria\",\"cn\":\"?????\"}', CAST(28.00000000 AS Decimal(11, 8)), CAST(3.00000000 AS Decimal(11, 8)), N'????', N'U+1F1E9 U+1F1FF', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, N'Q262')
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (13, N'American Samoa', N'ASM', N'016', N'AS', N'+1-684', N'Pago Pago', N'USD', N'$', N'.as', N'American Samoa', N'Oceania', N'Polynesia', N'[{\"zoneName\":\"Pacific/Pago_Pago\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"}]', N'{\"kr\":\"???????\",\"br\":\"Samoa Americana\",\"pt\":\"Samoa Americana\",\"nl\":\"Amerikaans Samoa\",\"hr\":\"Americka Samoa\",\"fa\":\"?????? ??????\",\"de\":\"Amerikanisch-Samoa\",\"es\":\"Samoa Americana\",\"fr\":\"Samoa américaines\",\"ja\":\"????????\",\"it\":\"Samoa Americane\",\"cn\":\"?????\"}', CAST(-14.33333333 AS Decimal(11, 8)), CAST(-170.00000000 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1F8', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, NULL)
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (14, N'Andorra', N'AND', N'020', N'AD', N'376', N'Andorra la Vella', N'EUR', N'€', N'.ad', N'Andorra', N'Europe', N'Southern Europe', N'[{\"zoneName\":\"Europe/Andorra\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', N'{\"kr\":\"???\",\"br\":\"Andorra\",\"pt\":\"Andorra\",\"nl\":\"Andorra\",\"hr\":\"Andora\",\"fa\":\"??????\",\"de\":\"Andorra\",\"es\":\"Andorra\",\"fr\":\"Andorre\",\"ja\":\"????\",\"it\":\"Andorra\",\"cn\":\"???\"}', CAST(42.50000000 AS Decimal(11, 8)), CAST(1.50000000 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1E9', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, N'Q228')
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (15, N'Angola', N'AGO', N'024', N'AO', N'244', N'Luanda', N'AOA', N'Kz', N'.ao', N'Angola', N'Africa', N'Middle Africa', N'[{\"zoneName\":\"Africa/Luanda\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', N'{\"kr\":\"???\",\"br\":\"Angola\",\"pt\":\"Angola\",\"nl\":\"Angola\",\"hr\":\"Angola\",\"fa\":\"??????\",\"de\":\"Angola\",\"es\":\"Angola\",\"fr\":\"Angola\",\"ja\":\"????\",\"it\":\"Angola\",\"cn\":\"???\"}', CAST(-12.50000000 AS Decimal(11, 8)), CAST(18.50000000 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1F4', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, N'Q916')
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (16, N'Anguilla', N'AIA', N'660', N'AI', N'+1-264', N'The Valley', N'XCD', N'$', N'.ai', N'Anguilla', N'Americas', N'Caribbean', N'[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', N'{\"kr\":\"???\",\"br\":\"Anguila\",\"pt\":\"Anguila\",\"nl\":\"Anguilla\",\"hr\":\"Angvila\",\"fa\":\"???????\",\"de\":\"Anguilla\",\"es\":\"Anguilla\",\"fr\":\"Anguilla\",\"ja\":\"????\",\"it\":\"Anguilla\",\"cn\":\"???\"}', CAST(18.25000000 AS Decimal(11, 8)), CAST(-63.16666666 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1EE', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, NULL)
INSERT [dbo].[tbl_Countries] ([CountryId], [CountryName], [iso3], [numeric_code], [iso2], [phonecode], [capital], [currency], [currency_symbol], [tld], [native], [region], [subregion], [timezones], [translations], [latitude], [longitude], [emoji], [emojiU], [created_at], [updated_at], [flag], [wikiDataId]) VALUES (18, N'Antigua And Barbuda', N'ATG', N'028', N'AG', N'+1-268', N'St. John ', N'XCD', N'$', N'.ag', N'Antigua and Barbuda', N'Americas', N'Caribbean', N'[{\"zoneName\":\"America/Antigua\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', N'{\"kr\":\"??? ???\",\"br\":\"Antígua e Barbuda\",\"pt\":\"Antígua e Barbuda\",\"nl\":\"Antigua en Barbuda\",\"hr\":"Antigva i Barbuda\",\"fa\":\"??????? ? ???????\",\"de\":\"Antigua und Barbuda\",\"es\":\"Antigua y Barbuda\",\"fr\":\"Antigua-et-Barbuda\",\"ja\":"??????·?????\",\"it\":\"Antigua e Barbuda\",\"cn\":\"???????\"\}]', CAST(17.05000000 AS Decimal(11, 8)), CAST(-61.80000000 AS Decimal(11, 8)), N'????', N'U+1F1E6 U+1F1EC', CAST(N'2018-07-20T20:11:03.000' AS DateTime), CAST(N'2021-08-01T14:37:27.000' AS DateTime), 1, N'Q781')
SET IDENTITY_INSERT [dbo].[tbl_Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_GeneralAmenities] ON 

INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (1, N'Wifi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (2, N'Internet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (3, N'TV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (4, N'Air Conditioning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (5, N'Fan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (6, N'Private entrance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (7, N'Dryer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (8, N'Heater', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (9, N'Washing machine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (10, N'Detergent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (11, N'Clothes dryer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (12, N'Baby cot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (13, N'Desk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_GeneralAmenities] ([GeneralAmenitiesId], [GeneralAmenitiesNameEn], [GeneralAmenitiesNameFr], [GeneralAmenitiesNameSp], [GeneralAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (14, N'Fridge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_GeneralAmenities] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_House] ON 

INSERT [dbo].[tbl_House] ([HouseId], [UserId], [PropertyId], [PlaceName], [RentalId], [Longitude], [Latitude], [CountryId], [StreetName], [RoomNumber], [CityName], [StateName], [PostalCode], [Acreage], [Guests], [Bedroom], [Beds], [Bathroom], [Kitchen], [GeneralAmenitiesRule], [PetRule], [PartyOrganizingRule], [CookingRule], [AdditionalRuleText], [PlaceDesForClient], [HouseCoverImage], [HousePlaceImage], [OneNightPrice], [MonThusPrice], [FriSunPrice], [Longtermprice], [NightsMin], [NightsMax], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive], [stepCode], [Currency], [availDate]) VALUES (1, 2, 1, N'TestPlaceok', 1, 0, 0, 13, N'A', N'3', N'Hyderabad', N'1', N'1', N'300', 6, 5, 4, 3, 2, 2, 3, 1, 2, N',No Smoking,No BadThings', N'The Best Place', N'https://localhost:44319/wwwroot/Attachments/2021-12-17 07-35-26---photo-1477959858617-67f85cf4f1df.jpg', N'https://localhost:44319/wwwroot/Attachments/2021-12-17 07-35-19---London.jpeg,,https://localhost:44319/wwwroot/Attachments/2021-12-18 08-59-28---photo-1477959858617-67f85cf4f1df.jpg,,https://localhost:44319/wwwroot/Attachments/2021-12-18 08-59-33---hyderabad-1.jpg,,https://localhost:44319/wwwroot/Attachments/2021-12-18 08-59-41---6c35fe33-4b20-4a1a-a810-68371415ea90.jpeg,,https://localhost:44319/wwwroot/Attachments/2021-12-18 09-27-29---photo-1477959858617-67f85cf4f1df.jpg,', 100, 100, 200, 300, 4, 2, CAST(N'2021-12-18T00:23:34.587' AS DateTime), NULL, CAST(N'2021-12-19T00:33:02.600' AS DateTime), NULL, 1, 10, N'USD', CAST(N'2021-12-25T07:00:00.000' AS DateTime))
INSERT [dbo].[tbl_House] ([HouseId], [UserId], [PropertyId], [PlaceName], [RentalId], [Longitude], [Latitude], [CountryId], [StreetName], [RoomNumber], [CityName], [StateName], [PostalCode], [Acreage], [Guests], [Bedroom], [Beds], [Bathroom], [Kitchen], [GeneralAmenitiesRule], [PetRule], [PartyOrganizingRule], [CookingRule], [AdditionalRuleText], [PlaceDesForClient], [HouseCoverImage], [HousePlaceImage], [OneNightPrice], [MonThusPrice], [FriSunPrice], [Longtermprice], [NightsMin], [NightsMax], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive], [stepCode], [Currency], [availDate]) VALUES (2, 2, 3, N'Viila', 1, 0, 0, 11, N'tank', N'4', N'karachi', N'1', N'1', N'400', 4, 2, 5, 2, 1, 2, 1, 2, 2, N',no smoking', N'The Best Place', N'https://localhost:44319/wwwroot/Attachments/2021-12-18 06-04-54---photo-1477959858617-67f85cf4f1df.jpg,', N'https://localhost:44319/wwwroot/Attachments/2021-12-18 06-05-01---London.jpeg,,https://localhost:44319/wwwroot/Attachments/2021-12-18 06-05-07---photo-1477959858617-67f85cf4f1df.jpg,', 200, 300, 400, 500, 3, 2, CAST(N'2021-12-18T22:53:35.200' AS DateTime), NULL, CAST(N'2021-12-18T23:05:45.660' AS DateTime), NULL, 1, 10, N'USD', CAST(N'2021-12-13T07:00:00.000' AS DateTime))
INSERT [dbo].[tbl_House] ([HouseId], [UserId], [PropertyId], [PlaceName], [RentalId], [Longitude], [Latitude], [CountryId], [StreetName], [RoomNumber], [CityName], [StateName], [PostalCode], [Acreage], [Guests], [Bedroom], [Beds], [Bathroom], [Kitchen], [GeneralAmenitiesRule], [PetRule], [PartyOrganizingRule], [CookingRule], [AdditionalRuleText], [PlaceDesForClient], [HouseCoverImage], [HousePlaceImage], [OneNightPrice], [MonThusPrice], [FriSunPrice], [Longtermprice], [NightsMin], [NightsMax], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive], [stepCode], [Currency], [availDate]) VALUES (3, 2, 5, N'Ib', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-12-19T00:35:53.813' AS DateTime), NULL, NULL, NULL, 1, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_House] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HouseGeneralAmenities] ON 

INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, 1, 4, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (3, 1, 7, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (4, 1, 10, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (5, 1, 8, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (6, 1, 5, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (7, 1, 2, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (8, 1, 3, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (9, 1, 9, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (10, 1, 12, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (11, 1, 6, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (12, 1, 11, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (13, 1, 13, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (14, 1, 14, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (15, 2, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (16, 2, 2, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (17, 2, 3, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (18, 2, 4, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (19, 2, 5, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (20, 2, 6, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (21, 2, 7, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (22, 2, 8, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (23, 2, 9, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (24, 2, 10, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (25, 2, 11, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (26, 2, 12, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (27, 2, 13, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseGeneralAmenities] ([HouseGeneralAmenitiesId], [HouseId], [GeneralAmentiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (28, 2, 14, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tbl_HouseGeneralAmenities] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HouseNotAvaiable] ON 

INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:06:50.940' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:06:50.940' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (3, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:06:50.940' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (4, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:06:50.940' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (5, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:09:09.450' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (6, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:09:09.450' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (7, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:09:09.450' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (8, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:09:09.450' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (9, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:40:45.820' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (10, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:40:45.820' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (11, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:40:45.820' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (12, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:40:45.820' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (13, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:03.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (14, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:03.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (15, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:03.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (16, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:03.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (17, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:06.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (18, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:06.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (19, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:06.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (20, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:06.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (21, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:08.077' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (22, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:08.077' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (23, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:08.077' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (24, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:08.077' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (25, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:09.297' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (26, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:09.297' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (27, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:09.297' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (28, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:09.297' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (29, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:11.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (30, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:11.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (31, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:11.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (32, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:11.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (33, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:13.243' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (34, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:13.243' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (35, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:13.243' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (36, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:13.243' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (37, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:14.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (38, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:14.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (39, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:14.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (40, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:14.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (41, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:39.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (42, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:39.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (43, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:39.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (44, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:39.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (45, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:41:49.533' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (46, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:41:49.533' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (47, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:41:49.533' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (48, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:41:49.533' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (49, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:06.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (50, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:06.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (51, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:06.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (52, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:06.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (53, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:10.603' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (54, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:10.603' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (55, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:10.603' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (56, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:10.603' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (57, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:13.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (58, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:13.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (59, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:13.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (60, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:13.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (61, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:15.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (62, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:15.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (63, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:15.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (64, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:15.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (65, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:16.167' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (66, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:16.167' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (67, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:16.167' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (68, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:16.167' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (69, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:18.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (70, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:18.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (71, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:18.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (72, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:18.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (73, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:20.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (74, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:20.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (75, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:20.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (76, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:20.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (77, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:42:21.737' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (78, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:42:21.737' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (79, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:42:21.737' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (80, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:42:21.737' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (81, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:43:27.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (82, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:43:27.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (83, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:43:27.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (84, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:43:27.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (85, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:43:27.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (86, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:43:27.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (87, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:45:52.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (88, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:45:52.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (89, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:52.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (90, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:52.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (91, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:52.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (92, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:52.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (93, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:45:55.283' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (94, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:45:55.283' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (95, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:55.283' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (96, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:55.283' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (97, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:55.283' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (98, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:55.283' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (99, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:45:57.430' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (100, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:45:57.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (101, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:57.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (102, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:57.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (103, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:57.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (104, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:57.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (105, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:45:59.257' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (106, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:45:59.257' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (107, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:59.257' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (108, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:59.257' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (109, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:45:59.257' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (110, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:45:59.257' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (111, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:46:00.037' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (112, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:46:00.037' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (113, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:00.037' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (114, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:00.037' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (115, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:00.037' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (116, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:00.037' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (117, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:46:02.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (118, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:46:02.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (119, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:02.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (120, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:02.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (121, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:02.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (122, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:02.163' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (123, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:46:04.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (124, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:46:04.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (125, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:04.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (126, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:04.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (127, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:04.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (128, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:04.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (129, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:46:04.973' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (130, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:46:04.973' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (131, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:04.973' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (132, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:04.973' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (133, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:04.973' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (134, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:04.973' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (135, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (136, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (137, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (138, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (139, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (140, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (141, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (142, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:46:09.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (143, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (144, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (145, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (146, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (147, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (148, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (149, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (150, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:48:57.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (151, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (152, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (153, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (154, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (155, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (156, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (157, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (158, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:48:59.947' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (159, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (160, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (161, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (162, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (163, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (164, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (165, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (166, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:01.770' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (167, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (168, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (169, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (170, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (171, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (172, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (173, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (174, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:03.617' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (175, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (176, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (177, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (178, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (179, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (180, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (181, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (182, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:04.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (183, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (184, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (185, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (186, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (187, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (188, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (189, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (190, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:06.443' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (191, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (192, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (193, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (194, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (195, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (196, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (197, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (198, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:08.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (199, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (200, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (201, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (202, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (203, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (204, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (205, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (206, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:09.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (207, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (208, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (209, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (210, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (211, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (212, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (213, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (214, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:11.380' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (215, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (216, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (217, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (218, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (219, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (220, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (221, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (222, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:45.030' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (223, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (224, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (225, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (226, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (227, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (228, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (229, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (230, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:46.840' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (231, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (232, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (233, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (234, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (235, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (236, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (237, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (238, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:48.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (239, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (240, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (241, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (242, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (243, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (244, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (245, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (246, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:50.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (247, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (248, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (249, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (250, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (251, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (252, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (253, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (254, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:52.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (255, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (256, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (257, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (258, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (259, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (260, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (261, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (262, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:53.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (263, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (264, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (265, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (266, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (267, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (268, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (269, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (270, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:49:54.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (271, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (272, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (273, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (274, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (275, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (276, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (277, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (278, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:50:00.487' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (279, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (280, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (281, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (282, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (283, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (284, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (285, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (286, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:50:04.463' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (287, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (288, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (289, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (290, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (291, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (292, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (293, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (294, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:52:44.780' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (295, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (296, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (297, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (298, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (299, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (300, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (301, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (302, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:52:46.687' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (303, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (304, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (305, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (306, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (307, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (308, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (309, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (310, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:52:48.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (311, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (312, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (313, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (314, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (315, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (316, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (317, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (318, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:52:50.220' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (319, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (320, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (321, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (322, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (323, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (324, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (325, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (326, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:52:51.093' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (327, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (328, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (329, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (330, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (331, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (332, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (333, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (334, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:52:52.777' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (335, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (336, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (337, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (338, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (339, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (340, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (341, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (342, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:52:59.980' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (343, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (344, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (345, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (346, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (347, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (348, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (349, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (350, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:01.747' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (351, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (352, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (353, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (354, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (355, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (356, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (357, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (358, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:05.390' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (359, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (360, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (361, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (362, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (363, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (364, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (365, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (366, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:34.833' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (367, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (368, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (369, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (370, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (371, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (372, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (373, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (374, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:36.430' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (375, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (376, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (377, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (378, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (379, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (380, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (381, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (382, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:38.073' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (383, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (384, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (385, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (386, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (387, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (388, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (389, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (390, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:39.727' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (391, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (392, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (393, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (394, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (395, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (396, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (397, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (398, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:41.150' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (399, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (400, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (401, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (402, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (403, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (404, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (405, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (406, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:44.537' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (407, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (408, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (409, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (410, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (411, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (412, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (413, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (414, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:46.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (415, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (416, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (417, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (418, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (419, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (420, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (421, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (422, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:47.293' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (423, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (424, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (425, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (426, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (427, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (428, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (429, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (430, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:53:51.140' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (431, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (432, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (433, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (434, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (435, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (436, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (437, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (438, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:54:58.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (439, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (440, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (441, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (442, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (443, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (444, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (445, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (446, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:00.480' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (447, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (448, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (449, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (450, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (451, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (452, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (453, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (454, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:02.387' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (455, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (456, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (457, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (458, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (459, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (460, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (461, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (462, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:04.233' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (463, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (464, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (465, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (466, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (467, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (468, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (469, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (470, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:04.983' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (471, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (472, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (473, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (474, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (475, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (476, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (477, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (478, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:06.730' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (479, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (480, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (481, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (482, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (483, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (484, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (485, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (486, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:08.447' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (487, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (488, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (489, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (490, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (491, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (492, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (493, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (494, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:09.643' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (495, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (496, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (497, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (498, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (499, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (500, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (501, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (502, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:55:12.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (503, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (504, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (505, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (506, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (507, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (508, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (509, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (510, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:08.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (511, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (512, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (513, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (514, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (515, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (516, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (517, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (518, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:09.717' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (519, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (520, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (521, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (522, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (523, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (524, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (525, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (526, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:11.397' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (527, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (528, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (529, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (530, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (531, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (532, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (533, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (534, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:13.103' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (535, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (536, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (537, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (538, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (539, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (540, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (541, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (542, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:13.760' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (543, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (544, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (545, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (546, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (547, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (548, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (549, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (550, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:15.377' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (551, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (552, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (553, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (554, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (555, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (556, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (557, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (558, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:17.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (559, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (560, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (561, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (562, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (563, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (564, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (565, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (566, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:19.610' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (567, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (568, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (569, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (570, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (571, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (572, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (573, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (574, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T18:57:20.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (575, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (576, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (577, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (578, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (579, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (580, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (581, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (582, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:24.530' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (583, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (584, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (585, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (586, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (587, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (588, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (589, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (590, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:26.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (591, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (592, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (593, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (594, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (595, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (596, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (597, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (598, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:28.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (599, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (600, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (601, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (602, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (603, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (604, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (605, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (606, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:29.787' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (607, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (608, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (609, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (610, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (611, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (612, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (613, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (614, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:30.680' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (615, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (616, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (617, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (618, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (619, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (620, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (621, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (622, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:32.520' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (623, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (624, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (625, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (626, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (627, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (628, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (629, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (630, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:34.250' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (631, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (632, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (633, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (634, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (635, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (636, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (637, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (638, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:36.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (639, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (640, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (641, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (642, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (643, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (644, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (645, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (646, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:27:38.340' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (647, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (648, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (649, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (650, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (651, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (652, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (653, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (654, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:08.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (655, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (656, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (657, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (658, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (659, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (660, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (661, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (662, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:10.743' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (663, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (664, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (665, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (666, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (667, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (668, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (669, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (670, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:12.837' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (671, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (672, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (673, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (674, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (675, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (676, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (677, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (678, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:14.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (679, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (680, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (681, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (682, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (683, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (684, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (685, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (686, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:15.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (687, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (688, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (689, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (690, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (691, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (692, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (693, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (694, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:17.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (695, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (696, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (697, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (698, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (699, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (700, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (701, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (702, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:19.493' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (703, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (704, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (705, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (706, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (707, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (708, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (709, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (710, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:20.410' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (711, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (712, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (713, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (714, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (715, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (716, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (717, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (718, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:28:27.027' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (719, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (720, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (721, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (722, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (723, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (724, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (725, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (726, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:19.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (727, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (728, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (729, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (730, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (731, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (732, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (733, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (734, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:21.097' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (735, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (736, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (737, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (738, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (739, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (740, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (741, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (742, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:22.850' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (743, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (744, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (745, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (746, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (747, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (748, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (749, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (750, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:24.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (751, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (752, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (753, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (754, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (755, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (756, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (757, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (758, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:25.313' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (759, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (760, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (761, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (762, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (763, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (764, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (765, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (766, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:27.133' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (767, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (768, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (769, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (770, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (771, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (772, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (773, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (774, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:29.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (775, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (776, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (777, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (778, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (779, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (780, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (781, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (782, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:30.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (783, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (784, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (785, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (786, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (787, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (788, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (789, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (790, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:30:36.347' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (791, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (792, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (793, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (794, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (795, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (796, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (797, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (798, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:01.570' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (799, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (800, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (801, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (802, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (803, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (804, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (805, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (806, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:16.477' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (807, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (808, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (809, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (810, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (811, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (812, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (813, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (814, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:19.317' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (815, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (816, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (817, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (818, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (819, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (820, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (821, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (822, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:21.437' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (823, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (824, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (825, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (826, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (827, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (828, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (829, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (830, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:23.110' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (831, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (832, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (833, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (834, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (835, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (836, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (837, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (838, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:24.577' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (839, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (840, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (841, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (842, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (843, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (844, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (845, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (846, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:26.373' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (847, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (848, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (849, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (850, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (851, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (852, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (853, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (854, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:28.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (855, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (856, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (857, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (858, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (859, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (860, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (861, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (862, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:31.683' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (863, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (864, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (865, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (866, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (867, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (868, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (869, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (870, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:33.017' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (871, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (872, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (873, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (874, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (875, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (876, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (877, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (878, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-18T19:36:40.697' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (879, 2, CAST(N'2021-12-17' AS Date), CAST(N'2021-12-18T23:05:35.087' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (880, 2, CAST(N'2021-12-16' AS Date), CAST(N'2021-12-18T23:05:35.087' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (881, 2, CAST(N'2021-12-15' AS Date), CAST(N'2021-12-18T23:05:35.087' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (882, 2, CAST(N'2021-12-14' AS Date), CAST(N'2021-12-18T23:05:35.087' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (883, 2, CAST(N'2021-12-13' AS Date), CAST(N'2021-12-18T23:05:35.087' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (884, 2, CAST(N'2021-12-17' AS Date), CAST(N'2021-12-18T23:05:45.660' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (885, 2, CAST(N'2021-12-16' AS Date), CAST(N'2021-12-18T23:05:45.660' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (886, 2, CAST(N'2021-12-15' AS Date), CAST(N'2021-12-18T23:05:45.660' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (887, 2, CAST(N'2021-12-14' AS Date), CAST(N'2021-12-18T23:05:45.660' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (888, 2, CAST(N'2021-12-13' AS Date), CAST(N'2021-12-18T23:05:45.660' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (889, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (890, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (891, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (892, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (893, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (894, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (895, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (896, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:30:05.750' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (897, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (898, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (899, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (900, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (901, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (902, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (903, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (904, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:30:08.657' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (905, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (906, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (907, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (908, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (909, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (910, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (911, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (912, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:30:11.587' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (913, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (914, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (915, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (916, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (917, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (918, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (919, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (920, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:30:22.927' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (921, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (922, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (923, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (924, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (925, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (926, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (927, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (928, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:31:39.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (929, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (930, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (931, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (932, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (933, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (934, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (935, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (936, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:31:41.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (937, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (938, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (939, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (940, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (941, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (942, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (943, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (944, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:32:07.827' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (945, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (946, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (947, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (948, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (949, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (950, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (951, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (952, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:32:09.170' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (953, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (954, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (955, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (956, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (957, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (958, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (959, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (960, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:32:44.130' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (961, 1, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (962, 1, CAST(N'2021-12-02' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (963, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (964, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (965, 1, CAST(N'2021-12-04' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (966, 1, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (967, 1, CAST(N'2021-12-18' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseNotAvaiable] ([HouseNotAvaiableId], [HouseId], [Dates], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (968, 1, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-19T00:33:02.603' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_HouseNotAvaiable] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HouseOtherAmenities] ON 

INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 1, 3, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, 1, 5, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (3, 1, 8, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (4, 1, 11, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (5, 1, 14, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (6, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (7, 1, 2, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (8, 1, 4, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (9, 1, 6, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (10, 1, 7, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (11, 1, 9, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (12, 1, 10, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (13, 1, 12, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (14, 1, 13, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (15, 1, 15, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (16, 2, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (17, 2, 2, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (18, 2, 3, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (19, 2, 4, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (20, 2, 5, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (21, 2, 6, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (22, 2, 7, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (23, 2, 8, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (24, 2, 9, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (25, 2, 10, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (26, 2, 11, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (27, 2, 12, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (28, 2, 13, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (29, 2, 14, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseOtherAmenities] ([HouseOtherAmenitiesId], [HouseId], [OtherAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (30, 2, 15, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tbl_HouseOtherAmenities] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HouseSafeAmenities] ON 

INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 1, 3, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, 1, 2, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (3, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (4, 1, 4, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (5, 2, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (6, 2, 2, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (7, 2, 3, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbl_HouseSafeAmenities] ([HouseSafeAmenitiesId], [HouseId], [SafeAmenitiesId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (8, 2, 4, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_HouseSafeAmenities] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Module] ON 

INSERT [dbo].[tbl_Module] ([ModuleId], [ModuleName], [IsActive]) VALUES (1, N'admin', 1)
INSERT [dbo].[tbl_Module] ([ModuleId], [ModuleName], [IsActive]) VALUES (2, N'vendor', 1)
INSERT [dbo].[tbl_Module] ([ModuleId], [ModuleName], [IsActive]) VALUES (3, N'custormer', 1)
SET IDENTITY_INSERT [dbo].[tbl_Module] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ModulePermission] ON 

INSERT [dbo].[tbl_ModulePermission] ([ModulePermissionId], [ModuleId], [RoleId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 1, 1, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_ModulePermission] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_OtherAmenities] ON 

INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (1, N'Wardrobe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (2, N'Cloth hook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (3, N'Extra cushion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (4, N'Gas stove', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (5, N'Toilet paper', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (6, N'Free toiletries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (7, N'Makeup table', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (8, N'Hot pot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (9, N'Bathroom heaters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (10, N'Kettle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (11, N'Dishwasher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (12, N'BBQ grill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (13, N'Toaster', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (14, N'Towel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_OtherAmenities] ([OtherAmenitiesId], [OtherAmenitiesNameEn], [OtherAmenitiesNameFr], [OtherAmenitiesNameSp], [OtherAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (15, N'Dining table', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_OtherAmenities] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PagePermission] ON 

INSERT [dbo].[tbl_PagePermission] ([PagePermissionId], [PageId], [RoleId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_PagePermission] ([PagePermissionId], [PageId], [RoleId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, 2, 1, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_PagePermission] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Pages] ON 

INSERT [dbo].[tbl_Pages] ([PageId], [PageName], [IsActive]) VALUES (1, N'UserManagement', 1)
INSERT [dbo].[tbl_Pages] ([PageId], [PageName], [IsActive]) VALUES (2, N'RoleManagement', 1)
SET IDENTITY_INSERT [dbo].[tbl_Pages] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PropertyType] ON 

INSERT [dbo].[tbl_PropertyType] ([PropertyId], [PropertyEn], [PropertyFr], [PropertySp], [PropertyDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (1, N'Hotel', N'Hôtel', N'Hotel', N'Hotel', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_PropertyType] ([PropertyId], [PropertyEn], [PropertyFr], [PropertySp], [PropertyDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (2, N'Cottage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_PropertyType] ([PropertyId], [PropertyEn], [PropertyFr], [PropertySp], [PropertyDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (3, N'Villa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_PropertyType] ([PropertyId], [PropertyEn], [PropertyFr], [PropertySp], [PropertyDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (4, N'Cabin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_PropertyType] ([PropertyId], [PropertyEn], [PropertyFr], [PropertySp], [PropertyDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (5, N'Farm stay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_PropertyType] ([PropertyId], [PropertyEn], [PropertyFr], [PropertySp], [PropertyDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (6, N'Houseboat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_PropertyType] ([PropertyId], [PropertyEn], [PropertyFr], [PropertySp], [PropertyDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (7, N'Lighthouse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_PropertyType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_RentalForm] ON 

INSERT [dbo].[tbl_RentalForm] ([RentalId], [RentalEn], [RentalFr], [RentalSp], [RentalDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (1, N'Entire Place', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_RentalForm] ([RentalId], [RentalEn], [RentalFr], [RentalSp], [RentalDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (2, N'Private Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_RentalForm] ([RentalId], [RentalEn], [RentalFr], [RentalSp], [RentalDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (3, N'Share Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_RentalForm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Role] ON 

INSERT [dbo].[tbl_Role] ([RoleId], [RoleName], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, N'SuperAdmin', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Role] ([RoleId], [RoleName], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, N'Admin', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Role] ([RoleId], [RoleName], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (3, N'Vendor', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Role] ([RoleId], [RoleName], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (4, N'Vistors', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SafeAmenities] ON 

INSERT [dbo].[tbl_SafeAmenities] ([SafeAmenitiesId], [SafeAmenitiesNameEn], [SafeAmenitiesNameFr], [SafeAmenitiesNameSp], [SafeAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (1, N'Fire siren', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_SafeAmenities] ([SafeAmenitiesId], [SafeAmenitiesNameEn], [SafeAmenitiesNameFr], [SafeAmenitiesNameSp], [SafeAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (2, N'Fire extinguisher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_SafeAmenities] ([SafeAmenitiesId], [SafeAmenitiesNameEn], [SafeAmenitiesNameFr], [SafeAmenitiesNameSp], [SafeAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (3, N'Anti-theft key', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_SafeAmenities] ([SafeAmenitiesId], [SafeAmenitiesNameEn], [SafeAmenitiesNameFr], [SafeAmenitiesNameSp], [SafeAmenitiesNameDu], [CreateDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActive]) VALUES (4, N'Safe vault', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_SafeAmenities] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([UserId], [Username], [Firstname], [Lastname], [Password], [Address], [Number], [PostalCode], [CityId], [CountryId], [Gender], [DateOfBirth], [Other], [IsActive], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy]) VALUES (1, N'superadmin@gmail.com', N'superadmin', N'superadmin', N'T9rucaF7eoHL1VV/KUu/Wg==', NULL, NULL, NULL, 1, 1, N'1', NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_User] ([UserId], [Username], [Firstname], [Lastname], [Password], [Address], [Number], [PostalCode], [CityId], [CountryId], [Gender], [DateOfBirth], [Other], [IsActive], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy]) VALUES (2, N'sheerazkhilji@gmail.com', N'sheeraz', N'khilji', N'T9rucaF7eoHL1VV/KUu/Wg==', N'abc', N'123456789', N'1234', 143, 10, N'Male', CAST(N'1999-06-15' AS Date), NULL, 1, CAST(N'2021-11-08T20:23:34.670' AS DateTime), N'self', NULL, NULL)
INSERT [dbo].[tbl_User] ([UserId], [Username], [Firstname], [Lastname], [Password], [Address], [Number], [PostalCode], [CityId], [CountryId], [Gender], [DateOfBirth], [Other], [IsActive], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy]) VALUES (3, N'ibrahim@gmail.com', N'ibrahim', N'MOSANI', N'T9rucaF7eoHL1VV/KUu/Wg==', N'abc', N'123', N'1234', 143, 10, N'Male', CAST(N'2021-11-03' AS Date), NULL, 1, CAST(N'2021-11-08T20:49:15.557' AS DateTime), N'self', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_UserRole] ON 

INSERT [dbo].[tbl_UserRole] ([UserRoleId], [UserId], [RoleId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_UserRole] ([UserRoleId], [UserId], [RoleId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, 2, 3, CAST(N'2021-11-08T20:23:34.707' AS DateTime), N'self', NULL, NULL, 1)
INSERT [dbo].[tbl_UserRole] ([UserRoleId], [UserId], [RoleId], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (3, 3, 3, CAST(N'2021-11-08T20:49:15.557' AS DateTime), N'self', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Vendor] ON 

INSERT [dbo].[tbl_Vendor] ([VendorId], [UserID], [CompanyName], [CompanyDescription], [CompanyMail], [Website], [CompanyAddress], [CompanyPostalCode], [CityId], [CounttyId], [IsApproved], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (1, 2, N'MyCompany', N'Very Good', N'sheerazkhilji@gmail.com', N'later', N'abc', N'1234', 143, 10, 1, CAST(N'2021-11-08T20:23:34.727' AS DateTime), N'self', NULL, NULL, 1)
INSERT [dbo].[tbl_Vendor] ([VendorId], [UserID], [CompanyName], [CompanyDescription], [CompanyMail], [Website], [CompanyAddress], [CompanyPostalCode], [CityId], [CounttyId], [IsApproved], [CreateDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsActive]) VALUES (2, 3, N'rice', N'very good quality', N'ibrahim@gmail.com', N'later', N'abc', N'1234', 143, 10, 0, CAST(N'2021-11-08T20:49:15.570' AS DateTime), N'self', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_Vendor] OFF
GO
ALTER TABLE [dbo].[tbl_Cities] ADD  DEFAULT ((1)) FOR [flag]
GO
ALTER TABLE [dbo].[tbl_Countries] ADD  DEFAULT (NULL) FOR [latitude]
GO
ALTER TABLE [dbo].[tbl_Countries] ADD  DEFAULT (NULL) FOR [longitude]
GO
ALTER TABLE [dbo].[tbl_Countries] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_Countries] ADD  DEFAULT ((1)) FOR [flag]
GO
/****** Object:  StoredProcedure [dbo].[usp_AddUpdateHouse]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    

CREATE proc [dbo].[usp_AddUpdateHouse]    
@HouseId int ,    
@UserId int ,  
@PropertyId int =null,    
@PlaceName nvarchar(max) =null,    
@RentalId int =null,    
@Longitude float =null,    
@Latitude float =null,    
@CountryId int =null,    
@streetName nvarchar(max) =null,    
@RoomNumber nvarchar(max) =null,    
@CityName nvarchar(max),    
@stateName  nvarchar(max) =null,    
@PostalCode nvarchar(max) =null,    
@Acreage nvarchar(max) =null,    
@Guests int =null,    
@Bedroom int =null,    
@Beds int =null,    
@Bathroom int =null,    
@kitchen int =null,    
@GeneralAmenitiesRule int =null,    
@PetRule int =null,    
@PartyOrganizingRule int =null,    
@CookingRule int =null,    
@PlaceDesForClient nvarchar(max) =null,    
@HouseCoverImage  nvarchar(max) =null,    
@HousePlaceImage  nvarchar(max) =null,
@OneNightPrice  float =null,   
@MonThusPrice float =null,    
@FriSunPrice float =null,    
@Longtermprice  float =null,    
@Currency nvarchar(max)=null,    
@AvailDate datetime=null,    
@NightsMin float =null,    
@NightsMax float =null,     
@AdditionalRulesForHouse  nvarchar(max)  ,     
@type_HouseGeneralAmenities  type_HouseGeneralAmenities  readonly,    
    
@type_HouseOtherAmenities  type_HouseOtherAmenities  readonly,    
    
@type_HouseSafeAmenities  type_HouseSafeAmenities  readonly,    
    
@type_HouseNotAvaiable type_HouseNotAvaiable readonly,      
@CreatedBy nvarchar(max)=null,    
@stepCode int=0    
as    
begin    
    
      
declare @ErrorMessage nvarchar(max)      
      
      
declare @ErrorSeverity nvarchar(max)      
      
      
declare @ErrorState  nvarchar(max)=null;      
      
      
   begin  try        
    
   if(@HouseId>0)    
   begin    
    
   update tbl_House set PropertyId=@PropertyId,    
   PlaceName=@PlaceName,    
   RentalId=@RentalId,    
   Longitude=@Longitude,    
   Latitude=@Latitude,    
   CountryId=@CountryId,    
   StreetName=@streetName,    
   RoomNumber=@RoomNumber,    
   CityName=@CityName,    
   StateName=@stateName,    
   PostalCode=@PostalCode,    
   Acreage=@Acreage,    
   Guests=@Guests,    
   Bedroom=@Bedroom,    
   Beds=@Beds,    
   Bathroom=@Bathroom,    
   Kitchen=@kitchen,    
   GeneralAmenitiesRule=@GeneralAmenitiesRule,    
   PetRule=@PetRule,    
   PartyOrganizingRule=@PartyOrganizingRule,    
   CookingRule=@CookingRule,    
   AdditionalRuleText=@AdditionalRulesForHouse,    
   PlaceDesForClient=@PlaceDesForClient,    
   HouseCoverImage=@HouseCoverImage, 
   OneNightPrice=@OneNightPrice,
   MonThusPrice=@MonThusPrice,    
   FriSunPrice=@FriSunPrice,    
   Longtermprice=@Longtermprice,    
   NightsMin=@NightsMin,    
   NightsMax=@NightsMax,    
 stepCode=@stepCode,    
UpdateBy=@CreatedBy,    
Currency=@Currency,    
availDate=@AvailDate,    
UpdateDate=GETDATE(),    
HousePlaceImage=@HousePlaceImage    
where HouseId=@HouseId    
    
    
  Merge  tbl_HouseGeneralAmenities G      
  USING @type_HouseGeneralAmenities  A on (G.GeneralAmentiesId=A.GeneralAmentiesIds and g.HouseId=@HouseId)      
  WHEN MATCHED      
  THEN UPDATE SET       
   G.IsActive=A.IsActive      
   WHEN NOT MATCHED BY TARGET       
THEN INSERT (HouseId,GeneralAmentiesId,IsActive )      
        VALUES (@HouseId,A.GeneralAmentiesIds,A.IsActive );      
    
  Merge  tbl_HouseOtherAmenities O      
  USING @type_HouseOtherAmenities  OA on (O.OtherAmenitiesId=OA.OtherAmenitiesIds and O.HouseId=@HouseId)      
  WHEN MATCHED      
  THEN UPDATE SET       
   O.IsActive=OA.IsActive      
   WHEN NOT MATCHED BY TARGET       
THEN INSERT (HouseId,OtherAmenitiesId,IsActive )      
        VALUES (@HouseId,OA.OtherAmenitiesIds,OA.IsActive );      
    
    
      
  Merge  tbl_HouseSafeAmenities S      
  USING @type_HouseSafeAmenities  SA on (S.SafeAmenitiesId=SA.SafeAmenitiesIds and S.HouseId=@HouseId)      
  WHEN MATCHED      
  THEN UPDATE SET       
   S.IsActive=SA.IsActive      
   WHEN NOT MATCHED BY TARGET       
THEN INSERT (HouseId,SafeAmenitiesId,IsActive )      
        VALUES (@HouseId,SA.SafeAmenitiesIds,SA.IsActive );      
    
    
    
	
    
    
if not exists(select 1 from tbl_HouseNotAvaiable where HouseId=@HouseId)    
begin 



 insert into  tbl_HouseNotAvaiable (HouseId,Dates,[CreateDate],[IsActive])      
 select  @HouseId,HouseNotAvaiableDates,getdate(),1 from @type_HouseNotAvaiable    
 end    
 else    

 begin    


 if exists(select 1 from  @type_HouseNotAvaiable)
 begin

 UPDATE  tbl_HouseNotAvaiable set IsActive=0 where HouseId=@HouseId

 insert into  tbl_HouseNotAvaiable (HouseId,Dates,[CreateDate],[IsActive])      
 select  @HouseId,HouseNotAvaiableDates,getdate(),1 from @type_HouseNotAvaiable    

 end
    


 end    
    
    
    
    
    
    
 select @HouseId    
    
    
    
    
   end    
   else    
    
   begin    
    
    
   insert into tbl_House(UserId,PropertyId,PlaceName,RentalId,CreatedBy,CreateDate,IsActive,stepCode)    
   values(@UserId,@PropertyId,@PlaceName,@RentalId,@CreatedBy,GETDATE(),1,@stepCode)    
    
    
       
select @@IDENTITY       
       
       
   end    
    
    
    end try      
      
 begin catch      
 ROLLBACK      
SELECT       
        @ErrorMessage = ERROR_MESSAGE(),       
        @ErrorSeverity = ERROR_SEVERITY(),       
        @ErrorState  = ERROR_STATE();      
      
    -- return the error inside the CATCH block      
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);      
      
end catch      
      
      
      
      
      
end      
      
      
    
    
    
    
    
    
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllCountries]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_GetAllCountries]
as
begin

select countryId,CountryName from tbl_Countries
end
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllDropDownForHouse]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[usp_GetAllDropDownForHouse]
as
begin

select  * from  [tbl_PropertyType] where IsActive=1

select * from  [tbl_RentalForm] where IsActive=1

select * from  [tbl_Countries]


select  g.GeneralAmenitiesId,g.GeneralAmenitiesNameEn,g.GeneralAmenitiesNameDu,
g.GeneralAmenitiesNameFr,g.GeneralAmenitiesNameSp
, 0 as IsActive from tbl_GeneralAmenities g where g.IsActive=1

select h.OtherAmenitiesId ,h.OtherAmenitiesNameEn,h.OtherAmenitiesNameDu,h.OtherAmenitiesNameFr,h.OtherAmenitiesNameSp ,0 as IsActive from tbl_OtherAmenities h where IsActive=1


select h.SafeAmenitiesId ,h.SafeAmenitiesNameEn,h.SafeAmenitiesNameDu,h.SafeAmenitiesNameFr,h.SafeAmenitiesNameSp, 0  as IsActive from tbl_SafeAmenities h where IsActive=1





end
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllHousesByVendor]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE proc [dbo].[usp_GetAllHousesByVendor]   
@UserId int  
  
as   
  
begin  
  
  
select HouseId as id,
UserId as authorId,
availDate as [date],
PlaceName as title,
HouseCoverImage  as featuredImage,
HousePlaceImage as galleryImgslist,
Bedroom as bedrooms,
OneNightPrice  price,
stepCode

from tbl_House   where IsActive=1 and   UserId=@UserId  
  
  
  
end  

GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllPropertyType]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_GetAllPropertyType]
as
begin

select * from  [dbo].[tbl_PropertyType] where IsActive=1


end
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllVendors]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_GetAllVendors]
as
begin

  select u.UserId,u.Username,u.Firstname,u.Lastname
  ,u.Address,u.Number,u.IsActive ,v.IsApproved
  
  from tbl_User u inner join tbl_UserRole ur
  on (u.UserId=ur.UserId) inner join tbl_Role r

 
  on (r.RoleId=ur.RoleId)
  inner join tbl_Vendor v on(v.UserID=u.UserId)
  
  where r.RoleId=3 
end
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCityByCountryId]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[usp_GetCityByCountryId]
@Id int 
as
begin


select CityId,CityName,country_id  from tbl_Cities
where country_id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_getHouseByIdForVendor]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE proc [dbo].[usp_getHouseByIdForVendor]   
@HouseId int  
as  
begin  
  
  
select * from  [tbl_PropertyType]   
  
select * from  [tbl_RentalForm]   
  
select * from  [tbl_Countries]  
  
  
  
  
  
select  g.GeneralAmenitiesId,g.GeneralAmenitiesNameEn,g.GeneralAmenitiesNameDu,  
g.GeneralAmenitiesNameFr,g.GeneralAmenitiesNameSp  
, ISNULL(gh.IsActive,0) as IsActive  from  tbl_GeneralAmenities g  
  
left join [tbl_HouseGeneralAmenities]  gh on  
(g.GeneralAmenitiesId=gh.GeneralAmentiesId and gh.HouseId=@HouseId)  
  
  
  
  
  
select h.OtherAmenitiesId ,h.OtherAmenitiesNameEn,h.OtherAmenitiesNameDu,h.OtherAmenitiesNameFr,h.OtherAmenitiesNameSp , ISNULL(oh.IsActive,0) as IsActive from tbl_OtherAmenities h left join tbl_HouseOtherAmenities  
oh on (h.OtherAmenitiesId=oh.OtherAmenitiesId and oh.HouseId=@HouseId)   
  
select h.SafeAmenitiesId ,h.SafeAmenitiesNameEn,h.SafeAmenitiesNameDu,h.SafeAmenitiesNameFr,h.SafeAmenitiesNameSp ,ISNULL(oh.IsActive,0) as IsActive   from tbl_SafeAmenities h left join tbl_HouseSafeAmenities  
oh on (h.SafeAmenitiesId=oh.SafeAmenitiesId and oh.HouseId=@HouseId)   
  
  
  select Dates as HouseNotAvaiable from tbl_HouseNotAvaiable where HouseId=@HouseId and IsActive=1

  
select * from tbl_House where HouseId=@HouseId  
  
end


GO
/****** Object:  StoredProcedure [dbo].[usp_SelfVendorRegistration]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[usp_SelfVendorRegistration] 
 @Username nvarchar(100),
 @Firstname nvarchar(100),
 @LastName nvarchar(100),
 @Password nvarchar(100),
 @dateofbirth date,
 @Gender nvarchar(50),
 @Address nvarchar(max),
 @PhoneNumber nvarchar(max),
 @PostalCode nvarchar(100),
 @CityID int,
 @CountryId int,
 @CompanyName nvarchar(max),
 @CompanyDiscription nvarchar(max),
 @WebSite nvarchar(max)


 as
 begin
 
declare @ErrorMessage nvarchar(max)


declare @ErrorSeverity nvarchar(max)


declare @ErrorState  nvarchar(max)=null


Begin Try


	if not exists (select 1 from tbl_Vendor where [CompanyName]=@CompanyName)

  begin

  declare @NewID int

   if not exists (select 1 from tbl_User  where [Username]=@Username)
  begin


  insert into [dbo].[tbl_User] ([Username],[Firstname],[Lastname],[Password],[Gender],[Address],
  [DateOfBirth],[Number],[PostalCode],[CityId],[CountryId],IsActive,CreateDate,CreatedBy)

  values(@Username,@Firstname,@LastName,@Password,@Gender,@Address,
  @dateofbirth,@PhoneNumber,@PostalCode,@CityID,@CountryId,1,GETDATE(),'self')
  
  

  select @NewID=@@IDENTITY

  end
  else
  begin
  
  select @NewID=UserId from tbl_User where [Username]=@Username
  end







  insert into tbl_UserRole (UserId,RoleId,CreateDate,CreatedBy,IsActive) 
  values (@NewID,3,GETDATE(),'self',1)


insert into tbl_Vendor
(UserID,CompanyName,CompanyDescription,CompanyAddress,CompanyMail,Website,
CompanyPostalCode,CityId,CounttyId,IsApproved,CreateDate,CreatedBy,IsActive)
values
(@NewID,@CompanyName,@CompanyDiscription,@Address,@Username,@WebSite,@PostalCode,@CityID,@CountryId,0,
GETDATE(),'self',1
)



select @@IDENTITY


  end

else
 begin


  
RAISERROR(N'Company Name Already Exists', 16, @ErrorState);


  end

  end try
begin catch

SELECT 
        @ErrorMessage = ERROR_MESSAGE(), 
        @ErrorSeverity = ERROR_SEVERITY(), 
        @ErrorState  = ERROR_STATE();

    -- return the error inside the CATCH block
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);

end catch


end
GO
/****** Object:  StoredProcedure [dbo].[usp_ValidateLogin]    Script Date: 12/19/2021 12:49:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[usp_ValidateLogin] --'superadmin@gmail.com','123'
 @Username nvarchar(100),
 @UserPassword nvarchar(100)
 as
 begin
 
declare @ErrorMessage nvarchar(max)


declare @ErrorSeverity nvarchar(max)


declare @ErrorState  nvarchar(max)=null


Begin Try


	if exists (
  select 1 from [tbl_User] u inner join tbl_UserRole ur on (u.UserId=ur.UserId)
  inner join tbl_Role r on (ur.RoleId=r.RoleId)
  where   u.Username=@Username and u.Password=@UserPassword and  u.IsActive=1 and ur.IsActive=1 and r.IsActive=1 )

  begin


  declare @RoleId int

    select @RoleId=r.RoleId from [tbl_User] u inner join tbl_UserRole ur on (u.UserId=ur.UserId)
  inner join tbl_Role r on (ur.RoleId=r.RoleId)
  where   u.Username=@Username and u.Password=@UserPassword and  u.IsActive=1 and ur.IsActive=1 and r.IsActive=1



  select u.*,r.RoleName from [tbl_User] u inner join tbl_UserRole ur on (u.UserId=ur.UserId)
  inner join tbl_Role r on (ur.RoleId=r.RoleId)
  where   u.Username=@Username and u.Password=@UserPassword and u.IsActive=1 and ur.IsActive=1 and r.IsActive=1

  

  select m.ModuleId,m.ModuleName,mp.IsActive
  
  
  from tbl_Module m  inner join tbl_ModulePermission mp 
  on(m.ModuleId=mp.ModuleId)  

  where mp.RoleId=@RoleId and m.IsActive=1 and mp.IsActive=1


  select p.PageId,p.PageName,pp.IsActive from tbl_Pages p inner join tbl_PagePermission pp on (p.PageId=pp.PageId)
  where pp.RoleId=@RoleId and p.IsActive=1 and pp.IsActive=1


  select pa.PageActionId,pa.PageActionName,p.PageName,p.PageId,pap.IsActive  from tbl_Pages p inner join tbl_PagesAction pa on (p.PageId=pa.PageId)
  inner join tbl_PageActionPermission pap
  on (pa.PageActionId=pap.PageActionId) where pap.RoleId=@RoleId and pa.IsActive=1 and pap.IsActive=1




  end

else
 begin


  
RAISERROR(N'Invalid Email and Password', 16, @ErrorState);


  end

  end try
begin catch

SELECT 
        @ErrorMessage = ERROR_MESSAGE(), 
        @ErrorSeverity = ERROR_SEVERITY(), 
        @ErrorState  = ERROR_STATE();

    -- return the error inside the CATCH block
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);

end catch


end
GO
