USE [master]
GO
/****** Object:  Database [TsstComercioBD]    Script Date: 28/02/2017 05:55:12 p.m. ******/
CREATE DATABASE [TsstComercioBD]
 
GO
USE [TsstComercioBD]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 28/02/2017 05:55:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[IdBanco] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FlgEliminado] [bit] NOT NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[IdBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdenPago]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenPago](
	[IdOrdenPago] [int] IDENTITY(1,1) NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[Monto] [decimal](9, 2) NOT NULL,
	[Moneda] [nvarchar](15) NOT NULL,
	[Estado] [nvarchar](15) NOT NULL,
	[FechaPago] [datetime] NOT NULL,
	[FlgEliminado] [bit] NOT NULL,
 CONSTRAINT [PK_OrdenPago] PRIMARY KEY CLUSTERED 
(
	[IdOrdenPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[IdBanco] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FlgEliminado] [bit] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Banco] ON 

GO
INSERT [dbo].[Banco] ([IdBanco], [Nombre], [Direccion], [FechaRegistro], [FlgEliminado]) VALUES (1, N'BANCO BCP', N'LA MOLINA 2', CAST(N'2017-02-28 15:10:11.000' AS DateTime), 0)
GO
INSERT [dbo].[Banco] ([IdBanco], [Nombre], [Direccion], [FechaRegistro], [FlgEliminado]) VALUES (2, N'BANCO FINANDIERO', N'RICARDO PALMA', CAST(N'2017-02-28 15:16:06.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Banco] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdenPago] ON 

GO
INSERT [dbo].[OrdenPago] ([IdOrdenPago], [IdSucursal], [Monto], [Moneda], [Estado], [FechaPago], [FlgEliminado]) VALUES (1, 1, CAST(1500.00 AS Decimal(9, 2)), N'SOLES', N'PAGADA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[OrdenPago] ([IdOrdenPago], [IdSucursal], [Monto], [Moneda], [Estado], [FechaPago], [FlgEliminado]) VALUES (2, 1, CAST(4100.00 AS Decimal(9, 2)), N'SOLES', N'PAGADA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[OrdenPago] ([IdOrdenPago], [IdSucursal], [Monto], [Moneda], [Estado], [FechaPago], [FlgEliminado]) VALUES (3, 2, CAST(3150.00 AS Decimal(9, 2)), N'DOLARES', N'PAGADA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[OrdenPago] ([IdOrdenPago], [IdSucursal], [Monto], [Moneda], [Estado], [FechaPago], [FlgEliminado]) VALUES (4, 2, CAST(8400.00 AS Decimal(9, 2)), N'SOLES', N'PAGADA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[OrdenPago] ([IdOrdenPago], [IdSucursal], [Monto], [Moneda], [Estado], [FechaPago], [FlgEliminado]) VALUES (5, 3, CAST(100.00 AS Decimal(9, 2)), N'DOLARES', N'DECLINADA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[OrdenPago] ([IdOrdenPago], [IdSucursal], [Monto], [Moneda], [Estado], [FechaPago], [FlgEliminado]) VALUES (6, 3, CAST(180.00 AS Decimal(9, 2)), N'DOLARES', N'PAGADA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[OrdenPago] ([IdOrdenPago], [IdSucursal], [Monto], [Moneda], [Estado], [FechaPago], [FlgEliminado]) VALUES (7, 3, CAST(480.00 AS Decimal(9, 2)), N'SOLES', N'PAGADA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[OrdenPago] OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursal] ON 

GO
INSERT [dbo].[Sucursal] ([IdSucursal], [IdBanco], [Nombre], [Direccion], [FechaRegistro], [FlgEliminado]) VALUES (1, 1, N'LA MOLINA', N'RAUL FERRERO', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Sucursal] ([IdSucursal], [IdBanco], [Nombre], [Direccion], [FechaRegistro], [FlgEliminado]) VALUES (2, 1, N'CAMACHO', N'JAVIER PRADO', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Sucursal] ([IdSucursal], [IdBanco], [Nombre], [Direccion], [FechaRegistro], [FlgEliminado]) VALUES (3, 2, N'MIRAFLORES', N'RICARDO PALMA', CAST(N'2017-02-28 00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarBanco]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Actualizar un regitro a la tabla Banco
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ActualizarBanco]
(
    @IdBanco int, 
	@Nombre nvarchar(50), 
	@Direccion nvarchar(50), 
	@FechaRegistro datetime, 
	@FlgEliminado bit
) 
AS
BEGIN   
    UPDATE dbo.Banco
    SET 
        Nombre = @Nombre, Direccion = @Direccion, FechaRegistro = @FechaRegistro, FlgEliminado = @FlgEliminado
    WHERE 
        IdBanco = @IdBanco    
END 

GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarOrdenPago]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Actualizar un regitro a la tabla OrdenPago
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ActualizarOrdenPago]
(
    @IdOrdenPago int, 
	@IdSucursal int, 
	@Monto decimal(9,2), 
	@Moneda nvarchar(15), 
	@Estado nvarchar(15), 
	@FechaPago datetime, 
	@FlgEliminado bit
) 
AS
BEGIN   
    UPDATE dbo.OrdenPago
    SET 
        IdSucursal = @IdSucursal, Monto = @Monto, Moneda = @Moneda, Estado = @Estado, FechaPago = @FechaPago, FlgEliminado = @FlgEliminado
    WHERE 
        IdOrdenPago = @IdOrdenPago    
END 

GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarSucursal]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Actualizar un regitro a la tabla Sucursal
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ActualizarSucursal]
(
    @IdSucursal int, 
	@IdBanco int, 
	@Nombre nvarchar(50), 
	@Direccion nvarchar(50), 
	@FechaRegistro datetime, 
	@FlgEliminado bit
) 
AS
BEGIN   
    UPDATE dbo.Sucursal
    SET 
        IdBanco = @IdBanco, Nombre = @Nombre, Direccion = @Direccion, FechaRegistro = @FechaRegistro, FlgEliminado = @FlgEliminado
    WHERE 
        IdSucursal = @IdSucursal    
END 

GO
/****** Object:  StoredProcedure [dbo].[usp_BorrarBanco]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Eliminar un regitro a la tabla Banco
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_BorrarBanco]
(
    @IdBanco int
) 
AS
BEGIN
    UPDATE Banco 
	SET FlgEliminado = '1'
    WHERE 
    IdBanco = @IdBanco 
        
END

GO
/****** Object:  StoredProcedure [dbo].[usp_BorrarOrdenPago]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Eliminar un regitro a la tabla OrdenPago
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_BorrarOrdenPago]
(
    @IdOrdenPago int
) 
AS
BEGIN
    
    UPDATE dbo.OrdenPago
	SET FlgEliminado = '1'
    WHERE 
    IdOrdenPago = @IdOrdenPago 
        
END

GO
/****** Object:  StoredProcedure [dbo].[usp_BorrarSucursal]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Eliminar un regitro a la tabla Sucursal
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_BorrarSucursal]
(
    @IdSucursal int
) 
AS
BEGIN
    
    UPDATE dbo.Sucursal
	SET FlgEliminado = '1'
    WHERE 
    IdSucursal = @IdSucursal 
        
END

GO
/****** Object:  StoredProcedure [dbo].[usp_InsertarBanco]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Agregar un regitro a la tabla Banco
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_InsertarBanco]
(
    @Nombre nvarchar(50), 
	@Direccion nvarchar(50), 
	@FechaRegistro datetime, 
	@FlgEliminado bit
) 
AS
BEGIN
    INSERT INTO dbo.Banco
    (
        Nombre, Direccion, FechaRegistro, FlgEliminado
    )
    VALUES
    (
        @Nombre, @Direccion, @FechaRegistro, @FlgEliminado
    )
    SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[usp_InsertarOrdenPago]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Agregar un regitro a la tabla OrdenPago
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_InsertarOrdenPago]
(
    @IdSucursal int, 
	@Monto decimal(9,2), 
	@Moneda nvarchar(15), 
	@Estado nvarchar(15), 
	@FechaPago datetime, 
	@FlgEliminado bit
) 
AS
BEGIN
    INSERT INTO dbo.OrdenPago
    (
        IdSucursal, Monto, Moneda, Estado, FechaPago, FlgEliminado
    )
    VALUES
    (
        @IdSucursal, @Monto, @Moneda, @Estado, @FechaPago, @FlgEliminado
    )
    SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[usp_InsertarSucursal]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Agregar un regitro a la tabla Sucursal
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_InsertarSucursal]
(
    @IdBanco int, 
	@Nombre nvarchar(50), 
	@Direccion nvarchar(50), 
	@FechaRegistro datetime, 
	@FlgEliminado bit
) 
AS
BEGIN
    INSERT INTO dbo.Sucursal
    (
        IdBanco, Nombre, Direccion, FechaRegistro, FlgEliminado
    )
    VALUES
    (
        @IdBanco, @Nombre, @Direccion, @FechaRegistro, @FlgEliminado
    )
    SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarBanco]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Listar los registros de la tabla Banco
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ListarBanco]
(
@Filtro NVARCHAR(25)
)
AS
BEGIN
	DECLARE @Parametro NVARCHAR(150)
	SET @Parametro = '%' + @Filtro + '%'
       SELECT TOP 100 IdBanco, Nombre, Direccion, FechaRegistro, FlgEliminado 
       FROM dbo.Banco
       WHERE FlgEliminado = '0' AND 
	 Nombre LIKE @Parametro
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarOrdenPago]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Listar los registros de la tabla OrdenPago
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ListarOrdenPago]
AS
BEGIN    
       SELECT TOP 100 IdOrdenPago, IdSucursal, Monto, Moneda, Estado, FechaPago, FlgEliminado 
       FROM dbo.OrdenPago
       WHERE FlgEliminado = '0'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarOrdenPago_LocalMoneda]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Listar los registros de la tabla OrdenPago
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ListarOrdenPago_LocalMoneda]
(
@IdSucursal INT,
@Moneda NVARCHAR(15)
)
AS
BEGIN    
       SELECT TOP 100 IdOrdenPago, IdSucursal, Monto, Moneda, Estado, FechaPago, FlgEliminado 
       FROM dbo.OrdenPago
       WHERE 
	   IdSucursal = @IdSucursal 
	   AND Moneda = @Moneda
	   AND FlgEliminado = '0'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarSucursal]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Listar los registros de la tabla Sucursal
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ListarSucursal]
AS
BEGIN    
       SELECT TOP 100 IdSucursal, IdBanco, Nombre, Direccion, FechaRegistro, FlgEliminado 
       FROM dbo.Sucursal
       WHERE FlgEliminado = '0'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarSucursalPorBanco]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Listar los registros de la tabla Sucursal
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ListarSucursalPorBanco]
(
@IdBanco INT
)
AS
BEGIN    
       SELECT TOP 100 IdSucursal, IdBanco, Nombre, Direccion, FechaRegistro, FlgEliminado 
       FROM dbo.Sucursal
	   WHERE IdBanco = @IdBanco
       AND FlgEliminado = '0'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerBanco]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Obtener un regitro a la tabla Banco
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ObtenerBanco]
(
    @IdBanco int
) 
AS
BEGIN
    
        SELECT IdBanco, Nombre, Direccion, FechaRegistro, FlgEliminado 
        FROM dbo.Banco 
        WHERE IdBanco = @IdBanco 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerOrdenPago]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Obtener un regitro a la tabla OrdenPago
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ObtenerOrdenPago]
(
    @IdOrdenPago int
) 
AS
BEGIN
    
        SELECT IdOrdenPago, IdSucursal, Monto, Moneda, Estado, FechaPago, FlgEliminado 
        FROM dbo.OrdenPago 
        WHERE IdOrdenPago = @IdOrdenPago 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerSucursal]    Script Date: 28/02/2017 05:55:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
Sistema         :   SISTEMA INTEGRADO DE GESTION
Modulo          :   MODULO DE GESTION INTEGRADO
Objetivo        :   Obtener un regitro a la tabla Sucursal
Desarrollado por:   Miguel
Fecha Creacion  :   27/02/2017
*/
CREATE PROCEDURE [dbo].[usp_ObtenerSucursal]
(
    @IdSucursal int
) 
AS
BEGIN
    
        SELECT IdSucursal, IdBanco, Nombre, Direccion, FechaRegistro, FlgEliminado 
        FROM dbo.Sucursal 
        WHERE IdSucursal = @IdSucursal 
END

GO
