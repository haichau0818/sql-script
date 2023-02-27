create database ecommerce_app

go

use ecommerce_app

create table users(
	id int identity(1,1) primary key,
	fullName nvarchar(100),
	passwords nvarchar(30),
	sex bit,
	email nchar(30),
	phone nchar(20),
	addresses nvarchar(100),
	img varbinary(max),
	dateOfBirth datetime,
	id_groupUser int,
)

go
create table group_user(
	id int identity(1,1) primary key,
	nameGroupUser nvarchar(50),
	uses bit
)
go

create table goods(
	id int identity(1,1) primary key,
	names nvarchar(100),
	unitPrice decimal(18,2),
	cost decimal(18,2),
	id_manufacturer int,
	id_supplier int,
	id_producer int,
	code nvarchar(50),
	expDate datetime,
	dateAdds datetime,
	note nvarchar(500),
	id_category int,
	imgUrl nvarchar(100)
)
go
create table category(
	id int identity(1,1) primary key,
	names nvarchar(100),
	uses bit,
	note nvarchar(500)
)
go
create table cart(
	id int identity(1,1) primary key,
	id_goods int,
	id_user int,
	quantity int,
	total decimal(18,2),
	discount decimal(18,2),
	pay decimal(18,2),
	id_voucher int
)
go
create table orders(
	id int identity(1,1) primary key,
	id_goods nvarchar(100),
	nub_Bill int,
	invoice_symbol nvarchar(30),
	id_user int,
	id_ship int,
	tax nvarchar(100),
	total_tax decimal(18,2),
	total decimal(18,2),
	total_purchase decimal(18,2),
	id_agency int,
)
go
create table ship(
	id int identity(1,1) primary key,
	deliveryDate datetime,
	dateReceipt datetime,
	createDate datetime,
	id_order int
)
go
create table voucher(
	id int identity(1,1) primary key,
	names nvarchar(100),
	quantityApplied int,
	note nvarchar(500),
	fromDate datetime,
	toDate datetime,
	uses bit
)

create table supplier(
	id int identity(1,1) primary key,
	names nvarchar(100),
	cooperate datetime,
	uses bit,
	addresses nvarchar(100),
	phone nchar(20),
	id_contract int

)
go

create table producer(
	id int identity(1,1) primary key,
	names nvarchar(100),
	cooperate datetime,
	uses bit,
	addresses nvarchar(100),
	phone nchar(20),
	id_contract int

)
go

create table manufacturer(
	id int identity(1,1) primary key,
	names nvarchar(100),
	cooperate datetime,
	uses bit,
	addresses nvarchar(100),
	phone nchar(20),
	id_contract int

)
go
create table contracts(
	id int identity(1,1) primary key,
	nameContract nvarchar(100),
	datetimes datetime,
	content nvarchar(max),
	signatures nvarchar(100)
)
go
create table agency(
	id int identity(1,1) primary key,
	names nvarchar(100),
	addresses nvarchar(100),
	dateEstablish datetime,
)
go
create table wareHouse(
	id int identity(1,1) primary key,
	names nvarchar(100),
	addresses nvarchar(100),
	id_goods int,
	inventoryNumber int,
	dateAdds datetime,
	exportDate datetime,
	quantityExport int
)


-- -------------------------------------------------------27/02/2023------------------------------------------------
-- Analysis of import and export requirements wareHouse
-- purchase history

