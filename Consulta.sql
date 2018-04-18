-- ----------------------------

-- Estructura de tablas --

-- ----------------------------
CREATE TABLE [dbo].[Giros_Categorias] (
	[ID] int NOT NULL IDENTITY(1,1),
	[Nombre] varchar(200) NOT NULL
)
GO
DBCC CHECKIDENT(N'[dbo].[Giros_Categorias]', RESEED, 1)
GO
CREATE TABLE [dbo].[Giros_SubCategorias] (
	[ID] int NOT NULL IDENTITY(1,1),
	[Nombre] varchar(200) NOT NULL,
	[IDCategoria] INT NOT NULL
)
GO
DBCC CHECKIDENT(N'[dbo].[Giros_SubCategorias]', RESEED, 1)
GO
CREATE TABLE [dbo].[Giros] (
	[ID] int NOT NULL IDENTITY(1,1),
	[Nombre] varchar(200) NOT NULL,
	[AfectaIVA] BIT NOT NULL,
	[Cat_Tributaria] INT NOT NULL,
	[DispInternet] BIT NOT NULL,
	[IDSubCategoria] INT NOT NULL
)
GO
DBCC CHECKIDENT(N'[dbo].[Giros]', RESEED, 1)
GO

-- ----------------------------

-- Primary Key para las Tablas --

-- ----------------------------
ALTER TABLE [dbo].[Giros_Categorias] ADD PRIMARY KEY ([ID])
GO
ALTER TABLE [dbo].[Giros_SubCategorias] ADD PRIMARY KEY ([ID])
GO
ALTER TABLE [dbo].[Giros] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------

-- Foreign Key para las Tablas --

-- ----------------------------
ALTER TABLE [dbo].[Giros_SubCategorias] ADD FOREIGN KEY ([IDCategoria]) REFERENCES [dbo].[Giros_Categorias] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Giros] ADD FOREIGN KEY ([IDSubCategoria]) REFERENCES [dbo].[Giros_SubCategorias] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------

-- Ingreso de Datos --

-- ----------------------------
-- Nueva Categoria AGRICULTURA, GANADER�A, CAZA Y SILVICULTURA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('AGRICULTURA, GANADER�A, CAZA Y SILVICULTURA')
GO

-- Nueva Sub Categoria CULTIVOS EN GENERAL; CULTIVO DE PRODUCTOS DE MERCADO; HORTICULTURA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CULTIVOS EN GENERAL; CULTIVO DE PRODUCTOS DE MERCADO; HORTICULTURA', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE TRIGO', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE MAIZ', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE AVENA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE ARROZ', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE CEBADA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE OTROS CEREALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO FORRAJEROS EN PRADERAS NATURALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO FORRAJEROS EN PRADERAS MEJORADAS O SEMBRADAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE POROTOS O FRIJOL', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO, PRODUCCI�N DE LUPINO', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE OTRAS LEGUMBRES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PAPAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE CAMOTES O BATATAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE OTROS TUB�RCULOS N.C.P', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE RAPS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE MARAVILLA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE OTRAS OLEAGINOSAS N.C.P.', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCI�N DE SEMILLAS DE CEREALES, LEGUMBRES, OLEAGINOSAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE REMOLACHA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE TABACO', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE FIBRAS VEGETALES INDUSTRIALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PLANTAS AROM�TICAS O MEDICINALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS CULTIVOS N.C.P.', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO TRADICIONAL DE HORTALIZAS FRESCAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE HORTALIZAS EN INVERNADEROS Y CULTIVOS HIDROPONICOS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO ORG�NICO DE HORTALIZAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PLANTAS VIVAS Y PRODUCTOS DE LA FLORICULTURA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCI�N DE SEMILLAS DE FLORES, PRADOS, FRUTAS Y HORTALIZAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCI�N EN VIVEROS; EXCEPTO ESPECIES FORESTALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO Y RECOLECCI�N DE HONGOS, TRUFAS Y SAVIA; PRODUCCI�N DE JARABE DE ARCE DE AZ�CAR Y AZ�CAR', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE UVA DESTINADA A PRODUCCI�N DE PISCO Y AGUARDIENTE', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE UVA DESTINADA A PRODUCCI�N DE VINO', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE UVA DE MESA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE FRUTALES EN �RBOLES O ARBUSTOS CON CICLO DE VIDA MAYOR A UNA TEMPORADA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE FRUTALES MENORES EN PLANTAS CON CICLO DE VIDA DE UNA TEMPORADA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PLANTAS CUYAS HOJAS O FRUTAS SE UTILIZAN PARA PREPARAR BEBIDAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE ESPECIAS', 0, 1, 0, 1)
GO
-- Nueva Sub Categoria CR�A DE ANIMALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CR�A DE ANIMALES', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE GANADO BOVINO PARA LA PRODUCCI�N LECHERA', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE GANADO PARA PRODUCCI�N DE CARNE, O COMO GANADO REPRODUCTOR', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE GANADO OVINO Y/O EXPLOTACI�N LANERA', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE EQUINOS (CABALLARES, MULARES)', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE PORCINOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE AVES DE CORRAL PARA LA PRODUCCI�N DE CARNE', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE AVES DE CORRAL PARA LA PRODUCCI�N DE HUEVOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE AVES FINAS O NO TRADICIONALES', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CR�A DE ANIMALES DOM�STICOS; PERROS Y GATOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('APICULTURA', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RANICULTURA, HELICICULTURA U OTRA ACTIVIDAD CON ANIMALES MENORES O INSECTOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS EXPLOTACIONES DE ANIMALES NO CLASIFICADOS EN OTRA PARTE, INCLUIDO SUS SUBPRODUCTOS', 0, 1, 0, 2)
GO
-- Nueva Sub Categoria CULTIVO PROD. AGR�COLAS EN COMBINACI�N CON CR�A DE ANIMALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CULTIVO PROD. AGR�COLAS EN COMBINACI�N CON CR�A DE ANIMALES', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACI�N MIXTA', 0, 1, 0, 3)
GO
-- Nueva Sub Categoria ACTIVIDADES DE SERVICIOS AGR�COLAS Y GANADEROS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE SERVICIOS AGR�COLAS Y GANADEROS', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE CORTE Y ENFARDADO DE FORRAJE', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE RECOLECCI�N, EMPACADO, TRILLA, DESCASCARAMIENTO Y DESGRANE; Y SIMILARES', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE ROTURACI�N SIEMBRA Y SIMILARES', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DESTRUCCI�N DE PLAGAS; PULVERIZACIONES, FUMIGACIONES U OTRAS', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COSECHA, PODA, AMARRE Y LABORES DE ADECUACI�N DE LA PLANTA U OTRAS', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS AGR�COLAS N.C.P.', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ADIESTRAMIENTO, GUARDER�A Y CUIDADOS DE MASCOTAS; EXCEPTO ACTIVIDADES VETERINARIAS', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS GANADEROS, EXCEPTO ACTIVIDADES VETERINARIAS', 0, 1, 0, 4)
GO
-- Nueva Sub Categoria CAZA ORDINARIA Y MEDIANTE TRAMPAS, REPOBLACI�N, ACT. SERVICIO CONEXAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CAZA ORDINARIA Y MEDIANTE TRAMPAS, REPOBLACI�N, ACT. SERVICIO CONEXAS', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAZA DE MAM�FEROS MARINOS; EXCEPTO BALLENAS', 0, 1, 0, 5)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAZA ORDINARIA Y MEDIANTE TRAMPAS, Y ACTIVIDADES DE SERVICIOS CONEXAS', 0, 1, 0, 5)
GO
-- Nueva Sub Categoria SILVICULTURA, EXTRACCI�N DE MADERA Y ACTIVIDADES DE SERVICIOS CONEXAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('SILVICULTURA, EXTRACCI�N DE MADERA Y ACTIVIDADES DE SERVICIOS CONEXAS', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACI�N DE BOSQUES', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECOLECCI�N DE PRODUCTOS FORESTALES SILVESTRES', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACI�N DE VIVEROS DE ESPECIES FORESTALES', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE FORESTACI�N', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE CORTA DE MADERA', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE CONTROL DE INCENDIOS FORESTALES', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE SERVICIOS CONEXAS A LA SILVICULTURA N.C.P.', 0, 1, 0, 6)
GO
-- Nueva Categoria PESCA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('PESCA')
GO

-- Nueva Sub Categoria EXPLT. DE CRIADEROS DE PECES Y PROD. DEL MAR; SERVICIOS RELACIONADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXPLT. DE CRIADEROS DE PECES Y PROD. DEL MAR; SERVICIOS RELACIONADOS', 2)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE ESPECIES ACU�TICAS EN CUERPO DE AGUA DULCE', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPRODUCCI�N Y CRIANZAS DE PECES MARINOS', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO, REPRODUCCI�N Y CRECIMIENTOS DE VEGETALES ACU�TICOS', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPRODUCCI�N Y CR�A DE MOLUSCOS Y CRUSTACEOS.', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS RELACIONADOS CON LA ACUICULTURA, NO INCLUYE SERVICIOS PROFESIONALES Y DE EXTRACCI�N', 0, 1, 0, 7)
GO
-- Nueva Sub Categoria PESCA EXTRACTIVA: Y SERVICIOS RELACIONADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('PESCA EXTRACTIVA: Y SERVICIOS RELACIONADOS', 2)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PESCA INDUSTRIAL', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDAD PESQUERA DE BARCOS FACTOR�AS', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PESCA ARTESANAL. EXTRACCI�N DE RECURSOS ACU�TICOS EN GENERAL; INCLUYE BALLENAS', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECOLECCI�N DE PRODUCTOS MARINOS, COMO PERLAS NATURALES, ESPONJAS, CORALES Y ALGAS.', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS RELACIONADOS CON LA PESCA, NO INCLUYE SERVICIOS PROFESIONALES', 0, 1, 0, 8)
GO
-- Nueva Categoria EXPLOTACI�N DE MINAS Y CANTERAS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('EXPLOTACI�N DE MINAS Y CANTERAS')
GO

-- Nueva Sub Categoria EXTRACCI�N, AGLOMERACI�N DE CARB�N DE PIEDRA, LIGNITO Y TURBA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXTRACCI�N, AGLOMERACI�N DE CARB�N DE PIEDRA, LIGNITO Y TURBA', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N, AGLOMERACI�N DE CARB�N DE PIEDRA, LIGNITO Y TURBA', 0, 1, 0, 9)
GO
-- Nueva Sub Categoria EXTRACCI�N DE PETR�LEO CRUDO Y GAS NATURAL; ACTIVIDADES RELACIONADAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXTRACCI�N DE PETR�LEO CRUDO Y GAS NATURAL; ACTIVIDADES RELACIONADAS', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE PETR�LEO CRUDO Y GAS NATURAL', 0, 1, 0, 10)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE SERVICIOS RELACIONADAS CON LA EXTRACCI�N DE PETR�LEO Y GAS', 0, 1, 0, 10)
GO
-- Nueva Sub Categoria EXTRACCI�N DE MINERALES METAL�FEROS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXTRACCI�N DE MINERALES METAL�FEROS', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE MINERALES DE URANIO Y TORIO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE MINERALES DE HIERRO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE ORO Y PLATA', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE ZINC Y PLOMO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE MANGANESO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE OTROS MINERALES METAL�FEROS N.C.P.', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE COBRE', 0, 1, 0, 11)
GO
-- Nueva Sub Categoria EXPLOTACI�N DE MINAS Y CANTERAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXPLOTACI�N DE MINAS Y CANTERAS', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE PIEDRA, ARENA Y ARCILLA', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE NITRATOS Y YODO', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE SAL', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCI�N DE LITIO Y CLORUROS, EXCEPTO SAL', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACI�N DE OTRAS MINAS Y CANTERAS N.C.P.', 0, 1, 0, 12)
GO
-- Nueva Categoria INDUSTRIAS MANUFACTURERAS NO MET�LICAS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('INDUSTRIAS MANUFACTURERAS NO MET�LICAS')
GO

-- Nueva Sub Categoria PRODUCCI�N, PROCESAMIENTO Y CONSERVACI�N DE ALIMENTOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('PRODUCCI�N, PROCESAMIENTO Y CONSERVACI�N DE ALIMENTOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCI�N, PROCESAMIENTO DE CARNES ROJAS Y PRODUCTOS C�RNICOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSERVACI�N DE CARNES ROJAS (FRIGOR�FICOS)', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCI�N, PROCESAMIENTO Y CONSERVACI�N DE CARNES DE AVE Y OTRAS CARNES DISTINTAS A LAS ROJAS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE CECINAS, EMBUTIDOS Y CARNES EN CONSERVA.', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCI�N DE HARINA DE PESCADO', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS ENLATADOS DE PESCADO Y MARISCOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE CONGELADOS DE PESCADOS Y MARISCOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE PRODUCTOS AHUMADOS, SALADOS, DESHIDRATADOS Y OTROS PROCESOS SIMILARES', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE PRODUCTOS EN BASE A VEGETALES ACU�TICOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N Y CONSERVACI�N DE FRUTAS, LEGUMBRES Y HORTALIZAS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE ACEITES Y GRASAS DE ORIGEN VEGETAL', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE ACEITES Y GRASAS DE ORIGEN ANIMAL, EXCEPTO LAS MANTEQUILLAS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE ACEITES Y GRASAS DE ORIGEN MARINO', 0, 1, 0, 13)
GO
-- Nueva Sub Categoria ELABORACI�N DE PRODUCTOS L�CTEOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACI�N DE PRODUCTOS L�CTEOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE LECHE, MANTEQUILLA, PRODUCTOS L�CTEOS Y DERIVADOS', 0, 1, 0, 14)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE QUESOS', 0, 1, 0, 14)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE POSTRES A BASE DE LECHE (HELADOS, SORBETES Y OTROS SIMILARES)', 0, 1, 0, 14)
GO
-- Nueva Sub Categoria ELAB. DE PROD. DE MOLINER�A, ALMIDONES Y PROD. DERIVADOS DEL ALMID�N --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELAB. DE PROD. DE MOLINER�A, ALMIDONES Y PROD. DERIVADOS DEL ALMID�N', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE HARINAS DE TRIGO', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE MOLIENDA DE ARROZ', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE OTRAS MOLINERAS Y ALIMENTOS A BASE DE CEREALES', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE ALMIDONES Y PRODUCTOS DERIVADOS DEL ALMID�N', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE GLUCOSA Y OTROS AZ�CARES DIFERENTES DE LA REMOLACHA', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE ALIMENTOS PREPARADOS PARA ANIMALES', 0, 1, 0, 15)
GO
-- Nueva Sub Categoria ELABORACI�N DE OTROS PRODUCTOS ALIMENTICIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACI�N DE OTROS PRODUCTOS ALIMENTICIOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PAN, PRODUCTOS DE PANADER�A Y PASTELER�A', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE GALLETAS', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE AZ�CAR DE REMOLACHA O CANA', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE CACAO Y CHOCOLATES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE CONFITER�A', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE MACARRONES, FIDEOS, ALCUZCUZ Y PRODUCTOS FARINACEOS SIMILARES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE TE, CAF�, INFUSIONES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE LEVADURAS NATURALES O ARTIFICIALES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE VINAGRES, MOSTAZAS, MAYONESAS Y CONDIMENTOS EN GENERAL', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE OTROS PRODUCTOS ALIMENTICIOS NO CLASIFICADOS EN OTRA PARTE', 0, 1, 0, 16)
GO
-- Nueva Sub Categoria ELABORACI�N DE BEBIDAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACI�N DE BEBIDAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE PISCOS (INDUSTRIAS PISQUERAS)', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE BEBIDAS ALCOH�LICAS Y DE ALCOHOL ET�LICO A PARTIR DE SUSTANCIAS FERMENTADAS Y OTROS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE VINOS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE BEBIDAS MALTEADAS, CERVEZAS Y MALTAS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE BEBIDAS NO ALCOH�LICAS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ENVASADO DE AGUA MINERAL NATURAL, DE MANANTIAL Y POTABLE PREPARADA', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE HIELO', 0, 1, 0, 17)
GO
-- Nueva Sub Categoria ELABORACI�N DE PRODUCTOS DEL TABACO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACI�N DE PRODUCTOS DEL TABACO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CIGARROS Y CIGARRILLOS', 0, 1, 0, 18)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS DEL TABACO', 0, 1, 0, 18)
GO
-- Nueva Sub Categoria HILANDER�A, TEJEDURA Y ACABADO DE PRODUCTOS TEXTILES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('HILANDER�A, TEJEDURA Y ACABADO DE PRODUCTOS TEXTILES', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PREPARACI�N DE HILATURA DE FIBRAS TEXTILES; TEJEDURA PROD. TEXTILES', 0, 1, 0, 19)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACABADO DE PRODUCTOS TEXTIL', 0, 1, 0, 19)
GO
-- Nueva Sub Categoria FABRICACI�N DE OTROS PRODUCTOS TEXTILES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS TEXTILES', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ART�CULOS CONFECCIONADOS DE MATERIAS TEXTILES, EXCEPTO PRENDAS DE VESTIR', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE TAPICES Y ALFOMBRA', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CUERDAS, CORDELES, BRAMANTES Y REDES', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE TEJIDOS DE USO INDUSTRIAL COMO TEJIDOS IMPREGNADOS, MOLTOPRENE, BATISTA, ETC.', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS TEXTILES N.C.P.', 0, 1, 0, 20)
GO
-- Nueva Sub Categoria FABRICACI�N DE TEJIDOS Y ART�CULOS DE PUNTO Y GANCHILLO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE TEJIDOS Y ART�CULOS DE PUNTO Y GANCHILLO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE TEJIDOS DE PUNTO', 0, 1, 0, 21)
GO
-- Nueva Sub Categoria FABRICACI�N DE PRENDAS DE VESTIR; EXCEPTO PRENDAS DE PIEL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE PRENDAS DE VESTIR; EXCEPTO PRENDAS DE PIEL', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRENDAS DE VESTIR TEXTILES Y SIMILARES', 0, 1, 0, 22)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRENDAS DE VESTIR DE CUERO NATURAL, ARTIFICIAL, PL�STICO', 0, 1, 0, 22)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ACCESORIOS DE VESTIR', 0, 1, 0, 22)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ROPA DE TRABAJO', 0, 1, 0, 22)
GO
-- Nueva Sub Categoria PROCESAMIENTO Y FABRICACI�N DE ART�CULOS DE PIEL Y CUERO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('PROCESAMIENTO Y FABRICACI�N DE ART�CULOS DE PIEL Y CUERO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADOBO Y TENIDOS DE PIELES; FABRICACI�N DE ART�CULOS DE PIEL', 0, 1, 0, 23)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CURTIDO Y ADOBO DE CUEROS', 0, 1, 0, 23)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MALETAS, BOLSOS DE MANO Y SIMILARES; ART�CULOS DE TALABARTER�A Y GUARNICIONER�A', 0, 1, 0, 23)
GO
-- Nueva Sub Categoria FABRICACI�N DE CALZADO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE CALZADO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CALZADO', 0, 1, 0, 24)
GO
-- Nueva Sub Categoria ASERRADO Y ACEPILLADURA DE MADERAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ASERRADO Y ACEPILLADURA DE MADERAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ASERRADO Y ACEPILLADURA DE MADERAS', 0, 1, 0, 25)
GO
-- Nueva Sub Categoria FAB. DE PRODUCTOS DE MADERA Y CORCHO, PAJA Y DE MATERIALES TRENZABLES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE PRODUCTOS DE MADERA Y CORCHO, PAJA Y DE MATERIALES TRENZABLES', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE TABLEROS, PANELES Y HOJAS DE MADERA PARA ENCHAPADO', 0, 1, 0, 26)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PARTES Y PIEZAS DE CARPINTER�A PARA EDIFICIOS Y CONSTRUCCIONES', 0, 1, 0, 26)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE RECIPIENTES DE MADERA', 0, 1, 0, 26)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS DE MADERA; ART�CULOS DE CORCHO, PAJA Y MATERIALES TRENZABLES', 0, 1, 0, 26)
GO
-- Nueva Sub Categoria FABRICACI�N DE PAPEL Y PRODUCTOS DEL PAPEL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE PAPEL Y PRODUCTOS DEL PAPEL', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CELULOSA Y OTRAS PASTAS DE MADERA', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PAPEL DE PERI�DICO', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PAPEL Y CART�N N.C.P.', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PAPEL Y CART�N ONDULADO Y DE ENVASES DE PAPEL Y CART�N', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS ART�CULOS DE PAPEL Y CART�N', 0, 1, 0, 27)
GO
-- Nueva Sub Categoria ACTIVIDADES DE EDICI�N --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE EDICI�N', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICI�N PRINCIPALMENTE DE LIBROS', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICI�N DE FOLLETOS, PARTITURAS Y OTRAS PUBLICACIONES', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICI�N DE PERI�DICOS, REVISTAS Y PUBLICACIONES PERI�DICAS', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICI�N DE GRABACIONES', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE EDICI�N', 0, 1, 0, 28)
GO
-- Nueva Sub Categoria ACTIVIDADES DE IMPRESI�N Y DE SERVICIOS CONEXOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE IMPRESI�N Y DE SERVICIOS CONEXOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('IMPRESI�N PRINCIPALMENTE DE LIBROS', 0, 1, 0, 29)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE IMPRESI�N N.C.P.', 0, 1, 0, 29)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE SERVICIO RELACIONADA CON LA IMPRESI�N', 0, 1, 0, 29)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPRODUCCI�N DE GRABACIONES', 0, 1, 0, 29)
GO
-- Nueva Sub Categoria FABRICACI�N DE PRODUCTOS DE HORNOS COQUE Y DE REFINACI�N DE PETR�LEO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE HORNOS COQUE Y DE REFINACI�N DE PETR�LEO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE HORNOS COQUE', 0, 1, 0, 30)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE REFINACI�N DE PETR�LEO', 0, 1, 0, 30)
GO
-- Nueva Sub Categoria ELABORACI�N DE COMBUSTIBLE NUCLEAR --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACI�N DE COMBUSTIBLE NUCLEAR', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE COMBUSTIBLE NUCLEAR', 0, 1, 0, 31)
GO
-- Nueva Sub Categoria FABRICACI�N DE SUSTANCIAS QU�MICAS B�SICAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE SUSTANCIAS QU�MICAS B�SICAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CARB�N VEGETAL, Y BRIQUETAS DE CARB�N VEGETAL', 0, 1, 0, 32)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE SUSTANCIAS QU�MICAS B�SICAS, EXCEPTO ABONOS Y COMPUESTOS DE NITR�GENO', 0, 1, 0, 32)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ABONOS Y COMPUESTOS DE NITR�GENO', 0, 1, 0, 32)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PL�STICOS EN FORMAS PRIMARIAS Y DE CAUCHO SINT�TICO', 0, 1, 0, 32)
GO
-- Nueva Sub Categoria FABRICACI�N DE OTROS PRODUCTOS QU�MICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS QU�MICOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PLAGUICIDAS Y OTROS PRODUCTOS QU�MICOS DE USO AGROPECUARIO', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PINTURAS, BARNICES Y PRODUCTOS DE REVESTIMIENTO SIMILARES', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS FARMACEUTICOS, SUSTANCIAS QU�MICAS MEDICINALES Y PRODUCTOS BOT�NICOS', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIONES DE JABONES Y DETERGENTES, PREPARADOS PARA LIMPIAR, PERFUMES Y PREPARADOS DE TOCADOR', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE EXPLOSIVOS Y PRODUCTOS DE PIROTECNIA', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS QU�MICOS N.C.P.', 0, 1, 0, 33)
GO
-- Nueva Sub Categoria FABRICACI�N DE FIBRAS MANUFACTURADAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE FIBRAS MANUFACTURADAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE FIBRAS MANUFACTURADAS', 0, 1, 0, 34)
GO
-- Nueva Sub Categoria FABRICACI�N DE PRODUCTOS DE CAUCHO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE CAUCHO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CUBIERTAS Y C�MARAS DE CAUCHO', 0, 1, 0, 35)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECAUCHADO Y RENOVACI�N DE CUBIERTAS DE CAUCHO', 0, 1, 0, 35)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS DE CAUCHO', 0, 1, 0, 35)
GO
-- Nueva Sub Categoria FABRICACI�N DE PRODUCTOS DE PL�STICO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE PL�STICO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PLANCHAS, L�MINAS, CINTAS, TIRAS DE PL�STICO', 0, 1, 0, 36)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE TUBOS, MANGUERAS PARA LA CONSTRUCCI�N', 0, 1, 0, 36)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS ART�CULOS DE PL�STICO', 0, 1, 0, 36)
GO
-- Nueva Sub Categoria FABRICACI�N DE VIDRIOS Y PRODUCTOS DE VIDRIO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE VIDRIOS Y PRODUCTOS DE VIDRIO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N, MANIPULADO Y TRANSFORMACI�N DE VIDRIO PLANO', 0, 1, 0, 37)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE VIDRIO HUECO', 0, 1, 0, 37)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE FIBRAS DE VIDRIO', 0, 1, 0, 37)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ART�CULOS DE VIDRIO N.C.P.', 0, 1, 0, 37)
GO
-- Nueva Sub Categoria FABRICACI�N DE PRODUCTOS MINERALES NO MET�LICOS N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE PRODUCTOS MINERALES NO MET�LICOS N.C.P.', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE CER�MICA NO REFRACTARIA PARA USO NO ESTRUCTURAL CON FINES ORNAMENTALES', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE CER�MICA NO REFRACTARIA PARA USO NO ESTRUCTURAL N.C.P.', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE CER�MICAS REFRACTARIA', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE ARCILLA Y CER�MICAS NO REFRACTARIAS PARA USO ESTRUCTURAL', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CEMENTO, CAL Y YESO', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE HORMIG�N, ART�CULOS DE HORMIG�N Y MORTERO (MEZCLA PARA CONSTRUCCI�N)', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS DE FIBROCEMENTO Y ASBESTOCEMENTO', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PANELES DE YESO PARA LA CONSTRUCCI�N', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ART�CULOS DE CEMENTO Y YESO N.C.P.', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORTE, TALLADO Y ACABADO DE LA PIEDRA', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MEZCLAS BITUMINOSAS A BASE DE ASFALTO, DE BETUNES NATURALES, Y PRODUCTOS SIMILARES', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS MINERALES NO MET�LICOS N.C.P', 0, 1, 0, 38)
GO
-- Nueva Categoria INDUSTRIAS MANUFACTURERAS MET�LICAS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('INDUSTRIAS MANUFACTURERAS MET�LICAS')
GO

-- Nueva Sub Categoria INDUSTRIAS B�SICAS DE HIERRO Y ACERO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('INDUSTRIAS B�SICAS DE HIERRO Y ACERO', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INDUSTRIAS BASICAS DE HIERRO Y ACERO', 0, 1, 0, 39)
GO
-- Nueva Sub Categoria FAB. DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y METALES NO FERROSOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y METALES NO FERROSOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE PRODUCTOS DE COBRE EN FORMAS PRIMARIAS.', 0, 1, 0, 40)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACI�N DE PRODUCTOS DE ALUMINIO EN FORMAS PRIMARIAS', 0, 1, 0, 40)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y DE OTROS METALES NO FERROSOS N.C.P.', 0, 1, 0, 40)
GO
-- Nueva Sub Categoria FUNDICI�N DE METALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FUNDICI�N DE METALES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUNDICI�N DE HIERRO Y ACERO', 0, 1, 0, 41)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUNDICI�N DE METALES NO FERROSOS', 0, 1, 0, 41)
GO
-- Nueva Sub Categoria FAB. DE PROD. MET�LICOS PARA USO ESTRUCTURAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE PROD. MET�LICOS PARA USO ESTRUCTURAL', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PRODUCTOS MET�LICOS DE USO ESTRUCTURAL', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE RECIPIENTES DE GAS COMPRIMIDO O LICUADO', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE TANQUES, DEP�SITOS Y RECIPIENTES DE METAL N.C.P.', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE TANQUES, DEP�SITOS Y RECIPIENTES DE METAL', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCI�N', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCI�N CENTRAL', 0, 1, 0, 42)
GO
-- Nueva Sub Categoria FAB. DE OTROS PROD. ELABORADOS DE METAL; ACT. DE TRABAJO DE METALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE OTROS PROD. ELABORADOS DE METAL; ACT. DE TRABAJO DE METALES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FORJA, PRENSADO, ESTAMPADO Y LAMINADO DE METAL; INCLUYE PULVIMETALURGIA', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRATAMIENTOS Y REVESTIMIENTOS DE METALES; OBRAS DE INGENIER�A MEC�NICA EN GENERAL', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ART�CULOS DE CUCHILLER�A', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE HERRAMIENTAS DE MANO Y ART�CULOS DE FERRETER�A', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CABLES, ALAMBRES Y PRODUCTOS DE ALAMBRE', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS PRODUCTOS ELABORADOS DE METAL N.C.P.', 0, 1, 0, 43)
GO
-- Nueva Sub Categoria FABRICACI�N DE MAQUINARIA DE USO GENERAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE MAQUINARIA DE USO GENERAL', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MOTORES Y TURBINAS, EXCEPTO PARA AERONAVES, VEH�CULOS AUTOMOTORES Y MOTOCICLETAS', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MOTORES Y TURBINAS, EXCEPTO PARA AERONAVES, VEH�CULOS AUTOMOTORES Y MOTOCICLETAS', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE BOMBAS, GRIFOS, V�LVULAS, COMPRESORES, SISTEMAS HIDR�ULICOS', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE BOMBAS, COMPRESORES, SISTEMAS HIDR�ULICOS, V�LVULAS Y ART�CULOS DE GRIFER�A', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISI�N', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISI�N', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE HORNOS, HOGARES Y QUEMADORES', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE HORNOS, HOGARES Y QUEMADORES', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE EQUIPO DE ELEVACI�N Y MANIPULACI�N', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE EQUIPO DE ELEVACI�N Y MANIPULACI�N', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTRO TIPO DE MAQUINARIAS DE USO GENERAL', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N OTROS TIPOS DE MAQUINARIA Y EQUIPOS DE USO GENERAL', 0, 1, 0, 44)
GO
-- Nueva Sub Categoria FABRICACI�N DE MAQUINARIA DE USO ESPECIAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE MAQUINARIA DE USO ESPECIAL', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MAQUINARIA AGROPECUARIA Y FORESTAL', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MAQUINARIA AGROPECUARIA Y FORESTAL', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE M�QUINAS HERRAMIENTAS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE M�QUINAS HERRAMIENTAS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MAQUINARIA METAL�RGICA', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MAQUINARIA PARA LA INDUSTRIA METAL�RGICA', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MAQUINARIA PARA MINAS Y CANTERAS Y PARA OBRAS DE CONSTRUCCI�N', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PARTES PARA M�QUINAS DE SONDEO O PERFORACI�N', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MAQUINARIA PARA LA EXPLOTACI�N DE PETR�LEO, MINAS, CANTERAS, Y OBRAS DE CONSTRUCCI�N', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACOS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACOS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MAQUINARIA PARA LA ELABORACI�N DE PRENDAS TEXTILES, PRENDAS DE VESTIR Y CUEROS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MAQUINARIA PARA LA INDUSTRIA TEXTIL, DE LA CONFECCI�N, DEL CUERO Y DEL CALZADO', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ARMAS Y MUNICIONES', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE ARMAS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS TIPOS DE MAQUINARIAS DE USO ESPECIAL', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE OTROS TIPOS DE MAQUINARIA DE USO ESPECIAL', 0, 1, 0, 45)
GO
-- Nueva Sub Categoria FABRICACI�N DE APARATOS DE USO DOM�STICO N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE APARATOS DE USO DOM�STICO N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE APARATOS DE USO DOM�STICO N.C.P.', 0, 1, 0, 46)
GO
-- Nueva Sub Categoria FABRICACI�N DE MAQUINARIA DE OFICINA, CONTABILIDAD E INFORM�TICA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE MAQUINARIA DE OFICINA, CONTABILIDAD E INFORM�TICA', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N Y ARMADO DE COMPUTADORES Y HARDWARE EN GENERAL', 0, 1, 0, 47)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MAQUINARIA DE OFICINA, CONTABILIDAD, N.C.P.', 0, 1, 0, 47)
GO
-- Nueva Sub Categoria FAB. Y REPARACI�N DE MOTORES, GENERADORES Y TRANSFORMADORES EL�CTRICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. Y REPARACI�N DE MOTORES, GENERADORES Y TRANSFORMADORES EL�CTRICOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MOTORES, GENERADORES Y TRANSFORMADORES EL�CTRICOS', 0, 1, 0, 48)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MOTORES, GENERADORES Y TRANSFORMADORES EL�CTRICOS', 0, 1, 0, 48)
GO
-- Nueva Sub Categoria FABRICACI�N DE APARATOS DE DISTRIBUCI�N Y CONTROL; SUS REPARACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE APARATOS DE DISTRIBUCI�N Y CONTROL; SUS REPARACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE APARATOS DE DISTRIBUCI�N Y CONTROL', 0, 1, 0, 49)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE APARATOS DE DISTRIBUCI�N Y CONTROL', 0, 1, 0, 49)
GO
-- Nueva Sub Categoria FABRICACI�N DE HILOS Y CABLES AISLADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE HILOS Y CABLES AISLADOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE HILOS Y CABLES AISLADOS', 0, 1, 0, 50)
GO
-- Nueva Sub Categoria FABRICACI�N DE ACUMULADORES DE PILAS Y BATER�AS PRIMARIAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE ACUMULADORES DE PILAS Y BATER�AS PRIMARIAS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ACUMULADORES DE PILAS Y BATER�AS PRIMARIAS', 0, 1, 0, 51)
GO
-- Nueva Sub Categoria FABRICACI�N Y REPARACI�N DE L�MPARAS Y EQUIPO DE ILUMINACI�N --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N Y REPARACI�N DE L�MPARAS Y EQUIPO DE ILUMINACI�N', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE L�MPARAS Y EQUIPO DE ILUMINACI�N', 0, 1, 0, 52)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE EQUIPO DE ILUMINACI�N', 0, 1, 0, 52)
GO
-- Nueva Sub Categoria FABRICACI�N Y REPARACI�N DE OTROS TIPOS DE EQUIPO EL�CTRICO N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N Y REPARACI�N DE OTROS TIPOS DE EQUIPO EL�CTRICO N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS TIPOS DE EQUIPO EL�CTRICO N.C.P.', 0, 1, 0, 53)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE OTROS TIPOS DE EQUIPO EL�CTRICO N.C.P.', 0, 1, 0, 53)
GO
-- Nueva Sub Categoria FABRICACI�N DE COMPONENTES ELECTR�NICOS; SUS REPARACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE COMPONENTES ELECTR�NICOS; SUS REPARACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE COMPONENTES ELECTR�NICOS', 0, 1, 0, 54)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE COMPONENTES ELECTR�NICOS', 0, 1, 0, 54)
GO
-- Nueva Sub Categoria FAB. Y REPARACI�N DE TRANSMISORES DE RADIO, TELEVISI�N, TELEFON�A --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. Y REPARACI�N DE TRANSMISORES DE RADIO, TELEVISI�N, TELEFON�A', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE TRANSMISORES DE RADIO Y TELEVISI�N, APARATOS PARA TELEFON�A Y TELEGRAF�A CON HILOS', 0, 1, 0, 55)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE TRANSMISORES DE RADIO Y TELEVISI�N, APARATOS PARA TELEFON�A Y TELEGRAF�A CON HILOS', 0, 1, 0, 55)
GO
-- Nueva Sub Categoria FAB. DE RECEPTORES DE RADIO, TELEVISI�N, APARATOS DE AUDIO/V�DEO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE RECEPTORES DE RADIO, TELEVISI�N, APARATOS DE AUDIO/V�DEO', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE RECEPTORES (RADIO Y TV); APARATOS DE GRABACI�N Y REPRODUCCI�N (AUDIO Y VIDEO)', 0, 1, 0, 56)
GO
-- Nueva Sub Categoria FAB. DE APARATOS E INSTRUMENTOS M�DICOS Y PARA REALIZAR MEDICIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE APARATOS E INSTRUMENTOS M�DICOS Y PARA REALIZAR MEDICIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE EQUIPO M�DICO Y QUIR�RGICO, Y DE APARATOS ORTOP�DICOS', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LABORATORIOS DENTALES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE EQUIPO M�DICO Y QUIR�RGICO, Y DE APARATOS ORTOP�DICOS', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE INSTRUMENTOS Y APARATOS PARA MEDIR, VERIFICAR, ENSAYAR, NAVEGAR Y OTROS FINES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE INSTRUMENTOS Y APARATOS PARA MEDIR, VERIFICAR, ENSAYAR, NAVEGAR Y OTROS FINES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE EQUIPOS DE CONTROL DE PROCESOS INDUSTRIALES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE EQUIPOS DE CONTROL DE PROCESOS INDUSTRIALES', 0, 1, 0, 57)
GO
-- Nueva Sub Categoria FAB. Y REPARACI�N DE INSTRUMENTOS DE �PTICA Y EQUIPO FOTOGR�FICO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. Y REPARACI�N DE INSTRUMENTOS DE �PTICA Y EQUIPO FOTOGR�FICO', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N Y/O REPARACI�N DE LENTES Y ART�CULOS OFTALMOL�GICOS', 0, 1, 0, 58)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE INSTRUMENTOS DE OPTICA N.C.P. Y EQUIPOS FOTOGR�FICOS', 0, 1, 0, 58)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE INSTRUMENTOS DE OPTICA N.C.P Y EQUIPO FOTOGR�FICOS', 0, 1, 0, 58)
GO
-- Nueva Sub Categoria FABRICACI�N DE RELOJES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE RELOJES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE RELOJES', 0, 1, 0, 59)
GO
-- Nueva Sub Categoria FABRICACI�N DE VEH�CULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE VEH�CULOS AUTOMOTORES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE VEH�CULOS AUTOMOTORES', 0, 1, 0, 60)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE CARROCER�AS PARA VEH�CULOS AUTOMOTORES; FABRICACI�N DE REMOLQUES Y SEMI REMOLQUES', 0, 1, 0, 60)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PARTES Y ACCESORIOS PARA VEH�CULOS AUTOMOTORES Y SUS MOTORES', 0, 1, 0, 60)
GO
-- Nueva Sub Categoria CONSTRUCCI�N Y REPARACI�N DE BUQUES Y OTRAS EMBARCACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CONSTRUCCI�N Y REPARACI�N DE BUQUES Y OTRAS EMBARCACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCI�N Y REPARACI�N DE BUQUES; ASTILLEROS', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCI�N DE EMBARCACIONES MENORES', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE EMBARCACIONES MENORES', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCI�N DE EMBARCACIONES DE RECREO Y DEPORTE', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE EMBARCACIONES DE RECREO Y DEPORTES', 0, 1, 0, 61)
GO
-- Nueva Sub Categoria FAB. DE LOCOMOTORAS Y MATERIAL RODANTE PARA FERROCARRILES Y TRANV�AS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE LOCOMOTORAS Y MATERIAL RODANTE PARA FERROCARRILES Y TRANV�AS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE LOCOMOTORAS Y DE MATERIAL RODANTE PARA FERROCARRILES Y TRANV�AS', 0, 1, 0, 62)
GO
-- Nueva Sub Categoria FABRICACI�N DE AERONAVES Y NAVES ESPACIALES; SUS REPARACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE AERONAVES Y NAVES ESPACIALES; SUS REPARACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE AERONAVES Y NAVES ESPACIALES', 0, 1, 0, 63)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE AERONAVES Y NAVES ESPACIALES', 0, 1, 0, 63)
GO
-- Nueva Sub Categoria FABRICACI�N DE OTROS TIPOS DE EQUIPO DE TRANSPORTE N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE OTROS TIPOS DE EQUIPO DE TRANSPORTE N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MOTOCICLETAS', 0, 1, 0, 64)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE BICICLETAS Y DE SILLONES DE RUEDAS PARA INVALIDOS', 0, 1, 0, 64)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS EQUIPOS DE TRANSPORTE N.C.P.', 0, 1, 0, 64)
GO
-- Nueva Sub Categoria FABRICACI�N DE MUEBLES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE MUEBLES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE MUEBLES PRINCIPALMENTE DE MADERA', 0, 1, 0, 65)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE OTROS MUEBLES N.C.P., INCLUSO COLCHONES', 0, 1, 0, 65)
GO
-- Nueva Sub Categoria INDUSTRIAS MANUFACTURERAS N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('INDUSTRIAS MANUFACTURERAS N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE JOYAS Y PRODUCTOS CONEXOS', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE INSTRUMENTOS DE M�SICA', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ART�CULOS DE DEPORTE', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE JUEGOS Y JUGUETES', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE PLUMAS Y L�PICES DE TODA CLASE Y ART�CULOS DE ESCRITORIO EN GENERAL', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE BROCHAS, ESCOBAS Y CEPILLOS', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE F�SFOROS', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE ART�CULOS DE OTRAS INDUSTRIAS N.C.P.', 0, 1, 0, 66)
GO
-- Nueva Sub Categoria RECICLAMIENTO DE DESPERDICIOS Y DESECHOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('RECICLAMIENTO DE DESPERDICIOS Y DESECHOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECICLAMIENTO DE DESPERDICIOS Y DESECHOS MET�LICOS', 0, 1, 0, 67)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECICLAMIENTO DE PAPEL', 0, 1, 0, 67)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECICLAMIENTO DE VIDRIO', 0, 1, 0, 67)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECICLAMIENTO DE OTROS DESPERDICIOS Y DESECHOS N.C.P.', 0, 1, 0, 67)
GO
-- Nueva Categoria SUMINISTRO DE ELECTRICIDAD, GAS Y AGUA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('SUMINISTRO DE ELECTRICIDAD, GAS Y AGUA')
GO

-- Nueva Sub Categoria GENERACI�N, CAPTACI�N Y DISTRIBUCI�N DE ENERG�A EL�CTRICA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('GENERACI�N, CAPTACI�N Y DISTRIBUCI�N DE ENERG�A EL�CTRICA', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACI�N HIDROEL�CTRICA', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACI�N EN CENTRALES TERMOEL�CTRICA DE CICLOS COMBINADOS', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACI�N EN OTRAS CENTRALES TERMOEL�CTRICAS', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACI�N EN OTRAS CENTRALES N.C.P.', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSMISI�N DE ENERG�A EL�CTRICA', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISTRIBUCI�N DE ENERGIA EL�CTRICA', 0, 1, 0, 68)
GO
-- Nueva Sub Categoria FABRICACI�N DE GAS; DISTRIBUCI�N DE COMBUSTIBLES GASEOSOS POR TUBER�AS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACI�N DE GAS; DISTRIBUCI�N DE COMBUSTIBLES GASEOSOS POR TUBER�AS', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACI�N DE GAS; DISTRIBUCI�N DE COMBUSTIBLES GASEOSOS POR TUBER�AS', 0, 1, 0, 69)
GO
-- Nueva Sub Categoria SUMINISTRO DE VAPOR Y AGUA CALIENTE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('SUMINISTRO DE VAPOR Y AGUA CALIENTE', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SUMINISTRO DE VAPOR Y AGUA CALIENTE', 0, 1, 0, 70)
GO
-- Nueva Sub Categoria CAPTACI�N, DEPURACI�N Y DISTRIBUCI�N DE AGUA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CAPTACI�N, DEPURACI�N Y DISTRIBUCI�N DE AGUA', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAPTACI�N, DEPURACI�N Y DISTRIBUCI�N DE AGUA', 0, 1, 0, 71)
GO
-- Nueva Categoria CONSTRUCCI�N --
INSERT INTO Giros_Categorias (Nombre) VALUES ('CONSTRUCCI�N')
GO

-- Nueva Sub Categoria CONSTRUCCI�N --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CONSTRUCCI�N', 7)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PREPARACI�N DEL TERRENO, EXCAVACIONES Y MOVIMIENTOS DE TIERRAS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE DEMOLICI�N Y EL DERRIBO DE EDIFICIOS Y OTRAS ESTRUCTURAS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCI�N DE EDIFICIOS COMPLETOS O DE PARTES DE EDIFICIOS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OBRAS DE INGENIER�A', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACONDICIONAMIENTO DE EDIFICIOS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OBRAS MENORES EN CONSTRUCCI�N (CONTRATISTAS, ALBANILES, CARPINTEROS)', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE EQUIPO DE CONSTRUCCI�N O DEMOLICI�N DOTADO DE OPERARIOS', 0, 1, 0, 72)
GO
-- Nueva Categoria COMERCIO AL POR MAYOR Y MENOR; REP. VEH.AUTOMOTORES/ENSERES DOM�STICOS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('COMERCIO AL POR MAYOR Y MENOR; REP. VEH.AUTOMOTORES/ENSERES DOM�STICOS')
GO

-- Nueva Sub Categoria VENTA DE VEH�CULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA DE VEH�CULOS AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE VEH�CULOS AUTOMOTORES (IMPORTACI�N, DISTRIBUCI�N) EXCEPTO MOTOCICLETAS', 0, 1, 0, 73)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA O COMPRAVENTA AL POR MENOR DE VEH�CULOS AUTOMOTORES NUEVOS O USADOS; EXCEPTO MOTOCICLETAS', 0, 1, 0, 73)
GO
-- Nueva Sub Categoria MANTENIMIENTO Y REPARACI�N DE VEH�CULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('MANTENIMIENTO Y REPARACI�N DE VEH�CULOS AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE LAVADO DE VEH�CULOS AUTOMOTORES', 0, 1, 0, 74)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE REMOLQUE DE VEH�CULOS (GRUAS)', 0, 1, 0, 74)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MANTENIMIENTO Y REPARACI�N DE VEH�CULOS AUTOMOTORES', 0, 1, 0, 74)
GO
-- Nueva Sub Categoria VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEH�CULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEH�CULOS AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEH�CULOS AUTOMOTORES', 0, 1, 0, 75)
GO
-- Nueva Sub Categoria VENTA, MANTENIMIENTO Y REPARACI�N DE MOTOCICLETAS Y SUS PARTES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA, MANTENIMIENTO Y REPARACI�N DE MOTOCICLETAS Y SUS PARTES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA DE MOTOCICLETAS', 0, 1, 0, 76)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA DE PIEZAS Y ACCESORIOS DE MOTOCICLETAS', 0, 1, 0, 76)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE MOTOCICLETAS', 0, 1, 0, 76)
GO
-- Nueva Sub Categoria VENTA AL POR MENOR DE COMBUSTIBLE PARA AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MENOR DE COMBUSTIBLE PARA AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE COMBUSTIBLE PARA AUTOMOTORES', 0, 1, 0, 77)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR A CAMBIO DE UNA RETRIBUCI�N O POR CONTRATA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR A CAMBIO DE UNA RETRIBUCI�N O POR CONTRATA', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORRETAJE DE PRODUCTOS AGR�COLAS', 0, 1, 0, 78)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORRETAJE DE GANADO (FERIAS DE GANADO)', 0, 1, 0, 78)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE CORRETAJES O REMATES N.C.P. (NO INCLUYE SERVICIOS DE MARTILLERO)', 0, 1, 0, 78)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE MATERIAS PRIMAS AGROPECUARIAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE MATERIAS PRIMAS AGROPECUARIAS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE ANIMALES VIVOS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS PECUARIOS (LANAS, PIELES, CUEROS SIN PROCESAR); EXCEPTO ALIMENTOS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MATERIAS PRIMAS AGR�COLAS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTA DE FRUTAS Y VERDURAS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTAS DE CARNES', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTAS DE PRODUCTOS DEL MAR (PESCADO, MARISCOS, ALGAS)', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTAS DE VINOS Y BEBIDAS ALCOH�LICAS Y DE FANTAS�A', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE CONFITES', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE TABACO Y PRODUCTOS DERIVADOS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE HUEVOS, LECHE, ABARROTES, Y OTROS ALIMENTOS N.C.P.', 0, 1, 0, 79)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE ENSERES DOM�STICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE ENSERES DOM�STICOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CALZADO', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MUEBLES', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE ART�CULOS EL�CTRICOS Y ELECTR�NICOS PARA EL HOGAR', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE ART�CULOS DE PERFUMER�A, COSM�TICOS, JABONES Y PRODUCTOS DE LIMPIEZA', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PAPEL Y CART�N', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE LIBROS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE REVISTAS Y PERI�DICOS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS FARMACEUTICOS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE INSTRUMENTOS CIENT�FICOS Y QUIR�RGICOS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE OTROS ENSERES DOM�STICOS N.C.P.', 0, 1, 0, 80)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS, DESECHOS NO AGROPECUARIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS, DESECHOS NO AGROPECUARIOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE COMBUSTIBLES L�QUIDOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE COMBUSTIBLES S�LIDOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE COMBUSTIBLES GASEOSOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS CONEXOS A LOS COMBUSTIBLES', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE METALES Y MINERALES METAL�FEROS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MADERA NO TRABAJADA Y PRODUCTOS RESULTANTES DE SU ELABORACI�N PRIMARIA', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MATERIALES DE CONSTRUCCI�N, ART�CULOS DE FERRETER�A Y RELACIONADOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS QU�MICOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE DESECHOS MET�LICOS (CHATARRA)', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE INSUMOS VETERINARIOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE OTROS PRODUCTOS INTERMEDIOS, DESPERDICIOS Y DESECHOS N.C.P.', 0, 1, 0, 81)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO Y MATERIALES CONEXOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO Y MATERIALES CONEXOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA AGR�COLA Y FORESTAL', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA METAL�RGICA', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA LA MINER�A', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA LA CONSTRUCCI�N', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACO', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA TEXTILES Y CUEROS', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE M�QUINAS Y EQUIPOS DE OFICINA; INCLUYE MATERIALES CONEXOS', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA Y EQUIPO DE TRANSPORTE EXCEPTO VEH�CULOS AUTOMOTORES', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA, HERRAMIENTAS, EQUIPO Y MATERIALES N.C.P.', 0, 1, 0, 82)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE OTROS PRODUCTOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE OTROS PRODUCTOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE OTROS PRODUCTOS N.C.P.', 0, 1, 0, 83)
GO
-- Nueva Sub Categoria COMERCIO AL POR MENOR NO ESPECIALIZADO EN ALMACENES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('COMERCIO AL POR MENOR NO ESPECIALIZADO EN ALMACENES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GRANDES ESTABLECIMIENTOS (VENTA DE ALIMENTOS); HIPERMERCADOS', 0, 1, 0, 84)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALMACENES MEDIANOS (VENTA DE ALIMENTOS); SUPERMERCADOS, MINIMARKETS', 0, 1, 0, 84)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALMACENES PEQUENOS (VENTA DE ALIMENTOS)', 0, 1, 0, 84)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GRANDES TIENDAS XXX PRODUCTOS DE FERRETER�A Y PARA EL HOGAR', 0, 1, 0, 84)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GRANDES TIENDAS XXX VESTUARIO Y PRODUCTOS PARA EL HOGAR', 0, 1, 0, 84)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE OTROS PRODUCTOS EN PEQUENOS ALMACENES NO ESPECIALIZADOS', 0, 1, 0, 84)
GO
-- Nueva Sub Categoria VENTA POR MENOR DE ALIMENTOS, BEBIDAS, TABACOS EN ALMC. ESPECIALIZADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA POR MENOR DE ALIMENTOS, BEBIDAS, TABACOS EN ALMC. ESPECIALIZADOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE BEBIDAS Y LICORES (BOTILLER�AS)', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CARNES (ROJAS, BLANCAS, OTRAS) PRODUCTOS C�RNICOS Y SIMILARES', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE VERDURAS Y FRUTAS (VERDULER�A)', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PESCADOS, MARISCOS Y PRODUCTOS CONEXOS', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PRODUCTOS DE PANADER�A Y PASTELER�A', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ALIMENTOS PARA MASCOTAS Y ANIMALES EN GENERAL', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE AVES Y HUEVOS', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PRODUCTOS DE CONFITER�AS, CIGARRILLOS, Y OTROS', 0, 1, 0, 85)
GO
-- Nueva Sub Categoria COMERCIO AL POR MENOR DE OTROS PROD. NUEVOS EN ALMC. ESPECIALIZADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('COMERCIO AL POR MENOR DE OTROS PROD. NUEVOS EN ALMC. ESPECIALIZADOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FARMACIAS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FARMACIAS INDEPENDIENTES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PRODUCTOS MEDICINALES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ART�CULOS ORTOP�DICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ART�CULOS DE TOCADOR Y COSM�TICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CALZADO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PRENDAS DE VESTIR EN GENERAL, INCLUYE ACCESORIOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE LANAS, HILOS Y SIMILARES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE MALETER�AS, TALABARTER�AS Y ART�CULOS DE CUERO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ROPA INTERIOR Y PRENDAS DE USO PERSONAL', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE TEXTILES PARA EL HOGAR Y OTROS PRODUCTOS TEXTILES N.C.P.', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ART�CULOS ELECTRODOM�STICOS Y ELECTR�NICOS PARA EL HOGAR', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CRISTALES, LOZAS, PORCELANA, MENAJE (CRISTALER�AS)', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE MUEBLES; INCLUYE COLCHONES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE INSTRUMENTOS MUSICALES (CASA DE M�SICA)', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE DISCOS, CASSETTES, DVD Y VIDEOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE L�MPARAS, APLIQU�S Y SIMILARES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE APARATOS, ART�CULOS, EQUIPO DE USO DOM�STICO N.C.P.', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ART�CULOS DE FERRETER�A Y MATERIALES DE CONSTRUCCI�N', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PINTURAS, BARNICES Y LACAS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE PRODUCTOS DE VIDRIO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ART�CULOS FOTOGR�FICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ART�CULOS �PTICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO POR MENOR DE JUGUETES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE LIBROS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE REVISTAS Y DIARIOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO DE ART�CULOS DE SUMINISTROS DE OFICINAS Y ART�CULOS DE ESCRITORIO EN GENERAL', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE COMPUTADORAS, SOFTWARES Y SUMINISTROS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARMER�AS, ART�CULOS DE CAZA Y PESCA', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE BICICLETAS Y SUS REPUESTOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ART�CULOS DEPORTIVOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ART�CULOS DE JOYER�A, FANTAS�AS Y RELOJER�AS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE GAS LICUADO EN BOMBONAS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CARB�N, LENA Y OTROS COMBUSTIBLES DE USO DOM�STICO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ART�CULOS T�PICOS (ARTESAN�AS)', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE FLORES, PLANTAS, �RBOLES, SEMILLAS, ABONOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE MASCOTAS Y ACCESORIOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTAS AL POR MENOR DE OTROS PRODUCTOS EN ALMACENES ESPECIALIZADOS N.C.P.', 0, 1, 0, 86)
GO
-- Nueva Sub Categoria VENTA AL POR MENOR EN ALMACENES DE ART�CULOS USADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MENOR EN ALMACENES DE ART�CULOS USADOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ANTIGUEDADES', 0, 1, 0, 87)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ROPA USADA', 0, 1, 0, 87)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ART�CULOS Y ARTEFACTOS USADOS N.C.P.', 0, 1, 0, 87)
GO
-- Nueva Sub Categoria COMERCIO AL POR MENOR NO REALIZADO EN ALMACENES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('COMERCIO AL POR MENOR NO REALIZADO EN ALMACENES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA POR CORREO', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V�A TELEF�NICA', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V�A INTERNET; COMERCIO ELECTR�NICO', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN PUESTOS DE VENTA Y MERCADOS', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR REALIZADA POR INDEPENDIENTES EN TRANSPORTE P�BLICO (LEY 20.388)', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR NO REALIZADA EN ALMACENES DE PRODUCTOS PROPIOS N.C.P.', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('M�QUINAS EXPENDEDORAS', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR A CAMBIO DE UNA RETRIBUCI�N O POR CONTRATA', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE VENTA AL POR MENOR NO REALIZADA EN ALMACENES N.C.P.', 0, 1, 0, 88)
GO
-- Nueva Sub Categoria REPARACI�N DE EFECTOS PERSONALES Y ENSERES DOM�STICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('REPARACI�N DE EFECTOS PERSONALES Y ENSERES DOM�STICOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE CALZADO Y OTROS ART�CULOS DE CUERO', 0, 1, 0, 89)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIONES EL�CTRICAS Y ELECTR�NICAS', 0, 1, 0, 89)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACI�N DE RELOJES Y JOYAS', 0, 1, 0, 89)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS REPARACIONES DE EFECTOS PERSONALES Y ENSERES DOM�STICOS N.C.P.', 0, 1, 0, 89)
GO
-- Nueva Categoria HOTELES Y RESTAURANTES --
INSERT INTO Giros_Categorias (Nombre) VALUES ('HOTELES Y RESTAURANTES')
GO

-- Nueva Sub Categoria HOTELES; CAMPAMENTOS Y OTROS TIPOS DE HOSPEDAJE TEMPORAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('HOTELES; CAMPAMENTOS Y OTROS TIPOS DE HOSPEDAJE TEMPORAL', 9)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('HOTELES', 0, 1, 0, 90)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MOTELES', 0, 1, 0, 90)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RESIDENCIALES', 0, 1, 0, 90)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE HOSPEDAJE TEMPORAL COMO CAMPING, ALBERGUES, POSADAS, REFUGIOS Y SIMILARES', 0, 1, 0, 90)
GO
-- Nueva Sub Categoria RESTAURANTES, BARES Y CANTINAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('RESTAURANTES, BARES Y CANTINAS', 9)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RESTAURANTES', 0, 1, 0, 91)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE COMIDA R�PIDA (BARES, FUENTES DE SODA, GELATER�AS, PIZZER�AS Y SIMILARES)', 0, 1, 0, 91)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CASINOS Y CLUBES SOCIALES', 0, 1, 0, 91)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE COMIDA PREPARADA EN FORMA INDUSTRIAL', 0, 1, 0, 91)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE BANQUETES, BODAS Y OTRAS CELEBRACIONES', 0, 1, 0, 91)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE OTROS ESTABLECIMIENTOS QUE EXPENDEN COMIDAS Y BEBIDAS', 0, 1, 0, 91)
GO
-- Nueva Categoria TRANSPORTE, ALMACENAMIENTO Y COMUNICACIONES --
INSERT INTO Giros_Categorias (Nombre) VALUES ('TRANSPORTE, ALMACENAMIENTO Y COMUNICACIONES')
GO

-- Nueva Sub Categoria TRANSPORTE POR FERROCARRILES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE POR FERROCARRILES', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE INTERURBANO DE PASAJEROS POR FERROCARRILES', 0, 1, 0, 92)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE CARGA POR FERROCARRILES', 0, 1, 0, 92)
GO
-- Nueva Sub Categoria OTROS TIPOS DE TRANSPORTE POR V�A TERRESTRE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('OTROS TIPOS DE TRANSPORTE POR V�A TERRESTRE', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE URBANO DE PASAJEROS V�A FERROCARRIL (INCLUYE METRO)', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE URBANO DE PASAJEROS V�A AUTOBUS (LOCOMOCI�N COLECTIVA)', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE INTERURBANO DE PASAJEROS V�A AUTOBUS', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE URBANO DE PASAJEROS V�A TAXI COLECTIVO', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TRANSPORTE ESCOLAR', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TRANSPORTE DE TRABAJADORES', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE TRANSPORTE REGULAR DE PASAJEROS POR V�A TERRESTRE N.C.P.', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTES POR TAXIS LIBRES Y RADIOTAXIS', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TRANSPORTE A TURISTAS', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE PASAJEROS EN VEH�CULOS DE TRACCI�N HUMANA Y ANIMAL', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE TRANSPORTE NO REGULAR DE PASAJEROS N.C.P.', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE CARGA POR CARRETERA', 0, 1, 0, 93)
GO
-- Nueva Sub Categoria TRANSPORTE POR TUBER�AS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE POR TUBER�AS', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE POR TUBER�AS', 0, 1, 0, 94)
GO
-- Nueva Sub Categoria TRANSPORTE MAR�TIMO Y DE CABOTAJE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE MAR�TIMO Y DE CABOTAJE', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE MAR�TIMO Y DE CABOTAJE DE PASAJEROS', 0, 1, 0, 95)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE MAR�TIMO Y DE CABOTAJE DE CARGA', 0, 1, 0, 95)
GO
-- Nueva Sub Categoria TRANSPORTE POR V�AS DE NAVEGACI�N INTERIORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE POR V�AS DE NAVEGACI�N INTERIORES', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE PASAJEROS POR V�AS DE NAVEGACI�N INTERIORES', 0, 1, 0, 96)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE CARGA POR V�AS DE NAVEGACI�N INTERIORES', 0, 1, 0, 96)
GO
-- Nueva Sub Categoria TRANSPORTE POR V�A A�REA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE POR V�A A�REA', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE REGULAR POR V�A A�REA DE PASAJEROS', 0, 1, 0, 97)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE REGULAR POR V�A A�REA DE CARGA', 0, 1, 0, 97)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE NO REGULAR POR V�A A�REA DE PASAJEROS', 0, 1, 0, 97)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE NO REGULAR POR V�A A�REA DE CARGA', 0, 1, 0, 97)
GO
-- Nueva Sub Categoria ACT. DE TRANSPORTE COMPLEMENTARIAS Y AUXILIARES; AGENCIAS DE VIAJE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. DE TRANSPORTE COMPLEMENTARIAS Y AUXILIARES; AGENCIAS DE VIAJE', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MANIPULACI�N DE LA CARGA', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ALMACENAMIENTO Y DEP�SITO', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TERMINALES TERRESTRES DE PASAJEROS', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTACIONAMIENTO DE VEH�CULOS Y PARQU�METROS', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PUERTOS Y AEROPUERTOS', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PRESTADOS POR CONCESIONARIOS DE CARRETERAS', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES CONEXAS AL TRANSPORTE N.C.P.', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS Y ORGANIZADORES DE VIAJES; ACTIVIDADES DE ASISTENCIA A TURISTAS N.C.P.', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE ADUANAS', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE TRANSPORTE', 0, 1, 0, 98)
GO
-- Nueva Sub Categoria ACTIVIDADES POSTALES Y DE CORREO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES POSTALES Y DE CORREO', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES POSTALES NACIONALES', 0, 1, 0, 99)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CORREO DISTINTAS DE LAS ACTIVIDADES POSTALES NACIONALES', 0, 1, 0, 99)
GO
-- Nueva Sub Categoria TELECOMUNICACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TELECOMUNICACIONES', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TELEFON�A FIJA', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TELEFON�A M�VIL', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PORTADORES TELEF�NICOS (LARGA DISTANCIA NACIONAL E INTERNACIONAL)', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TELEVISI�N NO ABIERTA', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PROVEEDORES DE INTERNET', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE LLAMADOS; INCLUYE ENV�O DE FAX', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE ACCESO A INTERNET', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE TELECOMUNICACIONES N.C.P.', 0, 1, 0, 100)
GO
-- Nueva Categoria INTERMEDIACI�N FINANCIERA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('INTERMEDIACI�N FINANCIERA')
GO

-- Nueva Sub Categoria INTERMEDIACI�N MONETARIA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('INTERMEDIACI�N MONETARIA', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('BANCA CENTRAL', 0, 1, 0, 101)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('BANCOS', 0, 1, 0, 101)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FINANCIERAS', 0, 1, 0, 101)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE INTERMEDIACI�N MONETARIA N.C.P.', 0, 1, 0, 101)
GO
-- Nueva Sub Categoria OTROS TIPOS DE INTERMEDIACI�N FINANCIERA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('OTROS TIPOS DE INTERMEDIACI�N FINANCIERA', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LEASING FINANCIERO', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LEASING HABITACIONAL', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FINANCIAMIENTO DEL FOMENTO DE LA PRODUCCI�N', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CR�DITO PRENDARIO', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FACTORING', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SECURITIZADORAS', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS INSTITUCIONES FINANCIERAS N.C.P.', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS DE INVERSI�N', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS MUTUOS', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FICES (FONDOS DE INVERSI�N DE CAPITAL EXTRANJERO)', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS PARA LA VIVIENDA', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS PARA OTROS FINES Y/O GENERALES', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SOCIEDADES DE INVERSI�N Y RENTISTAS DE CAPITALES MOBILIARIOS EN GENERAL', 0, 1, 0, 102)
GO
-- Nueva Sub Categoria FINANCIACI�N PLANES DE SEG. Y DE PENSIONES, EXCEPTO AFILIACI�N OBLIG. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FINANCIACI�N PLANES DE SEG. Y DE PENSIONES, EXCEPTO AFILIACI�N OBLIG.', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PLANES DE SEGURO DE VIDA', 0, 1, 0, 103)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PLANES DE REASEGUROS DE VIDA', 0, 1, 0, 103)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS DE PENSIONES (AFP)', 0, 1, 0, 103)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PLANES DE SEGUROS GENERALES', 0, 1, 0, 103)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PLANES DE REASEGUROS GENERALES', 0, 1, 0, 103)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ISAPRES', 0, 1, 0, 103)
GO
-- Nueva Sub Categoria ACT. AUX. DE LA INTERMEDIACI�N FINANCIERA, EXCEPTO PLANES DE SEGUROS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. AUX. DE LA INTERMEDIACI�N FINANCIERA, EXCEPTO PLANES DE SEGUROS', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRACI�N DE MERCADOS FINANCIEROS', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORREDORES DE BOLSA', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENTES DE VALORES', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE CORRETAJE', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('C�MARA DE COMPENSACI�N', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORA DE TARJETAS DE CR�DITO', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE ASESOR�A, CONSULTOR�A FINANCIERA Y DE APOYO AL GIRO', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CLASIFICADORES DE RIESGOS', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CASAS DE CAMBIO Y OPERADORES DE DIVISA', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES AUXILIARES DE LA INTERMEDIACI�N FINANCIERA N.C.P.', 0, 1, 0, 104)
GO
-- Nueva Sub Categoria ACT. AUXILIARES DE FINANCIACI�N DE PLANES DE SEGUROS Y DE PENSIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. AUXILIARES DE FINANCIACI�N DE PLANES DE SEGUROS Y DE PENSIONES', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORREDORES DE SEGUROS', 0, 1, 0, 105)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENTES Y LIQUIDADORES DE SEGUROS', 0, 2, 0, 105)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES AUXILIARES DE LA FINANCIACI�N DE PLANES DE SEGUROS Y DE PENSIONES N.C.P.', 0, 0, 0, 105)
GO
-- Nueva Categoria ACTIVIDADES INMOBILIARIAS, EMPRESARIALES Y DE ALQUILER --
INSERT INTO Giros_Categorias (Nombre) VALUES ('ACTIVIDADES INMOBILIARIAS, EMPRESARIALES Y DE ALQUILER')
GO

-- Nueva Sub Categoria ACTIVIDADES INMOBILIARIAS REALIZADAS CON BIENES PROPIOS O ARRENDADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES INMOBILIARIAS REALIZADAS CON BIENES PROPIOS O ARRENDADOS', 12)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ARRIENDO DE INMUEBLES AMOBLADOS O CON EQUIPOS Y MAQUINARIAS', 0, 1, 0, 106)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMPRA, VENTA Y ALQUILER (EXCEPTO AMOBLADOS) DE INMUEBLES PROPIOS O ARRENDADOS', 0, 1, 0, 106)
GO
-- Nueva Categoria - 0 --
INSERT INTO Giros_Categorias (Nombre) VALUES ('- 0')
GO

-- Nueva Categoria - 1 - 1 --
INSERT INTO Giros_Categorias (Nombre) VALUES ('- 1 - 1')
GO

-- Nueva Sub Categoria ACT. INMOBILIARIAS REALIZADAS A CAMBIO DE RETRIBUCI�N O POR CONTRATA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. INMOBILIARIAS REALIZADAS A CAMBIO DE RETRIBUCI�N O POR CONTRATA', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORREDORES DE PROPIEDADES', 0, 0, 0, 107)
GO
-- Nueva Sub Categoria ALQUILER EQUIPO DE TRANSPORTE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ALQUILER EQUIPO DE TRANSPORTE', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE AUTOS Y CAMIONETAS SIN CHOFER', 0, 1, 0, 108)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE OTROS EQUIPOS DE TRANSPORTE POR V�A TERRESTRE SIN OPERARIOS', 0, 1, 0, 108)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE TRANSPORTE POR V�A ACU�TICA SIN TRIPULACI�N', 0, 1, 0, 108)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE EQUIPO DE TRANSPORTE POR V�A A�REA SIN TRIPULANTES', 0, 1, 0, 108)
GO
-- Nueva Sub Categoria ALQUILER DE OTROS TIPOS DE MAQUINARIA Y EQUIPO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ALQUILER DE OTROS TIPOS DE MAQUINARIA Y EQUIPO', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MAQUINARIA Y EQUIPO AGROPECUARIO', 0, 1, 0, 109)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MAQUINARIA Y EQUIPO DE CONSTRUCCI�N E INGENIER�A CIVIL', 0, 1, 0, 109)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MAQUINARIA Y EQUIPO DE OFICINA (SIN OPERARIOS NI SERVICIO ADMINISTRATIVO)', 0, 1, 0, 109)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE OTROS TIPOS DE MAQUINARIAS Y EQUIPOS N.C.P.', 0, 1, 0, 109)
GO
-- Nueva Sub Categoria ALQUILER DE EFECTOS PERSONALES Y ENSERES DOM�STICOS N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ALQUILER DE EFECTOS PERSONALES Y ENSERES DOM�STICOS N.C.P.', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE BICICLETAS Y ART�CULOS PARA DEPORTES', 0, 1, 0, 110)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ARRIENDO DE VIDEOS, JUEGOS DE VIDEO, Y EQUIPOS REPRODUCTORES DE VIDEO, M�SICA Y SIMILARES', 0, 1, 0, 110)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MOBILIARIO PARA EVENTOS (SILLAS, MESAS, MESONES, VAJILLAS, TOLDOS Y RELACIONADOS)', 0, 1, 0, 110)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE OTROS EFECTOS PERSONALES Y ENSERES DOM�STICOS N.C.P.', 0, 1, 0, 110)
GO
-- Nueva Sub Categoria SERVICIOS INFORM�TICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('SERVICIOS INFORM�TICOS', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ASESORES Y CONSULTORES EN INFORM�TICA (SOFTWARE)', 0, 2, 0, 111)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PROCESAMIENTO DE DATOS Y ACTIVIDADES RELACIONADAS CON BASES DE DATOS', 0, 1, 0, 111)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE SERVICIOS INTEGRALES DE INFORM�TICA', 0, 1, 0, 111)
GO
-- Nueva Sub Categoria MANTENIMIENTO Y REPARACI�N DE MAQUINARIA DE OFICINA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('MANTENIMIENTO Y REPARACI�N DE MAQUINARIA DE OFICINA', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MANTENIMIENTO Y REPARACI�N DE MAQUINARIA DE OFICINA, CONTABILIDAD E INFORM�TICA', 0, 1, 0, 112)
GO
-- Nueva Sub Categoria ACTIVIDADES DE INVESTIGACIONES Y DESARROLLO EXPERIMENTAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE INVESTIGACIONES Y DESARROLLO EXPERIMENTAL', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS NATURALES Y LA INGENIER�A', 0, 1, 0, 113)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS SOCIALES Y LAS HUMANIDADES', 0, 1, 0, 113)
GO
-- Nueva Sub Categoria ACTIVIDADES JUR�DICAS Y DE ASESORAMIENTO EMPRESARIAL EN GENERAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES JUR�DICAS Y DE ASESORAMIENTO EMPRESARIAL EN GENERAL', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS JUR�DICOS', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO NOTARIAL', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSERVADOR DE BIENES RAICES', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECEPTORES JUDICIALES', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ARBITRAJES, S�NDICOS, PERITOS Y OTROS', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CONTABILIDAD, TENEDUR�A DE LIBROS Y AUDITOR�A; ASESORAMIENTOS TRIBUTARIOS', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INVESTIGACI�N DE MERCADOS Y REALIZACI�N DE ENCUESTAS DE OPINI�N P�BLICA', 0, 0, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE ASESORAMIENTO EMPRESARIAL Y EN MATERIA DE GESTI�N', 0, 0, 0, 114)
GO
-- Nueva Sub Categoria ACTIVIDADES DE ARQUITECTURA E INGENIER�A Y OTRAS ACTIVIDADES T�CNICAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE ARQUITECTURA E INGENIER�A Y OTRAS ACTIVIDADES T�CNICAS', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ARQUITECTURA Y T�CNICO RELACIONADO', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE SERVICIOS GEOL�GICOS Y DE PROSPECCI�N', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PROFESIONALES EN GEOLOG�A Y PROSPECCI�N', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE SERVICIOS DE TOPOGRAF�A Y AGRIMENSURA', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PROFESIONALES DE TOPOGRAF�A Y AGRIMENSURA', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE INGENIER�A PRESTADOS POR EMPRESAS N.C.P.', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE INGENIER�A PRESTADOS POR PROFESIONALES N.C.P.', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DESARROLLADOS POR PROFESIONALES', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE REVISI�N T�CNICA DE VEH�CULOS AUTOMOTORES', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE ENSAYOS Y ANALISIS T�CNICOS', 0, 1, 0, 115)
GO
-- Nueva Sub Categoria PUBLICIDAD --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('PUBLICIDAD', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE PUBLICIDAD', 0, 1, 0, 116)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES EN PUBLICIDAD', 0, 2, 0, 116)
GO
-- Nueva Sub Categoria ACT. EMPRESARIALES Y DE PROFESIONALES PRESTADAS A EMPRESAS N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. EMPRESARIALES Y DE PROFESIONALES PRESTADAS A EMPRESAS N.C.P.', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS SUMINISTRO DE PERSONAL; EMPRESAS SERVICIOS TRANSITORIOS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE RECLUTAMIENTO DE PERSONAL', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE INVESTIGACI�N', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS INTEGRALES DE SEGURIDAD', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE VALORES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES RELACIONADOS CON SEGURIDAD', 0, 2, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE LIMPIEZA DE EDIFICIOS RESIDENCIALES Y NO RESIDENCIALES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DESRATIZACI�N Y FUMIGACI�N NO AGR�COLA', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE REVELADO, IMPRESI�N, AMPLIACI�N DE FOTOGRAF�AS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE FOTOGRAF�A PUBLICITARIA', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES DE FOTOGRAF�A', 0, 2, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ENVASADO Y EMPAQUE', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE COBRANZA DE CUENTAS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EVALUACI�N Y CALIFICACI�N DEL GRADO DE SOLVENCIA', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ASESOR�AS EN LA GESTI�N DE LA COMPRA O VENTA DE PEQUENAS Y MEDIANAS EMPRESAS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISENADORES DE VESTUARIO', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISENADORES DE INTERIORES', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS DISENADORES N.C.P.', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE TAQUIGRAF�A, REPRODUCCI�N, DESPACHO DE CORRESPONDENCIA, Y OTRAS LABORES DE OFICINA', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES DE TRADUCCI�N, INTERPRETACI�N Y LABORES DE OFICINA', 0, 2, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE TRADUCCI�N E INTERPRETACI�N', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE FOTOCOPIAS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE CONTRATACI�N DE ACTORES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE SUBASTA (MARTILLEROS)', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GALER�AS DE ARTE', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FERIAS DE EXPOSICIONES CON FINES EMPRESARIALES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE CONTESTACI�N DE LLAMADAS (CALL CENTER)', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES EMPRESARIALES N.C.P.', 0, 1, 0, 117)
GO
-- Nueva Categoria PLANES DE SEG. SOCIAL AFILIACI�N OBLIGATORIA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('PLANES DE SEG. SOCIAL AFILIACI�N OBLIGATORIA')
GO

-- Nueva Sub Categoria GOBIERNO CENTRAL Y ADMINISTRACI�N P�BLICA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('GOBIERNO CENTRAL Y ADMINISTRACI�N P�BLICA', 15)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GOBIERNO CENTRAL', 0, 1, 0, 118)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MUNICIPALIDADES', 0, 1, 0, 118)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DEL PODER JUDICIAL', 0, 1, 0, 118)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DEL PODER LEGISLATIVO', 0, 1, 0, 118)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RELACIONES EXTERIORES', 0, 1, 0, 118)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE DEFENSA', 0, 1, 0, 118)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE MANTENIMIENTO DEL ORDEN P�BLICO Y DE SEGURIDAD', 0, 1, 0, 118)
GO
-- Nueva Sub Categoria ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACI�N OBLIGATORIA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACI�N OBLIGATORIA', 15)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACI�N OBLIGATORIA RELACIONADOS CON SALUD', 0, 1, 0, 119)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAJAS DE COMPENSACI�N', 0, 1, 0, 119)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACI�N OBLIGATORIA', 0, 1, 0, 119)
GO
-- Nueva Categoria ENSE�ANZA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('ENSE�ANZA')
GO

-- Nueva Sub Categoria ENSE�ANZA PREESCOLAR, PRIMARIA, SECUNDARIA Y SUPERIOR ; PROFESORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ENSE�ANZA PREESCOLAR, PRIMARIA, SECUNDARIA Y SUPERIOR ; PROFESORES', 16)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSE�ANZA PREESCOLAR', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSE�ANZA PRIMARIA', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSE�ANZA SECUNDARIA DE FORMACI�N GENERAL', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSE�ANZA SECUNDARIA DE FORMACI�N T�CNICA Y PROFESIONAL', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('UNIVERSIDADES', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INSTITUTOS PROFESIONALES', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE FORMACI�N T�CNICA', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSE�ANZA PRIMARIA Y SECUNDARIA PARA ADULTOS', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSE�ANZA PREUNIVERSITARIA', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDUCACI�N EXTRAESCOLAR (ESCUELA DE CONDUCCI�N, M�SICA, MODELAJE, ETC.)', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDUCACI�N A DISTANCIA (INTERNET, CORRESPONDENCIA, OTRAS)', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES DE EDUCACI�N', 0, 2, 0, 120)
GO
-- Nueva Categoria SERVICIOS SOCIALES Y DE SALUD --
INSERT INTO Giros_Categorias (Nombre) VALUES ('SERVICIOS SOCIALES Y DE SALUD')
GO

-- Nueva Sub Categoria ACTIVIDADES RELACIONADAS CON LA SALUD HUMANA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES RELACIONADAS CON LA SALUD HUMANA', 17)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('HOSPITALES Y CL�NICAS', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CL�NICAS PSIQUIATRICAS, CENTROS DE REHABILITACI�N, ASILOS Y CL�NICAS DE REPOSO', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE M�DICOS EN FORMA INDEPENDIENTE', 0, 2, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS M�DICOS DE ATENCI�N AMBULATORIA (CENTROS M�DICOS)', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ODONT�LOGOS EN FORMA INDEPENDIENTE', 0, 2, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE ATENCI�N ODONTOL�GICA', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LABORATORIOS CL�NICOS; INCLUYE BANCOS DE SANGRE', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS PROFESIONALES DE LA SALUD', 0, 2, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES EMPRESARIALES RELACIONADAS CON LA SALUD HUMANA', 0, 1, 0, 121)
GO
-- Nueva Sub Categoria ACTIVIDADES VETERINARIAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES VETERINARIAS', 17)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CL�NICAS VETERINARIAS', 0, 1, 0, 122)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE M�DICOS VETERINARIOS EN FORMA INDEPENDIENTE', 0, 2, 0, 122)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE OTROS PROFESIONALES INDEPENDIENTES EN EL �REA VETERINARIA', 0, 2, 0, 122)
GO
-- Nueva Sub Categoria ACTIVIDADES DE SERVICIOS SOCIALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE SERVICIOS SOCIALES', 17)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS SOCIALES CON ALOJAMIENTO', 0, 1, 0, 123)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS SOCIALES SIN ALOJAMIENTO', 0, 1, 0, 123)
GO
-- Nueva Categoria OTRAS ACTIVIDADES DE SERVICIOS COMUNITARIAS, SOCIALES Y PERSONALES --
INSERT INTO Giros_Categorias (Nombre) VALUES ('OTRAS ACTIVIDADES DE SERVICIOS COMUNITARIAS, SOCIALES Y PERSONALES')
GO

-- Nueva Sub Categoria ELIMINACI�N DE DESPERDICIOS Y AGUAS RESIDUALES, SANEAMIENTO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELIMINACI�N DE DESPERDICIOS Y AGUAS RESIDUALES, SANEAMIENTO', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE VERTEDEROS', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('BARRIDO DE EXTERIORES', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECOGIDA Y ELIMINACI�N DE DESECHOS', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE EVACUACI�N DE RILES Y AGUAS SERVIDAS', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TRATAMIENTO DE RILES Y AGUAS SERVIDAS', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE MANEJO DE DESPERDICIOS', 0, 1, 0, 124)
GO
-- Nueva Sub Categoria ACT. DE ORGANIZACIONES EMPRESARIALES, PROFESIONALES Y DE EMPLEADORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. DE ORGANIZACIONES EMPRESARIALES, PROFESIONALES Y DE EMPLEADORES', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE ORGANIZACIONES EMPRESARIALES Y DE EMPLEADORES', 0, 1, 0, 125)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COLEGIOS PROFESIONALES', 0, 1, 0, 125)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE OTRAS ORGANIZACIONES PROFESIONALES', 0, 1, 0, 125)
GO
-- Nueva Sub Categoria ACTIVIDADES DE SINDICATOS Y DE OTRAS ORGANIZACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE SINDICATOS Y DE OTRAS ORGANIZACIONES', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE SINDICATOS', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE ORGANIZACIONES RELIGIOSAS', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE ORGANIZACIONES POL�TICAS', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE MADRES Y UNIDADES VECINALES Y COMUNALES', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CLUBES SOCIALES', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE INSTITUTOS DE ESTUDIOS, FUNDACIONES, CORPORACIONES DE DESARROLLO (EDUCACI�N, SALUD)', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE OTRAS ASOCIACIONES N.C.P.', 0, 1, 0, 126)
GO
-- Nueva Sub Categoria ACT. DE CINEMATOGRAF�A, RADIO Y TV Y OTRAS ACT. DE ENTRETENIMIENTO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. DE CINEMATOGRAF�A, RADIO Y TV Y OTRAS ACT. DE ENTRETENIMIENTO', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCI�N DE PEL�CULAS CINEMATOGR�FICAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISTRIBUIDORA CINEMATOGR�FICAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXHIBICI�N DE FILMES Y VIDEOCINTAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE TELEVISI�N', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE RADIO', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE PRODUCCI�N DE RECITALES Y OTROS EVENTOS MUSICALES MASIVOS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE PRODUCCI�N TEATRAL Y OTROS N.C.P.', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES EMPRESARIALES DE ARTISTAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES ART�STICAS; FUNCIONES DE ARTISTAS, ACTORES, M�SICOS, CONFERENCISTAS, OTROS', 0, 2, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE VENTA DE BILLETES DE TEATRO, SALAS DE CONCIERTO Y DE TEATRO', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INSTRUCTORES DE DANZA', 0, 2, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE DISCOTECAS, CABARET, SALAS DE BAILE Y SIMILARES', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE PARQUES DE ATRACCIONES Y CENTROS SIMILARES', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESPECT�CULOS CIRCENSES, DE T�TERES U OTROS SIMILARES', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE ENTRETENIMIENTO N.C.P.', 0, 0, 0, 127)
GO
-- Nueva Sub Categoria ACTIVIDADES DE AGENCIAS DE NOTICIAS Y SERVICIOS PERIOD�STICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE AGENCIAS DE NOTICIAS Y SERVICIOS PERIOD�STICOS', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE NOTICIAS', 0, 1, 0, 128)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERIOD�STICOS PRESTADO POR PROFESIONALES', 0, 2, 0, 128)
GO
-- Nueva Sub Categoria ACTIVIDADES DE BIBLIOTECAS, ARCHIVOS Y MUSEOS Y OTRAS ACT. CULTURALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE BIBLIOTECAS, ARCHIVOS Y MUSEOS Y OTRAS ACT. CULTURALES', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE BIBLIOTECAS Y ARCHIVOS', 0, 1, 0, 129)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE MUSEOS Y PRESERVACI�N DE LUGARES Y EDIFICIOS HIST�RICOS', 0, 1, 0, 129)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE JARDINES BOT�NICOS Y ZOOL�GICOS Y DE PARQUES NACIONALES', 0, 1, 0, 129)
GO
-- Nueva Sub Categoria ACTIVIDADES DEPORTIVAS Y OTRAS ACTIVIDADES DE ESPARCIMIENTO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DEPORTIVAS Y OTRAS ACTIVIDADES DE ESPARCIMIENTO', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACI�N DE INSTALACIONES ESPECIALIZADAS PARA LAS PRACTICAS DEPORTIVAS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CLUBES DE DEPORTES Y ESTADIOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUTBOL PROFESIONAL', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUTBOL AMATEUR', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('HIP�DROMOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PROMOCI�N Y ORGANIZACI�N DE ESPECT�CULOS DEPORTIVOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESCUELAS PARA DEPORTES', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES RELACIONADAS AL DEPORTE N.C.P.', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('1STEMAS DE JUEGOS DE AZAR MASIVOS.', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CASINO DE JUEGOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SALAS DE BILLAR, BOWLING, POOL Y JUEGOS ELECTR�NICOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONTRATACI�N DE ACTORES PARA CINE, TV, Y TEATRO', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE DIVERSI�N Y ESPARCIMIENTOS N.C.P.', 0, 0, 0, 130)
GO
-- Nueva Sub Categoria OTRAS ACTIVIDADES DE SERVICIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('OTRAS ACTIVIDADES DE SERVICIOS', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LAVADO Y LIMPIEZA DE PRENDAS DE TELA Y DE PIEL, INCLUSO LAS LIMPIEZAS EN SECO', 0, 1, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PELUQUER�AS Y SALONES DE BELLEZA', 0, 0, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS FUNERARIOS', 0, 1, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS EN CEMENTERIOS', 0, 1, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE CARROZAS', 0, 1, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE SERVICIOS FUNERARIOS Y OTRAS ACTIVIDADES CONEXAS', 0, 1, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE MANTENIMIENTO', 0, 1, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE SERVICIOS PERSONALES N.C.P.', 0, 2, 0, 131)
GO
-- Nueva Categoria CONSEJO DE ADMINISTRACI�N DE EDIFICIOS Y CONDOMINIOS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('CONSEJO DE ADMINISTRACI�N DE EDIFICIOS Y CONDOMINIOS')
GO

-- Nueva Sub Categoria CONSEJO DE ADMINISTRACI�N DE EDIFICIOS Y CONDOMINIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CONSEJO DE ADMINISTRACI�N DE EDIFICIOS Y CONDOMINIOS', 19)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('HOGARES PRIVADOS INDIVIDUALES CON SERVICIO DOM�STICO', 0, 0, 0, 132)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSEJO DE ADMINISTRACI�N DE EDIFICIOS Y CONDOMINIOS', 0, 1, 0, 132)
GO
-- Nueva Categoria ORGANIZACIONES Y �RGANOS EXTRATERRITORIALES --
INSERT INTO Giros_Categorias (Nombre) VALUES ('ORGANIZACIONES Y �RGANOS EXTRATERRITORIALES')
GO

-- Nueva Sub Categoria ORGANIZACIONES Y �RGANOS EXTRATERRITORIALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ORGANIZACIONES Y �RGANOS EXTRATERRITORIALES', 20)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ORGANIZACIONES Y �RGANOS EXTRATERRITORIALES', 0, 1, 0, 133)
GO
