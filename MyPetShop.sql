USE master;
GO
CREATE DATABASE MyPetShop
ON
(NAME = MyPetShop,
FILENAME = 'D:\ExptIIS\Experiment\Ex7LinqSqlSite\App_Data\MyPetShop.mdf',
SIZE = 5MB,
MAXSIZE = 50MB,
FILEGROWTH = 1MB)
LOG ON
(NAME = MyPetShop_log,
FILENAME = 'D:\ExptIIS\Experiment\Ex7LinqSqlSite\App_Data\MyPetShop_log.ldf',
SIZE = 3MB,
MAXSIZE = 25MB,
FILEGROWTH = 1MB)
COLLATE Chinese_PRC_CS_AS;
GO
USE MyPetShop
CREATE TABLE [Category] ([CategoryId] int identity PRIMARY KEY,
[Name] nvarchar(80) NULL,[Descn] nvarchar(255) NULL)
CREATE TABLE [Customer] ([CustomerId] int identity PRIMARY KEY,
[Name] [nvarchar](80) NOT NULL,[Password] [nvarchar](80) NOT NULL,
[Email] [nvarchar](80) NOT NULL)
CREATE TABLE [Order] ([OrderId] int identity PRIMARY KEY,
[CustomerId] int NOT NULL REFERENCES [Customer]([CustomerId]),
[UserName] nvarchar(80) NOT NULL,[OrderDate] datetime NOT NULL,
[Addr1] nvarchar(80) NULL,[Addr2] nvarchar(80) NULL,
[City] nvarchar(80) NULL,[State] nvarchar(80) NULL,
[Zip] nvarchar(6) NULL,[Phone] nvarchar(40) NULL,
[Status] nvarchar(10) NULL)
CREATE TABLE [OrderItem] ([ItemId] int identity PRIMARY KEY,
[OrderId] int NOT NULL REFERENCES[Order]([OrderId]),
[ProName] nvarchar(80),[ListPrice] decimal(10,2) NULL,
[Qty] int NOT NULL,[TotalPrice] decimal(10,2) NULL)
CREATE TABLE [Supplier]([SuppId] int identity PRIMARY KEY,
[Name] nvarchar(80) NULL,[Addr1] nvarchar(80) NULL,
[Addr2] nvarchar(80) NULL,[City] nvarchar(80) NULL,
[State] nvarchar(80) NULL,[Zip] nvarchar(6) NULL,
[Phone] nvarchar(40) NULL)
CREATE TABLE[Product]([ProductId] int identity PRIMARY KEY,
[CategoryId] int not null references [Category]([CategoryId]),
[ListPrice] decimal(10,2) null,[UnitCost] decimal(10,2) null,
[SuppId] int null references [Supplier]([SuppId]),
[Name] nvarchar(80) null,[Descn] nvarchar(255) Null,
[Image] nvarchar(80) null,[Qty] int not null)
CREATE TABLE[CartItem]([CartItemId] int identity PRIMARY KEY,
[CustomerId] int not null references[Customer]([CustomerId]),
[ProId] int not null references[Product]([ProductId]),
[ProName] [nvarchar](80) not null,[ListPrice] [decimal](10,2) not null,
[Qty] [int] not null)
INSERT INTO [Category] VALUES ('Fish','Fish')
INSERT INTO [Category] VALUES ('Bugs','Bugs')
INSERT INTO [Category] VALUES ('Backyard','Backyard')
INSERT INTO [Category] VALUES ('Birds','Birds')
INSERT INTO [Category] VALUES ('Endangered','Endangered')
INSERT [Customer]([Name],[Password],[Email]) VALUES ('admin','123','admin@qq.com')
INSERT [Customer]([Name],[Password],[Email]) VALUES ('jack','123','jack@qq.com')
INSERT INTO [Supplier] VALUES ('XYZ Pets','600 Avon Way','','Los Angeles','CA','94024','212-947-0797')
INSERT INTO [Supplier] VALUES ('ABC Pets','700 Abalone Way','','San Francisco','CA','94024','415-947-0797')
INSERT INTO [Product] VALUES (1,12.1,11.4,1,'Meno','Meno','~/Prod_Images/Fish/meno.gif',100)
INSERT INTO [Product] VALUES (1,28.5,25.5,1,'Eucalyptus','Eucalyptus','~/Prod_Images/Fish/eucalyptus.gif',100)
INSERT INTO [Product] VALUES (2,23.4,11.4,1,'Ant','Ant','~/Prod_Images/Bugs/ant.gif',100)
INSERT INTO [Product] VALUES (2,24.7,22.2,1,'Butterfly','Butterfly','~/Prod_Images/Bugs/butterfly.gif',100)
INSERT INTO [Product] VALUES (3,38.5,37.2,1,'Cat','Cat','~/Prod_Images/Backyard/cat.gif',100)
INSERT INTO [Product] VALUES (3,40.4,38.7,1,'Zebra','Zebra','~/Prod_Images/Backyard/zebra.gif',100)
INSERT INTO [Product] VALUES (4,45.5,44.2,1,'Domestic','Domestic','~/Prod_Images/Birds/domestic.gif',100)
INSERT INTO [Product] VALUES (4,25.2,23.5,1,'Flowerloving','Flowerloving','~/Prod_Images/Birds/flowerloving.gif',100)
INSERT INTO [Product] VALUES (5,47.7,45.5,1,'Pande','Pande','~/Prod_Images/Endangered/pande.gif',100)
INSERT INTO [Product] VALUES (5,35.5,33.5,1,'Pointy','Pointy','~/Prod_Images/Endangered/pointy.gif',100)