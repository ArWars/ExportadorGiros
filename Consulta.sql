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
-- Nueva Categoria AGRICULTURA, GANADERÍA, CAZA Y SILVICULTURA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('AGRICULTURA, GANADERÍA, CAZA Y SILVICULTURA')
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO, PRODUCCIÓN DE LUPINO', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE OTRAS LEGUMBRES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PAPAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE CAMOTES O BATATAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE OTROS TUBÉRCULOS N.C.P', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE RAPS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE MARAVILLA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE OTRAS OLEAGINOSAS N.C.P.', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCIÓN DE SEMILLAS DE CEREALES, LEGUMBRES, OLEAGINOSAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE REMOLACHA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE TABACO', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE FIBRAS VEGETALES INDUSTRIALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PLANTAS AROMÁTICAS O MEDICINALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS CULTIVOS N.C.P.', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO TRADICIONAL DE HORTALIZAS FRESCAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE HORTALIZAS EN INVERNADEROS Y CULTIVOS HIDROPONICOS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO ORGÁNICO DE HORTALIZAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PLANTAS VIVAS Y PRODUCTOS DE LA FLORICULTURA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCIÓN DE SEMILLAS DE FLORES, PRADOS, FRUTAS Y HORTALIZAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCIÓN EN VIVEROS; EXCEPTO ESPECIES FORESTALES', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO Y RECOLECCIÓN DE HONGOS, TRUFAS Y SAVIA; PRODUCCIÓN DE JARABE DE ARCE DE AZÚCAR Y AZÚCAR', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE UVA DESTINADA A PRODUCCIÓN DE PISCO Y AGUARDIENTE', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE UVA DESTINADA A PRODUCCIÓN DE VINO', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE UVA DE MESA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE FRUTALES EN ÁRBOLES O ARBUSTOS CON CICLO DE VIDA MAYOR A UNA TEMPORADA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE FRUTALES MENORES EN PLANTAS CON CICLO DE VIDA DE UNA TEMPORADA', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE PLANTAS CUYAS HOJAS O FRUTAS SE UTILIZAN PARA PREPARAR BEBIDAS', 0, 1, 0, 1)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE ESPECIAS', 0, 1, 0, 1)
GO
-- Nueva Sub Categoria CRÍA DE ANIMALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CRÍA DE ANIMALES', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE GANADO BOVINO PARA LA PRODUCCIÓN LECHERA', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE GANADO PARA PRODUCCIÓN DE CARNE, O COMO GANADO REPRODUCTOR', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE GANADO OVINO Y/O EXPLOTACIÓN LANERA', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE EQUINOS (CABALLARES, MULARES)', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE PORCINOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE AVES DE CORRAL PARA LA PRODUCCIÓN DE CARNE', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE AVES DE CORRAL PARA LA PRODUCCIÓN DE HUEVOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE AVES FINAS O NO TRADICIONALES', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CRÍA DE ANIMALES DOMÉSTICOS; PERROS Y GATOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('APICULTURA', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RANICULTURA, HELICICULTURA U OTRA ACTIVIDAD CON ANIMALES MENORES O INSECTOS', 0, 1, 0, 2)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS EXPLOTACIONES DE ANIMALES NO CLASIFICADOS EN OTRA PARTE, INCLUIDO SUS SUBPRODUCTOS', 0, 1, 0, 2)
GO
-- Nueva Sub Categoria CULTIVO PROD. AGRÍCOLAS EN COMBINACIÓN CON CRÍA DE ANIMALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CULTIVO PROD. AGRÍCOLAS EN COMBINACIÓN CON CRÍA DE ANIMALES', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACIÓN MIXTA', 0, 1, 0, 3)
GO
-- Nueva Sub Categoria ACTIVIDADES DE SERVICIOS AGRÍCOLAS Y GANADEROS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE SERVICIOS AGRÍCOLAS Y GANADEROS', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE CORTE Y ENFARDADO DE FORRAJE', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE RECOLECCIÓN, EMPACADO, TRILLA, DESCASCARAMIENTO Y DESGRANE; Y SIMILARES', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE ROTURACIÓN SIEMBRA Y SIMILARES', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DESTRUCCIÓN DE PLAGAS; PULVERIZACIONES, FUMIGACIONES U OTRAS', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COSECHA, PODA, AMARRE Y LABORES DE ADECUACIÓN DE LA PLANTA U OTRAS', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS AGRÍCOLAS N.C.P.', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ADIESTRAMIENTO, GUARDERÍA Y CUIDADOS DE MASCOTAS; EXCEPTO ACTIVIDADES VETERINARIAS', 0, 1, 0, 4)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS GANADEROS, EXCEPTO ACTIVIDADES VETERINARIAS', 0, 1, 0, 4)
GO
-- Nueva Sub Categoria CAZA ORDINARIA Y MEDIANTE TRAMPAS, REPOBLACIÓN, ACT. SERVICIO CONEXAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CAZA ORDINARIA Y MEDIANTE TRAMPAS, REPOBLACIÓN, ACT. SERVICIO CONEXAS', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAZA DE MAMÍFEROS MARINOS; EXCEPTO BALLENAS', 0, 1, 0, 5)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAZA ORDINARIA Y MEDIANTE TRAMPAS, Y ACTIVIDADES DE SERVICIOS CONEXAS', 0, 1, 0, 5)
GO
-- Nueva Sub Categoria SILVICULTURA, EXTRACCIÓN DE MADERA Y ACTIVIDADES DE SERVICIOS CONEXAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('SILVICULTURA, EXTRACCIÓN DE MADERA Y ACTIVIDADES DE SERVICIOS CONEXAS', 1)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACIÓN DE BOSQUES', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECOLECCIÓN DE PRODUCTOS FORESTALES SILVESTRES', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACIÓN DE VIVEROS DE ESPECIES FORESTALES', 0, 1, 0, 6)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE FORESTACIÓN', 0, 1, 0, 6)
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

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO DE ESPECIES ACUÁTICAS EN CUERPO DE AGUA DULCE', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPRODUCCIÓN Y CRIANZAS DE PECES MARINOS', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CULTIVO, REPRODUCCIÓN Y CRECIMIENTOS DE VEGETALES ACUÁTICOS', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPRODUCCIÓN Y CRÍA DE MOLUSCOS Y CRUSTACEOS.', 0, 1, 0, 7)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS RELACIONADOS CON LA ACUICULTURA, NO INCLUYE SERVICIOS PROFESIONALES Y DE EXTRACCIÓN', 0, 1, 0, 7)
GO
-- Nueva Sub Categoria PESCA EXTRACTIVA: Y SERVICIOS RELACIONADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('PESCA EXTRACTIVA: Y SERVICIOS RELACIONADOS', 2)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PESCA INDUSTRIAL', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDAD PESQUERA DE BARCOS FACTORÍAS', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PESCA ARTESANAL. EXTRACCIÓN DE RECURSOS ACUÁTICOS EN GENERAL; INCLUYE BALLENAS', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECOLECCIÓN DE PRODUCTOS MARINOS, COMO PERLAS NATURALES, ESPONJAS, CORALES Y ALGAS.', 0, 1, 0, 8)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS RELACIONADOS CON LA PESCA, NO INCLUYE SERVICIOS PROFESIONALES', 0, 1, 0, 8)
GO
-- Nueva Categoria EXPLOTACIÓN DE MINAS Y CANTERAS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('EXPLOTACIÓN DE MINAS Y CANTERAS')
GO

-- Nueva Sub Categoria EXTRACCIÓN, AGLOMERACIÓN DE CARBÓN DE PIEDRA, LIGNITO Y TURBA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXTRACCIÓN, AGLOMERACIÓN DE CARBÓN DE PIEDRA, LIGNITO Y TURBA', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN, AGLOMERACIÓN DE CARBÓN DE PIEDRA, LIGNITO Y TURBA', 0, 1, 0, 9)
GO
-- Nueva Sub Categoria EXTRACCIÓN DE PETRÓLEO CRUDO Y GAS NATURAL; ACTIVIDADES RELACIONADAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXTRACCIÓN DE PETRÓLEO CRUDO Y GAS NATURAL; ACTIVIDADES RELACIONADAS', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE PETRÓLEO CRUDO Y GAS NATURAL', 0, 1, 0, 10)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE SERVICIOS RELACIONADAS CON LA EXTRACCIÓN DE PETRÓLEO Y GAS', 0, 1, 0, 10)
GO
-- Nueva Sub Categoria EXTRACCIÓN DE MINERALES METALÍFEROS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXTRACCIÓN DE MINERALES METALÍFEROS', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE MINERALES DE URANIO Y TORIO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE MINERALES DE HIERRO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE ORO Y PLATA', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE ZINC Y PLOMO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE MANGANESO', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE OTROS MINERALES METALÍFEROS N.C.P.', 0, 1, 0, 11)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE COBRE', 0, 1, 0, 11)
GO
-- Nueva Sub Categoria EXPLOTACIÓN DE MINAS Y CANTERAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('EXPLOTACIÓN DE MINAS Y CANTERAS', 3)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE PIEDRA, ARENA Y ARCILLA', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE NITRATOS Y YODO', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE SAL', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXTRACCIÓN DE LITIO Y CLORUROS, EXCEPTO SAL', 0, 1, 0, 12)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACIÓN DE OTRAS MINAS Y CANTERAS N.C.P.', 0, 1, 0, 12)
GO
-- Nueva Categoria INDUSTRIAS MANUFACTURERAS NO METÁLICAS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('INDUSTRIAS MANUFACTURERAS NO METÁLICAS')
GO

-- Nueva Sub Categoria PRODUCCIÓN, PROCESAMIENTO Y CONSERVACIÓN DE ALIMENTOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('PRODUCCIÓN, PROCESAMIENTO Y CONSERVACIÓN DE ALIMENTOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCIÓN, PROCESAMIENTO DE CARNES ROJAS Y PRODUCTOS CÁRNICOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSERVACIÓN DE CARNES ROJAS (FRIGORÍFICOS)', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCIÓN, PROCESAMIENTO Y CONSERVACIÓN DE CARNES DE AVE Y OTRAS CARNES DISTINTAS A LAS ROJAS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE CECINAS, EMBUTIDOS Y CARNES EN CONSERVA.', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCIÓN DE HARINA DE PESCADO', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS ENLATADOS DE PESCADO Y MARISCOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE CONGELADOS DE PESCADOS Y MARISCOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE PRODUCTOS AHUMADOS, SALADOS, DESHIDRATADOS Y OTROS PROCESOS SIMILARES', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE PRODUCTOS EN BASE A VEGETALES ACUÁTICOS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN Y CONSERVACIÓN DE FRUTAS, LEGUMBRES Y HORTALIZAS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE ACEITES Y GRASAS DE ORIGEN VEGETAL', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE ACEITES Y GRASAS DE ORIGEN ANIMAL, EXCEPTO LAS MANTEQUILLAS', 0, 1, 0, 13)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE ACEITES Y GRASAS DE ORIGEN MARINO', 0, 1, 0, 13)
GO
-- Nueva Sub Categoria ELABORACIÓN DE PRODUCTOS LÁCTEOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACIÓN DE PRODUCTOS LÁCTEOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE LECHE, MANTEQUILLA, PRODUCTOS LÁCTEOS Y DERIVADOS', 0, 1, 0, 14)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE QUESOS', 0, 1, 0, 14)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE POSTRES A BASE DE LECHE (HELADOS, SORBETES Y OTROS SIMILARES)', 0, 1, 0, 14)
GO
-- Nueva Sub Categoria ELAB. DE PROD. DE MOLINERÍA, ALMIDONES Y PROD. DERIVADOS DEL ALMIDÓN --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELAB. DE PROD. DE MOLINERÍA, ALMIDONES Y PROD. DERIVADOS DEL ALMIDÓN', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE HARINAS DE TRIGO', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE MOLIENDA DE ARROZ', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE OTRAS MOLINERAS Y ALIMENTOS A BASE DE CEREALES', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE ALMIDONES Y PRODUCTOS DERIVADOS DEL ALMIDÓN', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE GLUCOSA Y OTROS AZÚCARES DIFERENTES DE LA REMOLACHA', 0, 1, 0, 15)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE ALIMENTOS PREPARADOS PARA ANIMALES', 0, 1, 0, 15)
GO
-- Nueva Sub Categoria ELABORACIÓN DE OTROS PRODUCTOS ALIMENTICIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACIÓN DE OTROS PRODUCTOS ALIMENTICIOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PAN, PRODUCTOS DE PANADERÍA Y PASTELERÍA', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE GALLETAS', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE AZÚCAR DE REMOLACHA O CANA', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE CACAO Y CHOCOLATES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE CONFITERÍA', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE MACARRONES, FIDEOS, ALCUZCUZ Y PRODUCTOS FARINACEOS SIMILARES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE TE, CAFÉ, INFUSIONES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE LEVADURAS NATURALES O ARTIFICIALES', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE VINAGRES, MOSTAZAS, MAYONESAS Y CONDIMENTOS EN GENERAL', 0, 1, 0, 16)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE OTROS PRODUCTOS ALIMENTICIOS NO CLASIFICADOS EN OTRA PARTE', 0, 1, 0, 16)
GO
-- Nueva Sub Categoria ELABORACIÓN DE BEBIDAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACIÓN DE BEBIDAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE PISCOS (INDUSTRIAS PISQUERAS)', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE BEBIDAS ALCOHÓLICAS Y DE ALCOHOL ETÍLICO A PARTIR DE SUSTANCIAS FERMENTADAS Y OTROS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE VINOS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE BEBIDAS MALTEADAS, CERVEZAS Y MALTAS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE BEBIDAS NO ALCOHÓLICAS', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ENVASADO DE AGUA MINERAL NATURAL, DE MANANTIAL Y POTABLE PREPARADA', 0, 1, 0, 17)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE HIELO', 0, 1, 0, 17)
GO
-- Nueva Sub Categoria ELABORACIÓN DE PRODUCTOS DEL TABACO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACIÓN DE PRODUCTOS DEL TABACO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CIGARROS Y CIGARRILLOS', 0, 1, 0, 18)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS DEL TABACO', 0, 1, 0, 18)
GO
-- Nueva Sub Categoria HILANDERÍA, TEJEDURA Y ACABADO DE PRODUCTOS TEXTILES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('HILANDERÍA, TEJEDURA Y ACABADO DE PRODUCTOS TEXTILES', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PREPARACIÓN DE HILATURA DE FIBRAS TEXTILES; TEJEDURA PROD. TEXTILES', 0, 1, 0, 19)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACABADO DE PRODUCTOS TEXTIL', 0, 1, 0, 19)
GO
-- Nueva Sub Categoria FABRICACIÓN DE OTROS PRODUCTOS TEXTILES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS TEXTILES', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ARTÍCULOS CONFECCIONADOS DE MATERIAS TEXTILES, EXCEPTO PRENDAS DE VESTIR', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE TAPICES Y ALFOMBRA', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CUERDAS, CORDELES, BRAMANTES Y REDES', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE TEJIDOS DE USO INDUSTRIAL COMO TEJIDOS IMPREGNADOS, MOLTOPRENE, BATISTA, ETC.', 0, 1, 0, 20)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS TEXTILES N.C.P.', 0, 1, 0, 20)
GO
-- Nueva Sub Categoria FABRICACIÓN DE TEJIDOS Y ARTÍCULOS DE PUNTO Y GANCHILLO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE TEJIDOS Y ARTÍCULOS DE PUNTO Y GANCHILLO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE TEJIDOS DE PUNTO', 0, 1, 0, 21)
GO
-- Nueva Sub Categoria FABRICACIÓN DE PRENDAS DE VESTIR; EXCEPTO PRENDAS DE PIEL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE PRENDAS DE VESTIR; EXCEPTO PRENDAS DE PIEL', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRENDAS DE VESTIR TEXTILES Y SIMILARES', 0, 1, 0, 22)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRENDAS DE VESTIR DE CUERO NATURAL, ARTIFICIAL, PLÁSTICO', 0, 1, 0, 22)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ACCESORIOS DE VESTIR', 0, 1, 0, 22)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ROPA DE TRABAJO', 0, 1, 0, 22)
GO
-- Nueva Sub Categoria PROCESAMIENTO Y FABRICACIÓN DE ARTÍCULOS DE PIEL Y CUERO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('PROCESAMIENTO Y FABRICACIÓN DE ARTÍCULOS DE PIEL Y CUERO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADOBO Y TENIDOS DE PIELES; FABRICACIÓN DE ARTÍCULOS DE PIEL', 0, 1, 0, 23)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CURTIDO Y ADOBO DE CUEROS', 0, 1, 0, 23)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MALETAS, BOLSOS DE MANO Y SIMILARES; ARTÍCULOS DE TALABARTERÍA Y GUARNICIONERÍA', 0, 1, 0, 23)
GO
-- Nueva Sub Categoria FABRICACIÓN DE CALZADO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE CALZADO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CALZADO', 0, 1, 0, 24)
GO
-- Nueva Sub Categoria ASERRADO Y ACEPILLADURA DE MADERAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ASERRADO Y ACEPILLADURA DE MADERAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ASERRADO Y ACEPILLADURA DE MADERAS', 0, 1, 0, 25)
GO
-- Nueva Sub Categoria FAB. DE PRODUCTOS DE MADERA Y CORCHO, PAJA Y DE MATERIALES TRENZABLES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE PRODUCTOS DE MADERA Y CORCHO, PAJA Y DE MATERIALES TRENZABLES', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE TABLEROS, PANELES Y HOJAS DE MADERA PARA ENCHAPADO', 0, 1, 0, 26)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PARTES Y PIEZAS DE CARPINTERÍA PARA EDIFICIOS Y CONSTRUCCIONES', 0, 1, 0, 26)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE RECIPIENTES DE MADERA', 0, 1, 0, 26)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS DE MADERA; ARTÍCULOS DE CORCHO, PAJA Y MATERIALES TRENZABLES', 0, 1, 0, 26)
GO
-- Nueva Sub Categoria FABRICACIÓN DE PAPEL Y PRODUCTOS DEL PAPEL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE PAPEL Y PRODUCTOS DEL PAPEL', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CELULOSA Y OTRAS PASTAS DE MADERA', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PAPEL DE PERIÓDICO', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PAPEL Y CARTÓN N.C.P.', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PAPEL Y CARTÓN ONDULADO Y DE ENVASES DE PAPEL Y CARTÓN', 0, 1, 0, 27)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS ARTÍCULOS DE PAPEL Y CARTÓN', 0, 1, 0, 27)
GO
-- Nueva Sub Categoria ACTIVIDADES DE EDICIÓN --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE EDICIÓN', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICIÓN PRINCIPALMENTE DE LIBROS', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICIÓN DE FOLLETOS, PARTITURAS Y OTRAS PUBLICACIONES', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICIÓN DE PERIÓDICOS, REVISTAS Y PUBLICACIONES PERIÓDICAS', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDICIÓN DE GRABACIONES', 0, 1, 0, 28)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE EDICIÓN', 0, 1, 0, 28)
GO
-- Nueva Sub Categoria ACTIVIDADES DE IMPRESIÓN Y DE SERVICIOS CONEXOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE IMPRESIÓN Y DE SERVICIOS CONEXOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('IMPRESIÓN PRINCIPALMENTE DE LIBROS', 0, 1, 0, 29)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE IMPRESIÓN N.C.P.', 0, 1, 0, 29)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE SERVICIO RELACIONADA CON LA IMPRESIÓN', 0, 1, 0, 29)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPRODUCCIÓN DE GRABACIONES', 0, 1, 0, 29)
GO
-- Nueva Sub Categoria FABRICACIÓN DE PRODUCTOS DE HORNOS COQUE Y DE REFINACIÓN DE PETRÓLEO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE HORNOS COQUE Y DE REFINACIÓN DE PETRÓLEO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE HORNOS COQUE', 0, 1, 0, 30)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE REFINACIÓN DE PETRÓLEO', 0, 1, 0, 30)
GO
-- Nueva Sub Categoria ELABORACIÓN DE COMBUSTIBLE NUCLEAR --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELABORACIÓN DE COMBUSTIBLE NUCLEAR', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE COMBUSTIBLE NUCLEAR', 0, 1, 0, 31)
GO
-- Nueva Sub Categoria FABRICACIÓN DE SUSTANCIAS QUÍMICAS BÁSICAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE SUSTANCIAS QUÍMICAS BÁSICAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CARBÓN VEGETAL, Y BRIQUETAS DE CARBÓN VEGETAL', 0, 1, 0, 32)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE SUSTANCIAS QUÍMICAS BÁSICAS, EXCEPTO ABONOS Y COMPUESTOS DE NITRÓGENO', 0, 1, 0, 32)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ABONOS Y COMPUESTOS DE NITRÓGENO', 0, 1, 0, 32)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PLÁSTICOS EN FORMAS PRIMARIAS Y DE CAUCHO SINTÉTICO', 0, 1, 0, 32)
GO
-- Nueva Sub Categoria FABRICACIÓN DE OTROS PRODUCTOS QUÍMICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS QUÍMICOS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PLAGUICIDAS Y OTROS PRODUCTOS QUÍMICOS DE USO AGROPECUARIO', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PINTURAS, BARNICES Y PRODUCTOS DE REVESTIMIENTO SIMILARES', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS FARMACEUTICOS, SUSTANCIAS QUÍMICAS MEDICINALES Y PRODUCTOS BOTÁNICOS', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIONES DE JABONES Y DETERGENTES, PREPARADOS PARA LIMPIAR, PERFUMES Y PREPARADOS DE TOCADOR', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE EXPLOSIVOS Y PRODUCTOS DE PIROTECNIA', 0, 1, 0, 33)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS QUÍMICOS N.C.P.', 0, 1, 0, 33)
GO
-- Nueva Sub Categoria FABRICACIÓN DE FIBRAS MANUFACTURADAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE FIBRAS MANUFACTURADAS', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE FIBRAS MANUFACTURADAS', 0, 1, 0, 34)
GO
-- Nueva Sub Categoria FABRICACIÓN DE PRODUCTOS DE CAUCHO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE CAUCHO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CUBIERTAS Y CÁMARAS DE CAUCHO', 0, 1, 0, 35)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECAUCHADO Y RENOVACIÓN DE CUBIERTAS DE CAUCHO', 0, 1, 0, 35)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS DE CAUCHO', 0, 1, 0, 35)
GO
-- Nueva Sub Categoria FABRICACIÓN DE PRODUCTOS DE PLÁSTICO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE PLÁSTICO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PLANCHAS, LÁMINAS, CINTAS, TIRAS DE PLÁSTICO', 0, 1, 0, 36)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE TUBOS, MANGUERAS PARA LA CONSTRUCCIÓN', 0, 1, 0, 36)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS ARTÍCULOS DE PLÁSTICO', 0, 1, 0, 36)
GO
-- Nueva Sub Categoria FABRICACIÓN DE VIDRIOS Y PRODUCTOS DE VIDRIO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE VIDRIOS Y PRODUCTOS DE VIDRIO', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN, MANIPULADO Y TRANSFORMACIÓN DE VIDRIO PLANO', 0, 1, 0, 37)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE VIDRIO HUECO', 0, 1, 0, 37)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE FIBRAS DE VIDRIO', 0, 1, 0, 37)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ARTÍCULOS DE VIDRIO N.C.P.', 0, 1, 0, 37)
GO
-- Nueva Sub Categoria FABRICACIÓN DE PRODUCTOS MINERALES NO METÁLICOS N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS MINERALES NO METÁLICOS N.C.P.', 4)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE CERÁMICA NO REFRACTARIA PARA USO NO ESTRUCTURAL CON FINES ORNAMENTALES', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE CERÁMICA NO REFRACTARIA PARA USO NO ESTRUCTURAL N.C.P.', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE CERÁMICAS REFRACTARIA', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE ARCILLA Y CERÁMICAS NO REFRACTARIAS PARA USO ESTRUCTURAL', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CEMENTO, CAL Y YESO', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE HORMIGÓN, ARTÍCULOS DE HORMIGÓN Y MORTERO (MEZCLA PARA CONSTRUCCIÓN)', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS DE FIBROCEMENTO Y ASBESTOCEMENTO', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PANELES DE YESO PARA LA CONSTRUCCIÓN', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ARTÍCULOS DE CEMENTO Y YESO N.C.P.', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORTE, TALLADO Y ACABADO DE LA PIEDRA', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MEZCLAS BITUMINOSAS A BASE DE ASFALTO, DE BETUNES NATURALES, Y PRODUCTOS SIMILARES', 0, 1, 0, 38)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS MINERALES NO METÁLICOS N.C.P', 0, 1, 0, 38)
GO
-- Nueva Categoria INDUSTRIAS MANUFACTURERAS METÁLICAS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('INDUSTRIAS MANUFACTURERAS METÁLICAS')
GO

-- Nueva Sub Categoria INDUSTRIAS BÁSICAS DE HIERRO Y ACERO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('INDUSTRIAS BÁSICAS DE HIERRO Y ACERO', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INDUSTRIAS BASICAS DE HIERRO Y ACERO', 0, 1, 0, 39)
GO
-- Nueva Sub Categoria FAB. DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y METALES NO FERROSOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y METALES NO FERROSOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE PRODUCTOS DE COBRE EN FORMAS PRIMARIAS.', 0, 1, 0, 40)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ELABORACIÓN DE PRODUCTOS DE ALUMINIO EN FORMAS PRIMARIAS', 0, 1, 0, 40)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y DE OTROS METALES NO FERROSOS N.C.P.', 0, 1, 0, 40)
GO
-- Nueva Sub Categoria FUNDICIÓN DE METALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FUNDICIÓN DE METALES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUNDICIÓN DE HIERRO Y ACERO', 0, 1, 0, 41)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUNDICIÓN DE METALES NO FERROSOS', 0, 1, 0, 41)
GO
-- Nueva Sub Categoria FAB. DE PROD. METÁLICOS PARA USO ESTRUCTURAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE PROD. METÁLICOS PARA USO ESTRUCTURAL', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PRODUCTOS METÁLICOS DE USO ESTRUCTURAL', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE RECIPIENTES DE GAS COMPRIMIDO O LICUADO', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE TANQUES, DEPÓSITOS Y RECIPIENTES DE METAL N.C.P.', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE TANQUES, DEPÓSITOS Y RECIPIENTES DE METAL', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCIÓN', 0, 1, 0, 42)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCIÓN CENTRAL', 0, 1, 0, 42)
GO
-- Nueva Sub Categoria FAB. DE OTROS PROD. ELABORADOS DE METAL; ACT. DE TRABAJO DE METALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE OTROS PROD. ELABORADOS DE METAL; ACT. DE TRABAJO DE METALES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FORJA, PRENSADO, ESTAMPADO Y LAMINADO DE METAL; INCLUYE PULVIMETALURGIA', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRATAMIENTOS Y REVESTIMIENTOS DE METALES; OBRAS DE INGENIERÍA MECÁNICA EN GENERAL', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ARTÍCULOS DE CUCHILLERÍA', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE HERRAMIENTAS DE MANO Y ARTÍCULOS DE FERRETERÍA', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CABLES, ALAMBRES Y PRODUCTOS DE ALAMBRE', 0, 1, 0, 43)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS PRODUCTOS ELABORADOS DE METAL N.C.P.', 0, 1, 0, 43)
GO
-- Nueva Sub Categoria FABRICACIÓN DE MAQUINARIA DE USO GENERAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA DE USO GENERAL', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MOTORES Y TURBINAS, EXCEPTO PARA AERONAVES, VEHÍCULOS AUTOMOTORES Y MOTOCICLETAS', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MOTORES Y TURBINAS, EXCEPTO PARA AERONAVES, VEHÍCULOS AUTOMOTORES Y MOTOCICLETAS', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE BOMBAS, GRIFOS, VÁLVULAS, COMPRESORES, SISTEMAS HIDRÁULICOS', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE BOMBAS, COMPRESORES, SISTEMAS HIDRÁULICOS, VÁLVULAS Y ARTÍCULOS DE GRIFERÍA', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISIÓN', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISIÓN', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE HORNOS, HOGARES Y QUEMADORES', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE HORNOS, HOGARES Y QUEMADORES', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE EQUIPO DE ELEVACIÓN Y MANIPULACIÓN', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE EQUIPO DE ELEVACIÓN Y MANIPULACIÓN', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTRO TIPO DE MAQUINARIAS DE USO GENERAL', 0, 1, 0, 44)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN OTROS TIPOS DE MAQUINARIA Y EQUIPOS DE USO GENERAL', 0, 1, 0, 44)
GO
-- Nueva Sub Categoria FABRICACIÓN DE MAQUINARIA DE USO ESPECIAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA DE USO ESPECIAL', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA AGROPECUARIA Y FORESTAL', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MAQUINARIA AGROPECUARIA Y FORESTAL', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MÁQUINAS HERRAMIENTAS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MÁQUINAS HERRAMIENTAS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA METALÚRGICA', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MAQUINARIA PARA LA INDUSTRIA METALÚRGICA', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA PARA MINAS Y CANTERAS Y PARA OBRAS DE CONSTRUCCIÓN', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PARTES PARA MÁQUINAS DE SONDEO O PERFORACIÓN', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MAQUINARIA PARA LA EXPLOTACIÓN DE PETRÓLEO, MINAS, CANTERAS, Y OBRAS DE CONSTRUCCIÓN', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA PARA LA ELABORACIÓN DE ALIMENTOS, BEBIDAS Y TABACOS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MAQUINARIA PARA LA ELABORACIÓN DE ALIMENTOS, BEBIDAS Y TABACOS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA PARA LA ELABORACIÓN DE PRENDAS TEXTILES, PRENDAS DE VESTIR Y CUEROS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MAQUINARIA PARA LA INDUSTRIA TEXTIL, DE LA CONFECCIÓN, DEL CUERO Y DEL CALZADO', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ARMAS Y MUNICIONES', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE ARMAS', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS TIPOS DE MAQUINARIAS DE USO ESPECIAL', 0, 1, 0, 45)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE OTROS TIPOS DE MAQUINARIA DE USO ESPECIAL', 0, 1, 0, 45)
GO
-- Nueva Sub Categoria FABRICACIÓN DE APARATOS DE USO DOMÉSTICO N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE APARATOS DE USO DOMÉSTICO N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE APARATOS DE USO DOMÉSTICO N.C.P.', 0, 1, 0, 46)
GO
-- Nueva Sub Categoria FABRICACIÓN DE MAQUINARIA DE OFICINA, CONTABILIDAD E INFORMÁTICA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA DE OFICINA, CONTABILIDAD E INFORMÁTICA', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN Y ARMADO DE COMPUTADORES Y HARDWARE EN GENERAL', 0, 1, 0, 47)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MAQUINARIA DE OFICINA, CONTABILIDAD, N.C.P.', 0, 1, 0, 47)
GO
-- Nueva Sub Categoria FAB. Y REPARACIÓN DE MOTORES, GENERADORES Y TRANSFORMADORES ELÉCTRICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. Y REPARACIÓN DE MOTORES, GENERADORES Y TRANSFORMADORES ELÉCTRICOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MOTORES, GENERADORES Y TRANSFORMADORES ELÉCTRICOS', 0, 1, 0, 48)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MOTORES, GENERADORES Y TRANSFORMADORES ELÉCTRICOS', 0, 1, 0, 48)
GO
-- Nueva Sub Categoria FABRICACIÓN DE APARATOS DE DISTRIBUCIÓN Y CONTROL; SUS REPARACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE APARATOS DE DISTRIBUCIÓN Y CONTROL; SUS REPARACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE APARATOS DE DISTRIBUCIÓN Y CONTROL', 0, 1, 0, 49)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE APARATOS DE DISTRIBUCIÓN Y CONTROL', 0, 1, 0, 49)
GO
-- Nueva Sub Categoria FABRICACIÓN DE HILOS Y CABLES AISLADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE HILOS Y CABLES AISLADOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE HILOS Y CABLES AISLADOS', 0, 1, 0, 50)
GO
-- Nueva Sub Categoria FABRICACIÓN DE ACUMULADORES DE PILAS Y BATERÍAS PRIMARIAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE ACUMULADORES DE PILAS Y BATERÍAS PRIMARIAS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ACUMULADORES DE PILAS Y BATERÍAS PRIMARIAS', 0, 1, 0, 51)
GO
-- Nueva Sub Categoria FABRICACIÓN Y REPARACIÓN DE LÁMPARAS Y EQUIPO DE ILUMINACIÓN --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN Y REPARACIÓN DE LÁMPARAS Y EQUIPO DE ILUMINACIÓN', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE LÁMPARAS Y EQUIPO DE ILUMINACIÓN', 0, 1, 0, 52)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE EQUIPO DE ILUMINACIÓN', 0, 1, 0, 52)
GO
-- Nueva Sub Categoria FABRICACIÓN Y REPARACIÓN DE OTROS TIPOS DE EQUIPO ELÉCTRICO N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN Y REPARACIÓN DE OTROS TIPOS DE EQUIPO ELÉCTRICO N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS TIPOS DE EQUIPO ELÉCTRICO N.C.P.', 0, 1, 0, 53)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE OTROS TIPOS DE EQUIPO ELÉCTRICO N.C.P.', 0, 1, 0, 53)
GO
-- Nueva Sub Categoria FABRICACIÓN DE COMPONENTES ELECTRÓNICOS; SUS REPARACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE COMPONENTES ELECTRÓNICOS; SUS REPARACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE COMPONENTES ELECTRÓNICOS', 0, 1, 0, 54)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE COMPONENTES ELECTRÓNICOS', 0, 1, 0, 54)
GO
-- Nueva Sub Categoria FAB. Y REPARACIÓN DE TRANSMISORES DE RADIO, TELEVISIÓN, TELEFONÍA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. Y REPARACIÓN DE TRANSMISORES DE RADIO, TELEVISIÓN, TELEFONÍA', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE TRANSMISORES DE RADIO Y TELEVISIÓN, APARATOS PARA TELEFONÍA Y TELEGRAFÍA CON HILOS', 0, 1, 0, 55)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE TRANSMISORES DE RADIO Y TELEVISIÓN, APARATOS PARA TELEFONÍA Y TELEGRAFÍA CON HILOS', 0, 1, 0, 55)
GO
-- Nueva Sub Categoria FAB. DE RECEPTORES DE RADIO, TELEVISIÓN, APARATOS DE AUDIO/VÍDEO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE RECEPTORES DE RADIO, TELEVISIÓN, APARATOS DE AUDIO/VÍDEO', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE RECEPTORES (RADIO Y TV); APARATOS DE GRABACIÓN Y REPRODUCCIÓN (AUDIO Y VIDEO)', 0, 1, 0, 56)
GO
-- Nueva Sub Categoria FAB. DE APARATOS E INSTRUMENTOS MÉDICOS Y PARA REALIZAR MEDICIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE APARATOS E INSTRUMENTOS MÉDICOS Y PARA REALIZAR MEDICIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE EQUIPO MÉDICO Y QUIRÚRGICO, Y DE APARATOS ORTOPÉDICOS', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LABORATORIOS DENTALES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE EQUIPO MÉDICO Y QUIRÚRGICO, Y DE APARATOS ORTOPÉDICOS', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE INSTRUMENTOS Y APARATOS PARA MEDIR, VERIFICAR, ENSAYAR, NAVEGAR Y OTROS FINES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE INSTRUMENTOS Y APARATOS PARA MEDIR, VERIFICAR, ENSAYAR, NAVEGAR Y OTROS FINES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE EQUIPOS DE CONTROL DE PROCESOS INDUSTRIALES', 0, 1, 0, 57)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE EQUIPOS DE CONTROL DE PROCESOS INDUSTRIALES', 0, 1, 0, 57)
GO
-- Nueva Sub Categoria FAB. Y REPARACIÓN DE INSTRUMENTOS DE ÓPTICA Y EQUIPO FOTOGRÁFICO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. Y REPARACIÓN DE INSTRUMENTOS DE ÓPTICA Y EQUIPO FOTOGRÁFICO', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN Y/O REPARACIÓN DE LENTES Y ARTÍCULOS OFTALMOLÓGICOS', 0, 1, 0, 58)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE INSTRUMENTOS DE OPTICA N.C.P. Y EQUIPOS FOTOGRÁFICOS', 0, 1, 0, 58)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE INSTRUMENTOS DE OPTICA N.C.P Y EQUIPO FOTOGRÁFICOS', 0, 1, 0, 58)
GO
-- Nueva Sub Categoria FABRICACIÓN DE RELOJES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE RELOJES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE RELOJES', 0, 1, 0, 59)
GO
-- Nueva Sub Categoria FABRICACIÓN DE VEHÍCULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE VEHÍCULOS AUTOMOTORES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE VEHÍCULOS AUTOMOTORES', 0, 1, 0, 60)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE CARROCERÍAS PARA VEHÍCULOS AUTOMOTORES; FABRICACIÓN DE REMOLQUES Y SEMI REMOLQUES', 0, 1, 0, 60)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PARTES Y ACCESORIOS PARA VEHÍCULOS AUTOMOTORES Y SUS MOTORES', 0, 1, 0, 60)
GO
-- Nueva Sub Categoria CONSTRUCCIÓN Y REPARACIÓN DE BUQUES Y OTRAS EMBARCACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CONSTRUCCIÓN Y REPARACIÓN DE BUQUES Y OTRAS EMBARCACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCIÓN Y REPARACIÓN DE BUQUES; ASTILLEROS', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCIÓN DE EMBARCACIONES MENORES', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE EMBARCACIONES MENORES', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCIÓN DE EMBARCACIONES DE RECREO Y DEPORTE', 0, 1, 0, 61)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE EMBARCACIONES DE RECREO Y DEPORTES', 0, 1, 0, 61)
GO
-- Nueva Sub Categoria FAB. DE LOCOMOTORAS Y MATERIAL RODANTE PARA FERROCARRILES Y TRANVÍAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FAB. DE LOCOMOTORAS Y MATERIAL RODANTE PARA FERROCARRILES Y TRANVÍAS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE LOCOMOTORAS Y DE MATERIAL RODANTE PARA FERROCARRILES Y TRANVÍAS', 0, 1, 0, 62)
GO
-- Nueva Sub Categoria FABRICACIÓN DE AERONAVES Y NAVES ESPACIALES; SUS REPARACIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE AERONAVES Y NAVES ESPACIALES; SUS REPARACIONES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE AERONAVES Y NAVES ESPACIALES', 0, 1, 0, 63)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE AERONAVES Y NAVES ESPACIALES', 0, 1, 0, 63)
GO
-- Nueva Sub Categoria FABRICACIÓN DE OTROS TIPOS DE EQUIPO DE TRANSPORTE N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE OTROS TIPOS DE EQUIPO DE TRANSPORTE N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MOTOCICLETAS', 0, 1, 0, 64)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE BICICLETAS Y DE SILLONES DE RUEDAS PARA INVALIDOS', 0, 1, 0, 64)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS EQUIPOS DE TRANSPORTE N.C.P.', 0, 1, 0, 64)
GO
-- Nueva Sub Categoria FABRICACIÓN DE MUEBLES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE MUEBLES', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE MUEBLES PRINCIPALMENTE DE MADERA', 0, 1, 0, 65)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE OTROS MUEBLES N.C.P., INCLUSO COLCHONES', 0, 1, 0, 65)
GO
-- Nueva Sub Categoria INDUSTRIAS MANUFACTURERAS N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('INDUSTRIAS MANUFACTURERAS N.C.P.', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE JOYAS Y PRODUCTOS CONEXOS', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE INSTRUMENTOS DE MÚSICA', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ARTÍCULOS DE DEPORTE', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE JUEGOS Y JUGUETES', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE PLUMAS Y LÁPICES DE TODA CLASE Y ARTÍCULOS DE ESCRITORIO EN GENERAL', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE BROCHAS, ESCOBAS Y CEPILLOS', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE FÓSFOROS', 0, 1, 0, 66)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE ARTÍCULOS DE OTRAS INDUSTRIAS N.C.P.', 0, 1, 0, 66)
GO
-- Nueva Sub Categoria RECICLAMIENTO DE DESPERDICIOS Y DESECHOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('RECICLAMIENTO DE DESPERDICIOS Y DESECHOS', 5)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECICLAMIENTO DE DESPERDICIOS Y DESECHOS METÁLICOS', 0, 1, 0, 67)
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

-- Nueva Sub Categoria GENERACIÓN, CAPTACIÓN Y DISTRIBUCIÓN DE ENERGÍA ELÉCTRICA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('GENERACIÓN, CAPTACIÓN Y DISTRIBUCIÓN DE ENERGÍA ELÉCTRICA', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACIÓN HIDROELÉCTRICA', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACIÓN EN CENTRALES TERMOELÉCTRICA DE CICLOS COMBINADOS', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACIÓN EN OTRAS CENTRALES TERMOELÉCTRICAS', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GENERACIÓN EN OTRAS CENTRALES N.C.P.', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSMISIÓN DE ENERGÍA ELÉCTRICA', 0, 1, 0, 68)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISTRIBUCIÓN DE ENERGIA ELÉCTRICA', 0, 1, 0, 68)
GO
-- Nueva Sub Categoria FABRICACIÓN DE GAS; DISTRIBUCIÓN DE COMBUSTIBLES GASEOSOS POR TUBERÍAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FABRICACIÓN DE GAS; DISTRIBUCIÓN DE COMBUSTIBLES GASEOSOS POR TUBERÍAS', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FABRICACIÓN DE GAS; DISTRIBUCIÓN DE COMBUSTIBLES GASEOSOS POR TUBERÍAS', 0, 1, 0, 69)
GO
-- Nueva Sub Categoria SUMINISTRO DE VAPOR Y AGUA CALIENTE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('SUMINISTRO DE VAPOR Y AGUA CALIENTE', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SUMINISTRO DE VAPOR Y AGUA CALIENTE', 0, 1, 0, 70)
GO
-- Nueva Sub Categoria CAPTACIÓN, DEPURACIÓN Y DISTRIBUCIÓN DE AGUA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CAPTACIÓN, DEPURACIÓN Y DISTRIBUCIÓN DE AGUA', 6)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAPTACIÓN, DEPURACIÓN Y DISTRIBUCIÓN DE AGUA', 0, 1, 0, 71)
GO
-- Nueva Categoria CONSTRUCCIÓN --
INSERT INTO Giros_Categorias (Nombre) VALUES ('CONSTRUCCIÓN')
GO

-- Nueva Sub Categoria CONSTRUCCIÓN --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CONSTRUCCIÓN', 7)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PREPARACIÓN DEL TERRENO, EXCAVACIONES Y MOVIMIENTOS DE TIERRAS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE DEMOLICIÓN Y EL DERRIBO DE EDIFICIOS Y OTRAS ESTRUCTURAS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSTRUCCIÓN DE EDIFICIOS COMPLETOS O DE PARTES DE EDIFICIOS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OBRAS DE INGENIERÍA', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACONDICIONAMIENTO DE EDIFICIOS', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OBRAS MENORES EN CONSTRUCCIÓN (CONTRATISTAS, ALBANILES, CARPINTEROS)', 0, 1, 0, 72)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE EQUIPO DE CONSTRUCCIÓN O DEMOLICIÓN DOTADO DE OPERARIOS', 0, 1, 0, 72)
GO
-- Nueva Categoria COMERCIO AL POR MAYOR Y MENOR; REP. VEH.AUTOMOTORES/ENSERES DOMÉSTICOS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('COMERCIO AL POR MAYOR Y MENOR; REP. VEH.AUTOMOTORES/ENSERES DOMÉSTICOS')
GO

-- Nueva Sub Categoria VENTA DE VEHÍCULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA DE VEHÍCULOS AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE VEHÍCULOS AUTOMOTORES (IMPORTACIÓN, DISTRIBUCIÓN) EXCEPTO MOTOCICLETAS', 0, 1, 0, 73)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA O COMPRAVENTA AL POR MENOR DE VEHÍCULOS AUTOMOTORES NUEVOS O USADOS; EXCEPTO MOTOCICLETAS', 0, 1, 0, 73)
GO
-- Nueva Sub Categoria MANTENIMIENTO Y REPARACIÓN DE VEHÍCULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('MANTENIMIENTO Y REPARACIÓN DE VEHÍCULOS AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE LAVADO DE VEHÍCULOS AUTOMOTORES', 0, 1, 0, 74)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE REMOLQUE DE VEHÍCULOS (GRUAS)', 0, 1, 0, 74)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MANTENIMIENTO Y REPARACIÓN DE VEHÍCULOS AUTOMOTORES', 0, 1, 0, 74)
GO
-- Nueva Sub Categoria VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEHÍCULOS AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEHÍCULOS AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEHÍCULOS AUTOMOTORES', 0, 1, 0, 75)
GO
-- Nueva Sub Categoria VENTA, MANTENIMIENTO Y REPARACIÓN DE MOTOCICLETAS Y SUS PARTES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA, MANTENIMIENTO Y REPARACIÓN DE MOTOCICLETAS Y SUS PARTES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA DE MOTOCICLETAS', 0, 1, 0, 76)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA DE PIEZAS Y ACCESORIOS DE MOTOCICLETAS', 0, 1, 0, 76)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE MOTOCICLETAS', 0, 1, 0, 76)
GO
-- Nueva Sub Categoria VENTA AL POR MENOR DE COMBUSTIBLE PARA AUTOMOTORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MENOR DE COMBUSTIBLE PARA AUTOMOTORES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE COMBUSTIBLE PARA AUTOMOTORES', 0, 1, 0, 77)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR A CAMBIO DE UNA RETRIBUCIÓN O POR CONTRATA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR A CAMBIO DE UNA RETRIBUCIÓN O POR CONTRATA', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORRETAJE DE PRODUCTOS AGRÍCOLAS', 0, 1, 0, 78)
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MATERIAS PRIMAS AGRÍCOLAS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTA DE FRUTAS Y VERDURAS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTAS DE CARNES', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTAS DE PRODUCTOS DEL MAR (PESCADO, MARISCOS, ALGAS)', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MAYORISTAS DE VINOS Y BEBIDAS ALCOHÓLICAS Y DE FANTASÍA', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE CONFITES', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE TABACO Y PRODUCTOS DERIVADOS', 0, 1, 0, 79)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE HUEVOS, LECHE, ABARROTES, Y OTROS ALIMENTOS N.C.P.', 0, 1, 0, 79)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE ENSERES DOMÉSTICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE ENSERES DOMÉSTICOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CALZADO', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MUEBLES', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE ARTÍCULOS ELÉCTRICOS Y ELECTRÓNICOS PARA EL HOGAR', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE ARTÍCULOS DE PERFUMERÍA, COSMÉTICOS, JABONES Y PRODUCTOS DE LIMPIEZA', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PAPEL Y CARTÓN', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE LIBROS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE REVISTAS Y PERIÓDICOS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS FARMACEUTICOS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE INSTRUMENTOS CIENTÍFICOS Y QUIRÚRGICOS', 0, 1, 0, 80)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE OTROS ENSERES DOMÉSTICOS N.C.P.', 0, 1, 0, 80)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS, DESECHOS NO AGROPECUARIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS, DESECHOS NO AGROPECUARIOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE COMBUSTIBLES LÍQUIDOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE COMBUSTIBLES SÓLIDOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE COMBUSTIBLES GASEOSOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS CONEXOS A LOS COMBUSTIBLES', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE METALES Y MINERALES METALÍFEROS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MADERA NO TRABAJADA Y PRODUCTOS RESULTANTES DE SU ELABORACIÓN PRIMARIA', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MATERIALES DE CONSTRUCCIÓN, ARTÍCULOS DE FERRETERÍA Y RELACIONADOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE PRODUCTOS QUÍMICOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE DESECHOS METÁLICOS (CHATARRA)', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE INSUMOS VETERINARIOS', 0, 1, 0, 81)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE OTROS PRODUCTOS INTERMEDIOS, DESPERDICIOS Y DESECHOS N.C.P.', 0, 1, 0, 81)
GO
-- Nueva Sub Categoria VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO Y MATERIALES CONEXOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO Y MATERIALES CONEXOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA AGRÍCOLA Y FORESTAL', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA METALÚRGICA', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA LA MINERÍA', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA LA CONSTRUCCIÓN', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA LA ELABORACIÓN DE ALIMENTOS, BEBIDAS Y TABACO', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA PARA TEXTILES Y CUEROS', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MÁQUINAS Y EQUIPOS DE OFICINA; INCLUYE MATERIALES CONEXOS', 0, 1, 0, 82)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MAYOR DE MAQUINARIA Y EQUIPO DE TRANSPORTE EXCEPTO VEHÍCULOS AUTOMOTORES', 0, 1, 0, 82)
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GRANDES TIENDAS XXX PRODUCTOS DE FERRETERÍA Y PARA EL HOGAR', 0, 1, 0, 84)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GRANDES TIENDAS XXX VESTUARIO Y PRODUCTOS PARA EL HOGAR', 0, 1, 0, 84)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE OTROS PRODUCTOS EN PEQUENOS ALMACENES NO ESPECIALIZADOS', 0, 1, 0, 84)
GO
-- Nueva Sub Categoria VENTA POR MENOR DE ALIMENTOS, BEBIDAS, TABACOS EN ALMC. ESPECIALIZADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA POR MENOR DE ALIMENTOS, BEBIDAS, TABACOS EN ALMC. ESPECIALIZADOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE BEBIDAS Y LICORES (BOTILLERÍAS)', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CARNES (ROJAS, BLANCAS, OTRAS) PRODUCTOS CÁRNICOS Y SIMILARES', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE VERDURAS Y FRUTAS (VERDULERÍA)', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PESCADOS, MARISCOS Y PRODUCTOS CONEXOS', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PRODUCTOS DE PANADERÍA Y PASTELERÍA', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ALIMENTOS PARA MASCOTAS Y ANIMALES EN GENERAL', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE AVES Y HUEVOS', 0, 1, 0, 85)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PRODUCTOS DE CONFITERÍAS, CIGARRILLOS, Y OTROS', 0, 1, 0, 85)
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ARTÍCULOS ORTOPÉDICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ARTÍCULOS DE TOCADOR Y COSMÉTICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CALZADO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PRENDAS DE VESTIR EN GENERAL, INCLUYE ACCESORIOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE LANAS, HILOS Y SIMILARES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE MALETERÍAS, TALABARTERÍAS Y ARTÍCULOS DE CUERO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ROPA INTERIOR Y PRENDAS DE USO PERSONAL', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE TEXTILES PARA EL HOGAR Y OTROS PRODUCTOS TEXTILES N.C.P.', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ARTÍCULOS ELECTRODOMÉSTICOS Y ELECTRÓNICOS PARA EL HOGAR', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CRISTALES, LOZAS, PORCELANA, MENAJE (CRISTALERÍAS)', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE MUEBLES; INCLUYE COLCHONES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE INSTRUMENTOS MUSICALES (CASA DE MÚSICA)', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE DISCOS, CASSETTES, DVD Y VIDEOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE LÁMPARAS, APLIQUÉS Y SIMILARES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE APARATOS, ARTÍCULOS, EQUIPO DE USO DOMÉSTICO N.C.P.', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE ARTÍCULOS DE FERRETERÍA Y MATERIALES DE CONSTRUCCIÓN', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE PINTURAS, BARNICES Y LACAS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE PRODUCTOS DE VIDRIO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARTÍCULOS FOTOGRÁFICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARTÍCULOS ÓPTICOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO POR MENOR DE JUGUETES', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE LIBROS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE REVISTAS Y DIARIOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO DE ARTÍCULOS DE SUMINISTROS DE OFICINAS Y ARTÍCULOS DE ESCRITORIO EN GENERAL', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE COMPUTADORAS, SOFTWARES Y SUMINISTROS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARMERÍAS, ARTÍCULOS DE CAZA Y PESCA', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE BICICLETAS Y SUS REPUESTOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARTÍCULOS DEPORTIVOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARTÍCULOS DE JOYERÍA, FANTASÍAS Y RELOJERÍAS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE GAS LICUADO EN BOMBONAS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE CARBÓN, LENA Y OTROS COMBUSTIBLES DE USO DOMÉSTICO', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARTÍCULOS TÍPICOS (ARTESANÍAS)', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE FLORES, PLANTAS, ÁRBOLES, SEMILLAS, ABONOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR DE MASCOTAS Y ACCESORIOS', 0, 1, 0, 86)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTAS AL POR MENOR DE OTROS PRODUCTOS EN ALMACENES ESPECIALIZADOS N.C.P.', 0, 1, 0, 86)
GO
-- Nueva Sub Categoria VENTA AL POR MENOR EN ALMACENES DE ARTÍCULOS USADOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('VENTA AL POR MENOR EN ALMACENES DE ARTÍCULOS USADOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ANTIGUEDADES', 0, 1, 0, 87)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ROPA USADA', 0, 1, 0, 87)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('COMERCIO AL POR MENOR DE ARTÍCULOS Y ARTEFACTOS USADOS N.C.P.', 0, 1, 0, 87)
GO
-- Nueva Sub Categoria COMERCIO AL POR MENOR NO REALIZADO EN ALMACENES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('COMERCIO AL POR MENOR NO REALIZADO EN ALMACENES', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA POR CORREO', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA VÍA TELEFÓNICA', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA VÍA INTERNET; COMERCIO ELECTRÓNICO', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR EN PUESTOS DE VENTA Y MERCADOS', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR REALIZADA POR INDEPENDIENTES EN TRANSPORTE PÚBLICO (LEY 20.388)', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR NO REALIZADA EN ALMACENES DE PRODUCTOS PROPIOS N.C.P.', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MÁQUINAS EXPENDEDORAS', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('VENTA AL POR MENOR A CAMBIO DE UNA RETRIBUCIÓN O POR CONTRATA', 0, 1, 0, 88)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE VENTA AL POR MENOR NO REALIZADA EN ALMACENES N.C.P.', 0, 1, 0, 88)
GO
-- Nueva Sub Categoria REPARACIÓN DE EFECTOS PERSONALES Y ENSERES DOMÉSTICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('REPARACIÓN DE EFECTOS PERSONALES Y ENSERES DOMÉSTICOS', 8)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE CALZADO Y OTROS ARTÍCULOS DE CUERO', 0, 1, 0, 89)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIONES ELÉCTRICAS Y ELECTRÓNICAS', 0, 1, 0, 89)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('REPARACIÓN DE RELOJES Y JOYAS', 0, 1, 0, 89)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS REPARACIONES DE EFECTOS PERSONALES Y ENSERES DOMÉSTICOS N.C.P.', 0, 1, 0, 89)
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE COMIDA RÁPIDA (BARES, FUENTES DE SODA, GELATERÍAS, PIZZERÍAS Y SIMILARES)', 0, 1, 0, 91)
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
-- Nueva Sub Categoria OTROS TIPOS DE TRANSPORTE POR VÍA TERRESTRE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('OTROS TIPOS DE TRANSPORTE POR VÍA TERRESTRE', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE URBANO DE PASAJEROS VÍA FERROCARRIL (INCLUYE METRO)', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE URBANO DE PASAJEROS VÍA AUTOBUS (LOCOMOCIÓN COLECTIVA)', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE INTERURBANO DE PASAJEROS VÍA AUTOBUS', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE URBANO DE PASAJEROS VÍA TAXI COLECTIVO', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TRANSPORTE ESCOLAR', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TRANSPORTE DE TRABAJADORES', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE TRANSPORTE REGULAR DE PASAJEROS POR VÍA TERRESTRE N.C.P.', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTES POR TAXIS LIBRES Y RADIOTAXIS', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TRANSPORTE A TURISTAS', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE PASAJEROS EN VEHÍCULOS DE TRACCIÓN HUMANA Y ANIMAL', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE TRANSPORTE NO REGULAR DE PASAJEROS N.C.P.', 0, 1, 0, 93)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE CARGA POR CARRETERA', 0, 1, 0, 93)
GO
-- Nueva Sub Categoria TRANSPORTE POR TUBERÍAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE POR TUBERÍAS', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE POR TUBERÍAS', 0, 1, 0, 94)
GO
-- Nueva Sub Categoria TRANSPORTE MARÍTIMO Y DE CABOTAJE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE MARÍTIMO Y DE CABOTAJE', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE MARÍTIMO Y DE CABOTAJE DE PASAJEROS', 0, 1, 0, 95)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE MARÍTIMO Y DE CABOTAJE DE CARGA', 0, 1, 0, 95)
GO
-- Nueva Sub Categoria TRANSPORTE POR VÍAS DE NAVEGACIÓN INTERIORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE POR VÍAS DE NAVEGACIÓN INTERIORES', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE PASAJEROS POR VÍAS DE NAVEGACIÓN INTERIORES', 0, 1, 0, 96)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE CARGA POR VÍAS DE NAVEGACIÓN INTERIORES', 0, 1, 0, 96)
GO
-- Nueva Sub Categoria TRANSPORTE POR VÍA AÉREA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('TRANSPORTE POR VÍA AÉREA', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE REGULAR POR VÍA AÉREA DE PASAJEROS', 0, 1, 0, 97)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE REGULAR POR VÍA AÉREA DE CARGA', 0, 1, 0, 97)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE NO REGULAR POR VÍA AÉREA DE PASAJEROS', 0, 1, 0, 97)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE NO REGULAR POR VÍA AÉREA DE CARGA', 0, 1, 0, 97)
GO
-- Nueva Sub Categoria ACT. DE TRANSPORTE COMPLEMENTARIAS Y AUXILIARES; AGENCIAS DE VIAJE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. DE TRANSPORTE COMPLEMENTARIAS Y AUXILIARES; AGENCIAS DE VIAJE', 10)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MANIPULACIÓN DE LA CARGA', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ALMACENAMIENTO Y DEPÓSITO', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TERMINALES TERRESTRES DE PASAJEROS', 0, 1, 0, 98)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTACIONAMIENTO DE VEHÍCULOS Y PARQUÍMETROS', 0, 1, 0, 98)
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

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TELEFONÍA FIJA', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TELEFONÍA MÓVIL', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PORTADORES TELEFÓNICOS (LARGA DISTANCIA NACIONAL E INTERNACIONAL)', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE TELEVISIÓN NO ABIERTA', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PROVEEDORES DE INTERNET', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE LLAMADOS; INCLUYE ENVÍO DE FAX', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE ACCESO A INTERNET', 0, 1, 0, 100)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE TELECOMUNICACIONES N.C.P.', 0, 1, 0, 100)
GO
-- Nueva Categoria INTERMEDIACIÓN FINANCIERA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('INTERMEDIACIÓN FINANCIERA')
GO

-- Nueva Sub Categoria INTERMEDIACIÓN MONETARIA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('INTERMEDIACIÓN MONETARIA', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('BANCA CENTRAL', 0, 1, 0, 101)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('BANCOS', 0, 1, 0, 101)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FINANCIERAS', 0, 1, 0, 101)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS TIPOS DE INTERMEDIACIÓN MONETARIA N.C.P.', 0, 1, 0, 101)
GO
-- Nueva Sub Categoria OTROS TIPOS DE INTERMEDIACIÓN FINANCIERA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('OTROS TIPOS DE INTERMEDIACIÓN FINANCIERA', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LEASING FINANCIERO', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LEASING HABITACIONAL', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FINANCIAMIENTO DEL FOMENTO DE LA PRODUCCIÓN', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CRÉDITO PRENDARIO', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FACTORING', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SECURITIZADORAS', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS INSTITUCIONES FINANCIERAS N.C.P.', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS DE INVERSIÓN', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS MUTUOS', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FICES (FONDOS DE INVERSIÓN DE CAPITAL EXTRANJERO)', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS PARA LA VIVIENDA', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORAS DE FONDOS PARA OTROS FINES Y/O GENERALES', 0, 1, 0, 102)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SOCIEDADES DE INVERSIÓN Y RENTISTAS DE CAPITALES MOBILIARIOS EN GENERAL', 0, 1, 0, 102)
GO
-- Nueva Sub Categoria FINANCIACIÓN PLANES DE SEG. Y DE PENSIONES, EXCEPTO AFILIACIÓN OBLIG. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('FINANCIACIÓN PLANES DE SEG. Y DE PENSIONES, EXCEPTO AFILIACIÓN OBLIG.', 11)
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
-- Nueva Sub Categoria ACT. AUX. DE LA INTERMEDIACIÓN FINANCIERA, EXCEPTO PLANES DE SEGUROS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. AUX. DE LA INTERMEDIACIÓN FINANCIERA, EXCEPTO PLANES DE SEGUROS', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRACIÓN DE MERCADOS FINANCIEROS', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORREDORES DE BOLSA', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENTES DE VALORES', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE CORRETAJE', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CÁMARA DE COMPENSACIÓN', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ADMINISTRADORA DE TARJETAS DE CRÉDITO', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE ASESORÍA, CONSULTORÍA FINANCIERA Y DE APOYO AL GIRO', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CLASIFICADORES DE RIESGOS', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CASAS DE CAMBIO Y OPERADORES DE DIVISA', 0, 1, 0, 104)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES AUXILIARES DE LA INTERMEDIACIÓN FINANCIERA N.C.P.', 0, 1, 0, 104)
GO
-- Nueva Sub Categoria ACT. AUXILIARES DE FINANCIACIÓN DE PLANES DE SEGUROS Y DE PENSIONES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. AUXILIARES DE FINANCIACIÓN DE PLANES DE SEGUROS Y DE PENSIONES', 11)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORREDORES DE SEGUROS', 0, 1, 0, 105)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENTES Y LIQUIDADORES DE SEGUROS', 0, 2, 0, 105)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES AUXILIARES DE LA FINANCIACIÓN DE PLANES DE SEGUROS Y DE PENSIONES N.C.P.', 0, 0, 0, 105)
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

-- Nueva Sub Categoria ACT. INMOBILIARIAS REALIZADAS A CAMBIO DE RETRIBUCIÓN O POR CONTRATA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. INMOBILIARIAS REALIZADAS A CAMBIO DE RETRIBUCIÓN O POR CONTRATA', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CORREDORES DE PROPIEDADES', 0, 0, 0, 107)
GO
-- Nueva Sub Categoria ALQUILER EQUIPO DE TRANSPORTE --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ALQUILER EQUIPO DE TRANSPORTE', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE AUTOS Y CAMIONETAS SIN CHOFER', 0, 1, 0, 108)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE OTROS EQUIPOS DE TRANSPORTE POR VÍA TERRESTRE SIN OPERARIOS', 0, 1, 0, 108)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE TRANSPORTE POR VÍA ACUÁTICA SIN TRIPULACIÓN', 0, 1, 0, 108)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE EQUIPO DE TRANSPORTE POR VÍA AÉREA SIN TRIPULANTES', 0, 1, 0, 108)
GO
-- Nueva Sub Categoria ALQUILER DE OTROS TIPOS DE MAQUINARIA Y EQUIPO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ALQUILER DE OTROS TIPOS DE MAQUINARIA Y EQUIPO', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MAQUINARIA Y EQUIPO AGROPECUARIO', 0, 1, 0, 109)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MAQUINARIA Y EQUIPO DE CONSTRUCCIÓN E INGENIERÍA CIVIL', 0, 1, 0, 109)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MAQUINARIA Y EQUIPO DE OFICINA (SIN OPERARIOS NI SERVICIO ADMINISTRATIVO)', 0, 1, 0, 109)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE OTROS TIPOS DE MAQUINARIAS Y EQUIPOS N.C.P.', 0, 1, 0, 109)
GO
-- Nueva Sub Categoria ALQUILER DE EFECTOS PERSONALES Y ENSERES DOMÉSTICOS N.C.P. --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ALQUILER DE EFECTOS PERSONALES Y ENSERES DOMÉSTICOS N.C.P.', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE BICICLETAS Y ARTÍCULOS PARA DEPORTES', 0, 1, 0, 110)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ARRIENDO DE VIDEOS, JUEGOS DE VIDEO, Y EQUIPOS REPRODUCTORES DE VIDEO, MÚSICA Y SIMILARES', 0, 1, 0, 110)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE MOBILIARIO PARA EVENTOS (SILLAS, MESAS, MESONES, VAJILLAS, TOLDOS Y RELACIONADOS)', 0, 1, 0, 110)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ALQUILER DE OTROS EFECTOS PERSONALES Y ENSERES DOMÉSTICOS N.C.P.', 0, 1, 0, 110)
GO
-- Nueva Sub Categoria SERVICIOS INFORMÁTICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('SERVICIOS INFORMÁTICOS', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ASESORES Y CONSULTORES EN INFORMÁTICA (SOFTWARE)', 0, 2, 0, 111)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PROCESAMIENTO DE DATOS Y ACTIVIDADES RELACIONADAS CON BASES DE DATOS', 0, 1, 0, 111)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE SERVICIOS INTEGRALES DE INFORMÁTICA', 0, 1, 0, 111)
GO
-- Nueva Sub Categoria MANTENIMIENTO Y REPARACIÓN DE MAQUINARIA DE OFICINA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('MANTENIMIENTO Y REPARACIÓN DE MAQUINARIA DE OFICINA', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('MANTENIMIENTO Y REPARACIÓN DE MAQUINARIA DE OFICINA, CONTABILIDAD E INFORMÁTICA', 0, 1, 0, 112)
GO
-- Nueva Sub Categoria ACTIVIDADES DE INVESTIGACIONES Y DESARROLLO EXPERIMENTAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE INVESTIGACIONES Y DESARROLLO EXPERIMENTAL', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS NATURALES Y LA INGENIERÍA', 0, 1, 0, 113)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS SOCIALES Y LAS HUMANIDADES', 0, 1, 0, 113)
GO
-- Nueva Sub Categoria ACTIVIDADES JURÍDICAS Y DE ASESORAMIENTO EMPRESARIAL EN GENERAL --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES JURÍDICAS Y DE ASESORAMIENTO EMPRESARIAL EN GENERAL', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS JURÍDICOS', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO NOTARIAL', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSERVADOR DE BIENES RAICES', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECEPTORES JUDICIALES', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ARBITRAJES, SÍNDICOS, PERITOS Y OTROS', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CONTABILIDAD, TENEDURÍA DE LIBROS Y AUDITORÍA; ASESORAMIENTOS TRIBUTARIOS', 0, 2, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INVESTIGACIÓN DE MERCADOS Y REALIZACIÓN DE ENCUESTAS DE OPINIÓN PÚBLICA', 0, 0, 0, 114)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE ASESORAMIENTO EMPRESARIAL Y EN MATERIA DE GESTIÓN', 0, 0, 0, 114)
GO
-- Nueva Sub Categoria ACTIVIDADES DE ARQUITECTURA E INGENIERÍA Y OTRAS ACTIVIDADES TÉCNICAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE ARQUITECTURA E INGENIERÍA Y OTRAS ACTIVIDADES TÉCNICAS', 14)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ARQUITECTURA Y TÉCNICO RELACIONADO', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE SERVICIOS GEOLÓGICOS Y DE PROSPECCIÓN', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PROFESIONALES EN GEOLOGÍA Y PROSPECCIÓN', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE SERVICIOS DE TOPOGRAFÍA Y AGRIMENSURA', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PROFESIONALES DE TOPOGRAFÍA Y AGRIMENSURA', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE INGENIERÍA PRESTADOS POR EMPRESAS N.C.P.', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE INGENIERÍA PRESTADOS POR PROFESIONALES N.C.P.', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DESARROLLADOS POR PROFESIONALES', 0, 2, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIO DE REVISIÓN TÉCNICA DE VEHÍCULOS AUTOMOTORES', 0, 1, 0, 115)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE ENSAYOS Y ANALISIS TÉCNICOS', 0, 1, 0, 115)
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE INVESTIGACIÓN', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS INTEGRALES DE SEGURIDAD', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('TRANSPORTE DE VALORES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES RELACIONADOS CON SEGURIDAD', 0, 2, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE LIMPIEZA DE EDIFICIOS RESIDENCIALES Y NO RESIDENCIALES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DESRATIZACIÓN Y FUMIGACIÓN NO AGRÍCOLA', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE REVELADO, IMPRESIÓN, AMPLIACIÓN DE FOTOGRAFÍAS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE FOTOGRAFÍA PUBLICITARIA', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES DE FOTOGRAFÍA', 0, 2, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ENVASADO Y EMPAQUE', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE COBRANZA DE CUENTAS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EVALUACIÓN Y CALIFICACIÓN DEL GRADO DE SOLVENCIA', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ASESORÍAS EN LA GESTIÓN DE LA COMPRA O VENTA DE PEQUENAS Y MEDIANAS EMPRESAS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISENADORES DE VESTUARIO', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISENADORES DE INTERIORES', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS DISENADORES N.C.P.', 0, 0, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE TAQUIGRAFÍA, REPRODUCCIÓN, DESPACHO DE CORRESPONDENCIA, Y OTRAS LABORES DE OFICINA', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES DE TRADUCCIÓN, INTERPRETACIÓN Y LABORES DE OFICINA', 0, 2, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EMPRESAS DE TRADUCCIÓN E INTERPRETACIÓN', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE FOTOCOPIAS', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE CONTRATACIÓN DE ACTORES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE SUBASTA (MARTILLEROS)', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('GALERÍAS DE ARTE', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FERIAS DE EXPOSICIONES CON FINES EMPRESARIALES', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE CONTESTACIÓN DE LLAMADAS (CALL CENTER)', 0, 1, 0, 117)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES EMPRESARIALES N.C.P.', 0, 1, 0, 117)
GO
-- Nueva Categoria PLANES DE SEG. SOCIAL AFILIACIÓN OBLIGATORIA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('PLANES DE SEG. SOCIAL AFILIACIÓN OBLIGATORIA')
GO

-- Nueva Sub Categoria GOBIERNO CENTRAL Y ADMINISTRACIÓN PÚBLICA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('GOBIERNO CENTRAL Y ADMINISTRACIÓN PÚBLICA', 15)
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE MANTENIMIENTO DEL ORDEN PÚBLICO Y DE SEGURIDAD', 0, 1, 0, 118)
GO
-- Nueva Sub Categoria ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACIÓN OBLIGATORIA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACIÓN OBLIGATORIA', 15)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACIÓN OBLIGATORIA RELACIONADOS CON SALUD', 0, 1, 0, 119)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CAJAS DE COMPENSACIÓN', 0, 1, 0, 119)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACIÓN OBLIGATORIA', 0, 1, 0, 119)
GO
-- Nueva Categoria ENSEÑANZA --
INSERT INTO Giros_Categorias (Nombre) VALUES ('ENSEÑANZA')
GO

-- Nueva Sub Categoria ENSEÑANZA PREESCOLAR, PRIMARIA, SECUNDARIA Y SUPERIOR ; PROFESORES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ENSEÑANZA PREESCOLAR, PRIMARIA, SECUNDARIA Y SUPERIOR ; PROFESORES', 16)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSEÑANZA PREESCOLAR', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSEÑANZA PRIMARIA', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSEÑANZA SECUNDARIA DE FORMACIÓN GENERAL', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSEÑANZA SECUNDARIA DE FORMACIÓN TÉCNICA Y PROFESIONAL', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('UNIVERSIDADES', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INSTITUTOS PROFESIONALES', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE FORMACIÓN TÉCNICA', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSEÑANZA PRIMARIA Y SECUNDARIA PARA ADULTOS', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS DE ENSEÑANZA PREUNIVERSITARIA', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDUCACIÓN EXTRAESCOLAR (ESCUELA DE CONDUCCIÓN, MÚSICA, MODELAJE, ETC.)', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EDUCACIÓN A DISTANCIA (INTERNET, CORRESPONDENCIA, OTRAS)', 0, 1, 0, 120)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERSONALES DE EDUCACIÓN', 0, 2, 0, 120)
GO
-- Nueva Categoria SERVICIOS SOCIALES Y DE SALUD --
INSERT INTO Giros_Categorias (Nombre) VALUES ('SERVICIOS SOCIALES Y DE SALUD')
GO

-- Nueva Sub Categoria ACTIVIDADES RELACIONADAS CON LA SALUD HUMANA --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES RELACIONADAS CON LA SALUD HUMANA', 17)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('HOSPITALES Y CLÍNICAS', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CLÍNICAS PSIQUIATRICAS, CENTROS DE REHABILITACIÓN, ASILOS Y CLÍNICAS DE REPOSO', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE MÉDICOS EN FORMA INDEPENDIENTE', 0, 2, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESTABLECIMIENTOS MÉDICOS DE ATENCIÓN AMBULATORIA (CENTROS MÉDICOS)', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE ODONTÓLOGOS EN FORMA INDEPENDIENTE', 0, 2, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE ATENCIÓN ODONTOLÓGICA', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LABORATORIOS CLÍNICOS; INCLUYE BANCOS DE SANGRE', 0, 1, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS PROFESIONALES DE LA SALUD', 0, 2, 0, 121)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES EMPRESARIALES RELACIONADAS CON LA SALUD HUMANA', 0, 1, 0, 121)
GO
-- Nueva Sub Categoria ACTIVIDADES VETERINARIAS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES VETERINARIAS', 17)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CLÍNICAS VETERINARIAS', 0, 1, 0, 122)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE MÉDICOS VETERINARIOS EN FORMA INDEPENDIENTE', 0, 2, 0, 122)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE OTROS PROFESIONALES INDEPENDIENTES EN EL ÁREA VETERINARIA', 0, 2, 0, 122)
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

-- Nueva Sub Categoria ELIMINACIÓN DE DESPERDICIOS Y AGUAS RESIDUALES, SANEAMIENTO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ELIMINACIÓN DE DESPERDICIOS Y AGUAS RESIDUALES, SANEAMIENTO', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE VERTEDEROS', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('BARRIDO DE EXTERIORES', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('RECOGIDA Y ELIMINACIÓN DE DESECHOS', 0, 1, 0, 124)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE EVACUACIÓN DE RILES Y AGUAS SERVIDAS', 0, 1, 0, 124)
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
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE ORGANIZACIONES POLÍTICAS', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CENTROS DE MADRES Y UNIDADES VECINALES Y COMUNALES', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CLUBES SOCIALES', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE INSTITUTOS DE ESTUDIOS, FUNDACIONES, CORPORACIONES DE DESARROLLO (EDUCACIÓN, SALUD)', 0, 1, 0, 126)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE OTRAS ASOCIACIONES N.C.P.', 0, 1, 0, 126)
GO
-- Nueva Sub Categoria ACT. DE CINEMATOGRAFÍA, RADIO Y TV Y OTRAS ACT. DE ENTRETENIMIENTO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACT. DE CINEMATOGRAFÍA, RADIO Y TV Y OTRAS ACT. DE ENTRETENIMIENTO', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PRODUCCIÓN DE PELÍCULAS CINEMATOGRÁFICAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('DISTRIBUIDORA CINEMATOGRÁFICAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXHIBICIÓN DE FILMES Y VIDEOCINTAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE TELEVISIÓN', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE RADIO', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE PRODUCCIÓN DE RECITALES Y OTROS EVENTOS MUSICALES MASIVOS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS DE PRODUCCIÓN TEATRAL Y OTROS N.C.P.', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES EMPRESARIALES DE ARTISTAS', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES ARTÍSTICAS; FUNCIONES DE ARTISTAS, ACTORES, MÚSICOS, CONFERENCISTAS, OTROS', 0, 2, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE VENTA DE BILLETES DE TEATRO, SALAS DE CONCIERTO Y DE TEATRO', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('INSTRUCTORES DE DANZA', 0, 2, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE DISCOTECAS, CABARET, SALAS DE BAILE Y SIMILARES', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE PARQUES DE ATRACCIONES Y CENTROS SIMILARES', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESPECTÁCULOS CIRCENSES, DE TÍTERES U OTROS SIMILARES', 0, 1, 0, 127)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES DE ENTRETENIMIENTO N.C.P.', 0, 0, 0, 127)
GO
-- Nueva Sub Categoria ACTIVIDADES DE AGENCIAS DE NOTICIAS Y SERVICIOS PERIODÍSTICOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE AGENCIAS DE NOTICIAS Y SERVICIOS PERIODÍSTICOS', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('AGENCIAS DE NOTICIAS', 0, 1, 0, 128)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SERVICIOS PERIODÍSTICOS PRESTADO POR PROFESIONALES', 0, 2, 0, 128)
GO
-- Nueva Sub Categoria ACTIVIDADES DE BIBLIOTECAS, ARCHIVOS Y MUSEOS Y OTRAS ACT. CULTURALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DE BIBLIOTECAS, ARCHIVOS Y MUSEOS Y OTRAS ACT. CULTURALES', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE BIBLIOTECAS Y ARCHIVOS', 0, 1, 0, 129)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE MUSEOS Y PRESERVACIÓN DE LUGARES Y EDIFICIOS HISTÓRICOS', 0, 1, 0, 129)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE JARDINES BOTÁNICOS Y ZOOLÓGICOS Y DE PARQUES NACIONALES', 0, 1, 0, 129)
GO
-- Nueva Sub Categoria ACTIVIDADES DEPORTIVAS Y OTRAS ACTIVIDADES DE ESPARCIMIENTO --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ACTIVIDADES DEPORTIVAS Y OTRAS ACTIVIDADES DE ESPARCIMIENTO', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('EXPLOTACIÓN DE INSTALACIONES ESPECIALIZADAS PARA LAS PRACTICAS DEPORTIVAS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CLUBES DE DEPORTES Y ESTADIOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUTBOL PROFESIONAL', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('FUTBOL AMATEUR', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('HIPÓDROMOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PROMOCIÓN Y ORGANIZACIÓN DE ESPECTÁCULOS DEPORTIVOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ESCUELAS PARA DEPORTES', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTRAS ACTIVIDADES RELACIONADAS AL DEPORTE N.C.P.', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('1STEMAS DE JUEGOS DE AZAR MASIVOS.', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ACTIVIDADES DE CASINO DE JUEGOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('SALAS DE BILLAR, BOWLING, POOL Y JUEGOS ELECTRÓNICOS', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONTRATACIÓN DE ACTORES PARA CINE, TV, Y TEATRO', 0, 1, 0, 130)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('OTROS SERVICIOS DE DIVERSIÓN Y ESPARCIMIENTOS N.C.P.', 0, 0, 0, 130)
GO
-- Nueva Sub Categoria OTRAS ACTIVIDADES DE SERVICIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('OTRAS ACTIVIDADES DE SERVICIOS', 18)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('LAVADO Y LIMPIEZA DE PRENDAS DE TELA Y DE PIEL, INCLUSO LAS LIMPIEZAS EN SECO', 0, 1, 0, 131)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('PELUQUERÍAS Y SALONES DE BELLEZA', 0, 0, 0, 131)
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
-- Nueva Categoria CONSEJO DE ADMINISTRACIÓN DE EDIFICIOS Y CONDOMINIOS --
INSERT INTO Giros_Categorias (Nombre) VALUES ('CONSEJO DE ADMINISTRACIÓN DE EDIFICIOS Y CONDOMINIOS')
GO

-- Nueva Sub Categoria CONSEJO DE ADMINISTRACIÓN DE EDIFICIOS Y CONDOMINIOS --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('CONSEJO DE ADMINISTRACIÓN DE EDIFICIOS Y CONDOMINIOS', 19)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('HOGARES PRIVADOS INDIVIDUALES CON SERVICIO DOMÉSTICO', 0, 0, 0, 132)
GO
INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('CONSEJO DE ADMINISTRACIÓN DE EDIFICIOS Y CONDOMINIOS', 0, 1, 0, 132)
GO
-- Nueva Categoria ORGANIZACIONES Y ÓRGANOS EXTRATERRITORIALES --
INSERT INTO Giros_Categorias (Nombre) VALUES ('ORGANIZACIONES Y ÓRGANOS EXTRATERRITORIALES')
GO

-- Nueva Sub Categoria ORGANIZACIONES Y ÓRGANOS EXTRATERRITORIALES --
INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('ORGANIZACIONES Y ÓRGANOS EXTRATERRITORIALES', 20)
GO

INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('ORGANIZACIONES Y ÓRGANOS EXTRATERRITORIALES', 0, 1, 0, 133)
GO
