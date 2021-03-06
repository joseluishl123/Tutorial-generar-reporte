USE [master]
GO
/****** Object:  Database [JosephTutos_Pedidos]    Script Date: 8/09/2020 5:20:31 p. m. ******/
CREATE DATABASE [JosephTutos_Pedidos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JosephTutos_Pedidos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JosephTutos_Pedidos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JosephTutos_Pedidos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JosephTutos_Pedidos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JosephTutos_Pedidos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JosephTutos_Pedidos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JosephTutos_Pedidos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET ARITHABORT OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET  MULTI_USER 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JosephTutos_Pedidos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JosephTutos_Pedidos] SET QUERY_STORE = OFF
GO
USE [JosephTutos_Pedidos]
GO
/****** Object:  User [jose]    Script Date: 8/09/2020 5:20:31 p. m. ******/
CREATE USER [jose] FOR LOGIN [jose] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [jose]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [jose]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [jose]
GO
ALTER ROLE [db_datareader] ADD MEMBER [jose]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [jose]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [jose]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [jose]
GO
/****** Object:  Table [dbo].[bancos]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bancos](
	[ban_id] [int] NOT NULL,
	[ban_descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_bancos] PRIMARY KEY CLUSTERED 
(
	[ban_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[cant_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_descripcion] [nvarchar](50) NULL,
	[cat_idestado] [nchar](10) NULL,
	[cat_foto] [nvarchar](max) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[cant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[clie_id] [int] IDENTITY(1,1) NOT NULL,
	[clie_idtipoidentificacion] [nvarchar](50) NULL,
	[clie_identificacion] [nvarchar](10) NULL,
	[clie_nombre] [nvarchar](50) NULL,
	[clie_apellidos] [nvarchar](50) NULL,
	[clie_direccion] [nvarchar](50) NULL,
	[clie_idsexo] [nvarchar](50) NULL,
	[clie_telefono] [nvarchar](50) NULL,
	[clie_barrio] [nvarchar](50) NULL,
	[clie_longitud] [nvarchar](50) NULL,
	[clie_latitud] [nvarchar](50) NULL,
	[clie_altura] [nvarchar](50) NULL,
	[clie_clave] [nvarchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[clie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuentascliente]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentascliente](
	[misc_id] [int] NOT NULL,
	[misc_idcliente] [int] NULL,
	[misc_idbanco] [int] NULL,
	[misc_idtipocuenta] [int] NULL,
 CONSTRAINT [PK_cuentascliente] PRIMARY KEY CLUSTERED 
(
	[misc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalletiendacategoria]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalletiendacategoria](
	[canttien_idtienda] [int] NOT NULL,
	[canttien_idcategoria] [int] NOT NULL,
 CONSTRAINT [PK_detalletiendacategoria] PRIMARY KEY CLUSTERED 
(
	[canttien_idtienda] ASC,
	[canttien_idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estadoorden]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estadoorden](
	[esor_id] [int] IDENTITY(1,1) NOT NULL,
	[esor_id_descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_estadoorden] PRIMARY KEY CLUSTERED 
(
	[esor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mediopago]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mediopago](
	[Mep_id] [int] IDENTITY(1,1) NOT NULL,
	[mep_descripcion] [nvarchar](50) NULL,
	[mep_detalle] [nvarchar](max) NULL,
	[mep_foto] [nvarchar](max) NULL,
 CONSTRAINT [PK_mediopago] PRIMARY KEY CLUSTERED 
(
	[Mep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordendetalle]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordendetalle](
	[detord_id] [int] IDENTITY(1,1) NOT NULL,
	[detord_idproducto] [int] NULL,
	[detord_ordennumero] [int] NULL,
	[detord_precio] [nvarchar](50) NULL,
	[detord_cantidad] [nvarchar](50) NULL,
	[detord_descuento] [nvarchar](50) NULL,
	[detord_total] [nvarchar](50) NULL,
	[detord_tamano] [nvarchar](50) NULL,
	[detord_color] [nvarchar](50) NULL,
	[detord_fechaenvio] [nvarchar](50) NULL,
 CONSTRAINT [PK_ordendetalle] PRIMARY KEY CLUSTERED 
(
	[detord_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenes]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordenes](
	[ord_id] [int] IDENTITY(1,1) NOT NULL,
	[ord_numero] [nvarchar](50) NULL,
	[ord_idcliente] [int] NULL,
	[ord_idtienda] [int] NULL,
	[ord_direccion] [nvarchar](50) NULL,
	[ord_fecha] [nvarchar](50) NULL,
	[ord_latitud] [nvarchar](50) NULL,
	[ord_longitud] [nvarchar](50) NULL,
	[ord_altura] [nvarchar](50) NULL,
	[ord_fechaenvio] [nvarchar](50) NULL,
	[ord_idestado] [int] NULL,
	[ord_totalcompra] [float] NULL,
	[ord_descripcion] [nvarchar](50) NULL,
	[ord_idformapago] [int] NULL,
	[ord_telefono] [nvarchar](50) NULL,
	[ord_pagacon] [nvarchar](50) NULL,
 CONSTRAINT [PK_ordenes] PRIMARY KEY CLUSTERED 
(
	[ord_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[prod_id] [int] IDENTITY(1,1) NOT NULL,
	[prod_codigo] [nvarchar](50) NULL,
	[prod_nombre] [nvarchar](50) NULL,
	[prod_descripcion] [nvarchar](50) NULL,
	[prod_precioanterior] [float] NULL,
	[prod_preciounitario] [float] NULL,
	[prod_idcategoria] [int] NULL,
	[prod_foto] [nvarchar](max) NULL,
	[prod_color] [nvarchar](50) NULL,
	[prod_ranking] [nvarchar](50) NULL,
	[prod_stockmin] [int] NULL,
	[prod_stok] [int] NULL,
	[prod_stokmax] [int] NULL,
	[prod_calificacion] [float] NULL,
	[prod_fecha] [nvarchar](50) NULL,
	[prod_countventas] [nvarchar](50) NULL,
	[prod_favorito] [bit] NULL,
	[prod_descuento] [float] NULL,
	[prod_idtienda] [int] NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publicidad]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publicidad](
	[pub_codigo] [int] NOT NULL,
	[pub_idproducto] [int] NULL,
	[pub_idtienda] [int] NULL,
	[pub_descuento] [nvarchar](50) NULL,
	[pub_descripcion] [nvarchar](50) NULL,
	[pub_activa] [nvarchar](50) NULL,
	[pub_fecha] [nvarchar](50) NULL,
	[pub_fechacaducidad] [nvarchar](50) NULL,
	[pub_foto] [nvarchar](200) NULL,
 CONSTRAINT [PK_publicidad] PRIMARY KEY CLUSTERED 
(
	[pub_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subcategoria]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcategoria](
	[subcat_id] [int] NOT NULL,
	[subcat_descripcion] [nvarchar](50) NULL,
	[subcat_foto] [nvarchar](max) NULL,
	[subcat_idcategoria] [int] NULL,
 CONSTRAINT [PK_subcategoria] PRIMARY KEY CLUSTERED 
(
	[subcat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tienda]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tienda](
	[tien_id] [int] IDENTITY(1,1) NOT NULL,
	[tien_nit] [nvarchar](50) NULL,
	[tien_clave] [nvarchar](50) NULL,
	[tien_tipoidentificacion] [nvarchar](50) NULL,
	[tien_razonsocial] [nvarchar](200) NULL,
	[tien_direccion] [nvarchar](50) NULL,
	[tien_barrio] [nvarchar](50) NULL,
	[tien_telefono] [nvarchar](50) NULL,
	[tien_correo] [nvarchar](50) NULL,
	[tien_latitud] [nvarchar](50) NULL,
	[tien_longitud] [nvarchar](50) NULL,
	[tien_altura] [nvarchar](50) NULL,
	[tien_facebook] [nvarchar](100) NULL,
	[tien_instagram] [nvarchar](100) NULL,
	[tien_whatsapp] [nvarchar](100) NULL,
	[tien_twitter] [nvarchar](100) NULL,
	[tien_youtube] [nvarchar](100) NULL,
	[tien_foto] [nvarchar](max) NULL,
	[tien_premium] [bit] NULL,
	[tien_key] [nvarchar](50) NULL,
	[tien_privatekey] [nvarchar](50) NULL,
	[tien_pkey] [nvarchar](50) NULL,
	[tien_idcliente] [nvarchar](50) NULL,
 CONSTRAINT [PK_tienda] PRIMARY KEY CLUSTERED 
(
	[tien_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipocuenta]    Script Date: 8/09/2020 5:20:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipocuenta](
	[tipcu_id] [int] NOT NULL,
	[tipcu_descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_tipocuenta] PRIMARY KEY CLUSTERED 
(
	[tipcu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([cant_id], [cat_descripcion], [cat_idestado], [cat_foto]) VALUES (1, N'Licores', NULL, N'https://vinosamerica.com/wp-content/uploads/2018/11/slide-03-botellas.png')
INSERT [dbo].[categoria] ([cant_id], [cat_descripcion], [cat_idestado], [cat_foto]) VALUES (2, N'Hogar', NULL, N'https://images.vexels.com/media/users/3/137223/isolated/preview/e63605f096ca38f0088aa9040d9ae6ab-edificio-de-casa-de-ciudad-ilustrado-by-vexels.png')
INSERT [dbo].[categoria] ([cant_id], [cat_descripcion], [cat_idestado], [cat_foto]) VALUES (3, N'Drogueria', NULL, N'https://www.directoriomedicodecasanare.com/wp-content/themes/Directory/images/tmp/1479226604_1.png')
INSERT [dbo].[categoria] ([cant_id], [cat_descripcion], [cat_idestado], [cat_foto]) VALUES (4, N'Frutas y Verduras', NULL, N'https://www.smurfitkappa.com/es/-/media/images/smurfit-kappa-digital-marketing-platform/shared/page-hero-610-x-350/fresh-produce.png')
INSERT [dbo].[categoria] ([cant_id], [cat_descripcion], [cat_idestado], [cat_foto]) VALUES (5, N'Lacteos y Huevos', NULL, N'https://www.pngkey.com/png/full/296-2961019_lcteos-y-huevos-leche-y-productos-lacteos-png.png')
INSERT [dbo].[categoria] ([cant_id], [cat_descripcion], [cat_idestado], [cat_foto]) VALUES (6, N'Pollo, Carne y Pescado', NULL, N'https://goloso.com.co/wp-content/uploads/2017/03/pre_order1.png')
SET IDENTITY_INSERT [dbo].[categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([clie_id], [clie_idtipoidentificacion], [clie_identificacion], [clie_nombre], [clie_apellidos], [clie_direccion], [clie_idsexo], [clie_telefono], [clie_barrio], [clie_longitud], [clie_latitud], [clie_altura], [clie_clave]) VALUES (0, NULL, N'cvb', N'ggh', N'gvv', N'gg', NULL, N'hh', NULL, N'-76,6400721', N'5,6882046', NULL, N'ghh')
INSERT [dbo].[cliente] ([clie_id], [clie_idtipoidentificacion], [clie_identificacion], [clie_nombre], [clie_apellidos], [clie_direccion], [clie_idsexo], [clie_telefono], [clie_barrio], [clie_longitud], [clie_latitud], [clie_altura], [clie_clave]) VALUES (1, N'1', N'1', N'Jose Luis', N'Hinestroza Lopez', N'sadfasdfsdf', NULL, N'312000', NULL, NULL, NULL, NULL, N'1')
INSERT [dbo].[cliente] ([clie_id], [clie_idtipoidentificacion], [clie_identificacion], [clie_nombre], [clie_apellidos], [clie_direccion], [clie_idsexo], [clie_telefono], [clie_barrio], [clie_longitud], [clie_latitud], [clie_altura], [clie_clave]) VALUES (2, N'2', N'2', N'Cristian', N'Hinestroza Lopez', N'hjhgdaf', NULL, N'315589', NULL, NULL, NULL, NULL, N'2')
INSERT [dbo].[cliente] ([clie_id], [clie_idtipoidentificacion], [clie_identificacion], [clie_nombre], [clie_apellidos], [clie_direccion], [clie_idsexo], [clie_telefono], [clie_barrio], [clie_longitud], [clie_latitud], [clie_altura], [clie_clave]) VALUES (3, NULL, N'2222', N'ghj', N'vnnn', N'xgh', NULL, N'fhhh', NULL, N'-76,6400963', N'5,6882001', NULL, N'e')
INSERT [dbo].[cliente] ([clie_id], [clie_idtipoidentificacion], [clie_identificacion], [clie_nombre], [clie_apellidos], [clie_direccion], [clie_idsexo], [clie_telefono], [clie_barrio], [clie_longitud], [clie_latitud], [clie_altura], [clie_clave]) VALUES (4, NULL, N'123', N'fgg', N'cvv', N'ch', NULL, N'122', NULL, N'-76,6400958', N'5,6882011', NULL, N'e')
INSERT [dbo].[cliente] ([clie_id], [clie_idtipoidentificacion], [clie_identificacion], [clie_nombre], [clie_apellidos], [clie_direccion], [clie_idsexo], [clie_telefono], [clie_barrio], [clie_longitud], [clie_latitud], [clie_altura], [clie_clave]) VALUES (5, N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string')
INSERT [dbo].[cliente] ([clie_id], [clie_idtipoidentificacion], [clie_identificacion], [clie_nombre], [clie_apellidos], [clie_direccion], [clie_idsexo], [clie_telefono], [clie_barrio], [clie_longitud], [clie_latitud], [clie_altura], [clie_clave]) VALUES (6, N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string')
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
INSERT [dbo].[detalletiendacategoria] ([canttien_idtienda], [canttien_idcategoria]) VALUES (1, 1)
INSERT [dbo].[detalletiendacategoria] ([canttien_idtienda], [canttien_idcategoria]) VALUES (1, 2)
GO
SET IDENTITY_INSERT [dbo].[estadoorden] ON 

INSERT [dbo].[estadoorden] ([esor_id], [esor_id_descripcion]) VALUES (1, N'Despachado')
INSERT [dbo].[estadoorden] ([esor_id], [esor_id_descripcion]) VALUES (2, N'Pendiente')
INSERT [dbo].[estadoorden] ([esor_id], [esor_id_descripcion]) VALUES (3, N'Cancelado')
SET IDENTITY_INSERT [dbo].[estadoorden] OFF
GO
SET IDENTITY_INSERT [dbo].[mediopago] ON 

INSERT [dbo].[mediopago] ([Mep_id], [mep_descripcion], [mep_detalle], [mep_foto]) VALUES (1, N'Pago en Efectivo', NULL, NULL)
INSERT [dbo].[mediopago] ([Mep_id], [mep_descripcion], [mep_detalle], [mep_foto]) VALUES (2, N'Pago en Linea', NULL, NULL)
SET IDENTITY_INSERT [dbo].[mediopago] OFF
GO
SET IDENTITY_INSERT [dbo].[ordenes] ON 

INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1024, N'1168', 1, 1, N'Carrera 25 número 2-6', N'2020-08-08T23:43:26.707036-05:00', N'5.688206', N'-76.6400716', NULL, N'2020-08-08T23:43:26.707185-05:00', 2, 138000, N'Llevar lo mas pronto posible. Muchas gracias ', 1, N'3123042887', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1025, N'1198', 1, 1, NULL, N'2020-08-09T00:11:52.85507-05:00', N'5.6882046', N'-76.6400721', NULL, N'2020-08-09T00:11:52.855455-05:00', 3, 72000, NULL, 1, N'3122004147', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1026, N'3467', 1, 1, NULL, N'2020-08-10T09:16:18.867097-05:00', N'5.6882047', N'-76.6400719', NULL, N'2020-08-10T09:16:18.867126-05:00', 2, 6000, NULL, 1, N'3122004147', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1027, N'1389', 1, 1, NULL, N'2020-08-17T20:58:55.370056-05:00', N'5.6882001', N'-76.6400962', NULL, N'2020-08-17T20:58:55.370364-05:00', 2, 60000, NULL, 1, N'3122004147', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1028, N'2170', 1, 1, NULL, N'2020-08-18T10:53:51.026465-05:00', N'5.6882003', N'-76.640096', NULL, N'2020-08-18T10:53:51.027159-05:00', 2, 12000, NULL, 1, N'3122004147', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1029, N'4361', 1, 2, NULL, N'2020-08-18T10:56:49.229307-05:00', N'5.6882009', N'-76.6400959', NULL, N'2020-08-18T10:56:49.229459-05:00', 2, 30000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1030, N'2376', 1, 2, NULL, N'2020-08-18T10:58:11.92726-05:00', N'5.6882001', N'-76.6400963', NULL, N'2020-08-18T10:58:11.927316-05:00', 2, 30000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1031, N'1856', 1, 2, NULL, N'2020-08-18T10:59:49.361782-05:00', N'5.6882001', N'-76.6400965', NULL, N'2020-08-18T10:59:49.361815-05:00', 2, 30000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1032, N'2281', 1, 2, NULL, N'2020-08-18T11:01:25.287666-05:00', N'5.6882009', N'-76.6400959', NULL, N'2020-08-18T11:01:25.287729-05:00', 2, 30000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1033, N'3260', 1, 2, NULL, N'2020-08-18T11:06:00.248807-05:00', N'5.6882001', N'-76.6400963', NULL, N'2020-08-18T11:06:00.248906-05:00', 2, 30000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1034, N'4081', 1, 1, NULL, N'2020-08-18T11:07:48.068489-05:00', N'5.6882001', N'-76.6400963', NULL, N'2020-08-18T11:07:48.068522-05:00', 2, 96000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1035, N'1759', 1, 1, NULL, N'2020-08-18T11:10:41.966772-05:00', N'5.6882003', N'-76.640096', NULL, N'2020-08-18T11:10:41.967048-05:00', 2, 132000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1036, N'1556', 1, 1, NULL, N'2020-08-18T11:15:40.748623-05:00', N'5.6882002', N'-76.6400963', NULL, N'2020-08-18T11:15:40.748764-05:00', 2, 48000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1037, N'3293', 1, 1, NULL, N'2020-08-18T11:17:30.004483-05:00', N'5.6882001', N'-76.6400962', NULL, N'2020-08-18T11:17:30.004582-05:00', 2, 60000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1038, N'2258', 1, 2, NULL, N'2020-08-18T11:21:16.233047-05:00', N'5.6882003', N'-76.6400959', NULL, N'2020-08-18T11:21:16.233119-05:00', 2, 30000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1039, N'3068', 1, 1, NULL, N'2020-08-18T11:57:47.80865-05:00', N'5.6882001', N'-76.6400963', NULL, N'2020-08-18T11:57:47.8087-05:00', 2, 72000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1040, N'1053', 1, 2, NULL, N'2020-08-18T11:59:08.509402-05:00', N'5.6882001', N'-76.6400963', NULL, N'2020-08-18T11:59:08.509445-05:00', 2, 60000, NULL, 1, N'3122004147 ', NULL)
INSERT [dbo].[ordenes] ([ord_id], [ord_numero], [ord_idcliente], [ord_idtienda], [ord_direccion], [ord_fecha], [ord_latitud], [ord_longitud], [ord_altura], [ord_fechaenvio], [ord_idestado], [ord_totalcompra], [ord_descripcion], [ord_idformapago], [ord_telefono], [ord_pagacon]) VALUES (1041, N'4883', 1, 1, NULL, N'2020-08-18T11:59:33.882204-05:00', N'5.6882017', N'-76.6400957', NULL, N'2020-08-18T11:59:33.882282-05:00', 2, 21000, NULL, 1, N'3122004147 ', NULL)
SET IDENTITY_INSERT [dbo].[ordenes] OFF
GO
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (1, N'0008', N'Leche Alquería larga vida 900 ml x 6', N'Nada', 15000, 12000, NULL, N'https://www.ranchera.com.co/sites/default/files/producto/colita-de-cuadril.png', N'Red', N'5', 50, 500, 80000, 5, NULL, N'400', 1, 1000, 1)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (2, N'0009', N'Clorox 1 L fragancia original	', N'Nada', 5000, 3000, NULL, N'https://supertiendascomunal.com/6936-large_default/colombina-de-pollo-kilo.jpg', N'Black', N'10', 50, 600, 80000, 4, NULL, N'600', 1, 0, 1)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (3, N'0010', N'Jabón líquido para manos Fiamme 	', N'Nada', 12000, 10000, NULL, N'https://carneslossauces.com/wp-content/uploads/carne-fina-res-porcionada.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (4, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://3.bp.blogspot.com/-KCWDMSua1f4/U5-YEvbMhkI/AAAAAAAADDY/_sS65jSlwYA/s1600/huevos.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (5, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://www.alival.com.co/wp-content/uploads/2018/08/ENTERA_900_BOLSA-2.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (6, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://justoybueno.com/wp-content/uploads/2020/01/Avena-UHT.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (7, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://cdn.shopify.com/s/files/1/0399/3849/0529/products/Delistto-Productos-V2-Coliflor_1200x1200.png?v=1594322926', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (8, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://mahatmarice.com/wp-content/uploads/2019/10/Mahatma_Jasmine-Brown_Long-Grain_Thai-Fragrant_Whole-Grain-Rice_2lb_512px.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (9, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://www.sundaririce.com/wp-content/uploads/2019/01/basmati_new_nosombra.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (10, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://www.organizacionsolarte.com.co/cms/sites/default/files/empaqueplumas.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (11, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://4.bp.blogspot.com/-uczdagO2YF0/WaB-JLGLKDI/AAAAAAAAAHI/ZvAW-aWteP8y165o66_XDI3FzufYEewJQCLcBGAs/w1200-h630-p-k-no-nu/Camarones.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (12, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://images.squarespace-cdn.com/content/v1/592b65a19f7456f07724a4fd/1536081439915-UZA1CMFARE8U3LFM5M3U/ke17ZwdGBToddI8pDm48kMIebV6MdNPQMcRDrC5oPxMUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKctvtKxvFKvzGJ1i3etrw6jWr5XLgW84HmgctGrHIIy7VqiFIry_j_CAPMtj0TsXq-/atun-blanco.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (13, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://www.taeq.com.co/sites/default/files/2018-07/atun.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (14, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://estiloperuano.com/wp-content/uploads/2020/05/Atun-REAL.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (15, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://i.pinimg.com/originals/c7/22/5f/c7225f70c54c30a938444c2f670d6b9e.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (16, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://m.lopido.com/images/productos/sii/F/300x300/salchicha_frankfurt_zenu-45268.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (17, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://comisariatopopular.com/wp-content/uploads/2020/06/mr-frtz-salchicha-ranchera-hot-dog-300x300.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (18, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://www.zenu.com.co/wp-content/uploads/2019/07/salchicha-viena-tradicional-zenu.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
INSERT [dbo].[producto] ([prod_id], [prod_codigo], [prod_nombre], [prod_descripcion], [prod_precioanterior], [prod_preciounitario], [prod_idcategoria], [prod_foto], [prod_color], [prod_ranking], [prod_stockmin], [prod_stok], [prod_stokmax], [prod_calificacion], [prod_fecha], [prod_countventas], [prod_favorito], [prod_descuento], [prod_idtienda]) VALUES (19, N'0010', N'Jabón líquido para manos Fiamme  ', N'Nada', 12000, 10000, NULL, N'https://www.santiagopetstore.cl/tienda/image/cache/catalog/instinct%20atun-350x350.png', N'Red', N'20', 100, 400, 80000, 6, NULL, N'800', 0, 0, 2)
SET IDENTITY_INSERT [dbo].[producto] OFF
GO
INSERT [dbo].[subcategoria] ([subcat_id], [subcat_descripcion], [subcat_foto], [subcat_idcategoria]) VALUES (1, N'Wisky', NULL, 1)
INSERT [dbo].[subcategoria] ([subcat_id], [subcat_descripcion], [subcat_foto], [subcat_idcategoria]) VALUES (2, N'Tequila', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tienda] ON 

INSERT [dbo].[tienda] ([tien_id], [tien_nit], [tien_clave], [tien_tipoidentificacion], [tien_razonsocial], [tien_direccion], [tien_barrio], [tien_telefono], [tien_correo], [tien_latitud], [tien_longitud], [tien_altura], [tien_facebook], [tien_instagram], [tien_whatsapp], [tien_twitter], [tien_youtube], [tien_foto], [tien_premium], [tien_key], [tien_privatekey], [tien_pkey], [tien_idcliente]) VALUES (1, N'121212', N'123', N'1', N'Cosmeticos Nohemy Arboleda Quibdó
', N'Cra. 6 #30-67, Quibdó, Chocó', N'1', N'3107221721', NULL, N'5.7104023', N'-76.6521272', N'44 metros', NULL, NULL, NULL, NULL, NULL, N'https://www.camarachoco.org.co/sites/default/files/whatsapp_image_2020-04-16_at_12.50.17_pm.jpeg', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tienda] ([tien_id], [tien_nit], [tien_clave], [tien_tipoidentificacion], [tien_razonsocial], [tien_direccion], [tien_barrio], [tien_telefono], [tien_correo], [tien_latitud], [tien_longitud], [tien_altura], [tien_facebook], [tien_instagram], [tien_whatsapp], [tien_twitter], [tien_youtube], [tien_foto], [tien_premium], [tien_key], [tien_privatekey], [tien_pkey], [tien_idcliente]) VALUES (2, N'131313', N'12', N'1', N'administradora de negocios e inversiones HORIZONTE
', N'Cra. 8 ##29-73, Quibdó, Chocó', N'2', N'317 3710145', NULL, N'5.6875629', N'-76.6581297', N'44 metros', NULL, NULL, NULL, NULL, NULL, N'https://static.iris.net.co/semana/upload/images/2019/7/5/622013_1.jpg', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tienda] ([tien_id], [tien_nit], [tien_clave], [tien_tipoidentificacion], [tien_razonsocial], [tien_direccion], [tien_barrio], [tien_telefono], [tien_correo], [tien_latitud], [tien_longitud], [tien_altura], [tien_facebook], [tien_instagram], [tien_whatsapp], [tien_twitter], [tien_youtube], [tien_foto], [tien_premium], [tien_key], [tien_privatekey], [tien_pkey], [tien_idcliente]) VALUES (3, N'141414', N'1', N'1', N'Confimax', N'a 7-111, Cl. 26 #7-1, Quibdó, Chocó', N'3', NULL, NULL, N'5.69472', N'-76.66111', N'44 metros', NULL, NULL, NULL, NULL, NULL, N'https://id.presidencia.gov.co/Galeria_Fotografica/200727-empresas-manufactura-autorizacion-reiniciar-operaciones-1800.jpg', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tienda] OFF
GO
ALTER TABLE [dbo].[cuentascliente]  WITH CHECK ADD  CONSTRAINT [FK_cuentascliente_bancos] FOREIGN KEY([misc_idbanco])
REFERENCES [dbo].[bancos] ([ban_id])
GO
ALTER TABLE [dbo].[cuentascliente] CHECK CONSTRAINT [FK_cuentascliente_bancos]
GO
ALTER TABLE [dbo].[cuentascliente]  WITH CHECK ADD  CONSTRAINT [FK_cuentascliente_cliente] FOREIGN KEY([misc_idcliente])
REFERENCES [dbo].[cliente] ([clie_id])
GO
ALTER TABLE [dbo].[cuentascliente] CHECK CONSTRAINT [FK_cuentascliente_cliente]
GO
ALTER TABLE [dbo].[cuentascliente]  WITH CHECK ADD  CONSTRAINT [FK_cuentascliente_tipocuenta] FOREIGN KEY([misc_idtipocuenta])
REFERENCES [dbo].[tipocuenta] ([tipcu_id])
GO
ALTER TABLE [dbo].[cuentascliente] CHECK CONSTRAINT [FK_cuentascliente_tipocuenta]
GO
ALTER TABLE [dbo].[detalletiendacategoria]  WITH CHECK ADD  CONSTRAINT [FK_detalletiendacategoria_categoria] FOREIGN KEY([canttien_idcategoria])
REFERENCES [dbo].[categoria] ([cant_id])
GO
ALTER TABLE [dbo].[detalletiendacategoria] CHECK CONSTRAINT [FK_detalletiendacategoria_categoria]
GO
ALTER TABLE [dbo].[detalletiendacategoria]  WITH CHECK ADD  CONSTRAINT [FK_detalletiendacategoria_tienda] FOREIGN KEY([canttien_idtienda])
REFERENCES [dbo].[tienda] ([tien_id])
GO
ALTER TABLE [dbo].[detalletiendacategoria] CHECK CONSTRAINT [FK_detalletiendacategoria_tienda]
GO
ALTER TABLE [dbo].[ordendetalle]  WITH CHECK ADD  CONSTRAINT [FK_ordendetalle_ordenes] FOREIGN KEY([detord_ordennumero])
REFERENCES [dbo].[ordenes] ([ord_id])
GO
ALTER TABLE [dbo].[ordendetalle] CHECK CONSTRAINT [FK_ordendetalle_ordenes]
GO
ALTER TABLE [dbo].[ordendetalle]  WITH CHECK ADD  CONSTRAINT [FK_ordendetalle_producto] FOREIGN KEY([detord_idproducto])
REFERENCES [dbo].[producto] ([prod_id])
GO
ALTER TABLE [dbo].[ordendetalle] CHECK CONSTRAINT [FK_ordendetalle_producto]
GO
ALTER TABLE [dbo].[ordenes]  WITH CHECK ADD  CONSTRAINT [FK_ordenes_cliente] FOREIGN KEY([ord_idcliente])
REFERENCES [dbo].[cliente] ([clie_id])
GO
ALTER TABLE [dbo].[ordenes] CHECK CONSTRAINT [FK_ordenes_cliente]
GO
ALTER TABLE [dbo].[ordenes]  WITH CHECK ADD  CONSTRAINT [FK_ordenes_estadoorden] FOREIGN KEY([ord_idestado])
REFERENCES [dbo].[estadoorden] ([esor_id])
GO
ALTER TABLE [dbo].[ordenes] CHECK CONSTRAINT [FK_ordenes_estadoorden]
GO
ALTER TABLE [dbo].[ordenes]  WITH CHECK ADD  CONSTRAINT [FK_ordenes_mediopago] FOREIGN KEY([ord_idformapago])
REFERENCES [dbo].[mediopago] ([Mep_id])
GO
ALTER TABLE [dbo].[ordenes] CHECK CONSTRAINT [FK_ordenes_mediopago]
GO
ALTER TABLE [dbo].[ordenes]  WITH CHECK ADD  CONSTRAINT [FK_ordenes_tienda] FOREIGN KEY([ord_idtienda])
REFERENCES [dbo].[tienda] ([tien_id])
GO
ALTER TABLE [dbo].[ordenes] CHECK CONSTRAINT [FK_ordenes_tienda]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_subcategoria] FOREIGN KEY([prod_idcategoria])
REFERENCES [dbo].[subcategoria] ([subcat_id])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_subcategoria]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_tienda] FOREIGN KEY([prod_idtienda])
REFERENCES [dbo].[tienda] ([tien_id])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_tienda]
GO
ALTER TABLE [dbo].[publicidad]  WITH CHECK ADD  CONSTRAINT [FK_publicidad_producto] FOREIGN KEY([pub_idproducto])
REFERENCES [dbo].[producto] ([prod_id])
GO
ALTER TABLE [dbo].[publicidad] CHECK CONSTRAINT [FK_publicidad_producto]
GO
ALTER TABLE [dbo].[publicidad]  WITH CHECK ADD  CONSTRAINT [FK_publicidad_tienda] FOREIGN KEY([pub_idtienda])
REFERENCES [dbo].[tienda] ([tien_id])
GO
ALTER TABLE [dbo].[publicidad] CHECK CONSTRAINT [FK_publicidad_tienda]
GO
ALTER TABLE [dbo].[subcategoria]  WITH CHECK ADD  CONSTRAINT [FK_subcategoria_categoria] FOREIGN KEY([subcat_idcategoria])
REFERENCES [dbo].[categoria] ([cant_id])
GO
ALTER TABLE [dbo].[subcategoria] CHECK CONSTRAINT [FK_subcategoria_categoria]
GO
USE [master]
GO
ALTER DATABASE [JosephTutos_Pedidos] SET  READ_WRITE 
GO
