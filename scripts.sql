USE [restaurants]
GO
/****** Object:  Table [dbo].[cuisines]    Script Date: 6/8/2017 5:36:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuisines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NULL,
	[description] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[restaurants]    Script Date: 6/8/2017 5:36:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL,
	[location] [varchar](50) NULL,
	[cuisine_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reviews]    Script Date: 6/8/2017 5:36:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[score] [int] NULL,
	[comment] [varchar](255) NULL,
	[restaurant_id] [int] NULL
) ON [PRIMARY]

GO
INSERT INTO cuisines (type, description) OUTPUT INSERTED.id VALUES ('Mexican', 'yummy');
INSERT INTO restaurants (name, location, cuisine_id) OUTPUT INSERTED.id VALUES ('Chimmy Chongs', 'Portland', 1);
INSERT INTO reviews (username, score, comment, restaurant_id) OUTPUT INSERTED.id VALUES ('Chimmy', 5, 'The chimmies are very good.', 1);
GO