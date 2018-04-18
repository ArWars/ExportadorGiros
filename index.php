<?php

$handle = @fopen("datos.txt", "r"); // Lee linea a Linea
$archivo = fopen("Consulta.sql", "w") or die("No se puede abrir el archivo!");
$SQL = "";
$Categorias = 0;
$SubCatego = 0;
$Giros = 0;
$Fallidas = 0;
$SQL .= "-- ----------------------------\n
-- Estructura de tablas --\n
-- ----------------------------\n";
$SQL .= "CREATE TABLE [dbo].[Giros_Categorias] (
	[ID] int NOT NULL IDENTITY(1,1),
	[Nombre] varchar(200) NOT NULL
)
GO
DBCC CHECKIDENT(N'[dbo].[Giros_Categorias]', RESEED, 1)
GO\n";
$SQL .= "CREATE TABLE [dbo].[Giros_SubCategorias] (
	[ID] int NOT NULL IDENTITY(1,1),
	[Nombre] varchar(200) NOT NULL,
	[IDCategoria] INT NOT NULL
)
GO
DBCC CHECKIDENT(N'[dbo].[Giros_SubCategorias]', RESEED, 1)
GO\n";
$SQL .= "CREATE TABLE [dbo].[Giros] (
	[ID] int NOT NULL IDENTITY(1,1),
	[Nombre] varchar(200) NOT NULL,
	[AfectaIVA] BIT NOT NULL,
	[Cat_Tributaria] INT NOT NULL,
	[DispInternet] BIT NOT NULL,
	[IDSubCategoria] INT NOT NULL
)
GO
DBCC CHECKIDENT(N'[dbo].[Giros]', RESEED, 1)
GO\n\n";
$SQL .= "-- ----------------------------\n
-- Primary Key para las Tablas --\n
-- ----------------------------\n";
$SQL .= "ALTER TABLE [dbo].[Giros_Categorias] ADD PRIMARY KEY ([ID])\nGO\n";
$SQL .= "ALTER TABLE [dbo].[Giros_SubCategorias] ADD PRIMARY KEY ([ID])\nGO\n";
$SQL .= "ALTER TABLE [dbo].[Giros] ADD PRIMARY KEY ([ID])\nGO\n\n";

$SQL .= "-- ----------------------------\n
-- Foreign Key para las Tablas --\n
-- ----------------------------\n";
$SQL .= "ALTER TABLE [dbo].[Giros_SubCategorias] ADD FOREIGN KEY ([IDCategoria]) REFERENCES [dbo].[Giros_Categorias] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO\n";
$SQL .= "ALTER TABLE [dbo].[Giros] ADD FOREIGN KEY ([IDSubCategoria]) REFERENCES [dbo].[Giros_SubCategorias] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO\n\n";

$SQL .= "-- ----------------------------\n
-- Ingreso de Datos --\n
-- ----------------------------\n";
while (!feof($handle)) // Termina en el termino de lineas.
{
    $buffer = fgets($handle, 4096); // Lee la linea.
    $buffer = trim($buffer);
    $valor = explode("-",$buffer);
    if ( strpos($buffer, "-") == false ) {
    	$Categoria = trim($buffer);
    	if ( !empty($Categoria) ) {
    		$SQL .= "-- Nueva Categoria $Categoria --\n";
	    	$SQL .= "INSERT INTO Giros_Categorias (Nombre) VALUES ('$Categoria')\nGO\n\n";
	    	$Categorias++;
    	}
    }
    else if ( count($valor) > 1 ) {
    	$ID = trim($valor[0]);
		if ( is_numeric( $ID ) ) {
			$Iva =  ( isset($valor[2]) ) ? ( strpos("1", $valor[2]) ) ? 1:0:0;
			$Disp = ( isset($valor[4]) ) ? ( strpos("1", $valor[4]) ) ? 1:0:0;
			$Cat_Tributaria = ( isset($valor[3]) ) ? trim($valor[3]):1;
			$Nombre = trim($valor[1]);
			$SQL .= "INSERT INTO Giros (Nombre, AfectaIVA, Cat_Tributaria, DispInternet, IDSubCategoria) VALUES ('$Nombre', $Iva, $Cat_Tributaria, $Disp, $SubCatego)\nGO\n";
			$Giros++;
		}
		else {
			$Nombre = trim($valor[1]);
			if ( strlen($Nombre) > 2 ) {
				$SQL .= "-- Nueva Sub Categoria $Nombre --\n";
				$SQL .= "INSERT INTO Giros_SubCategorias (Nombre, IDCategoria) VALUES ('$Nombre', $Categorias)\nGO\n\n";
				$SubCatego++;
			}
		}
    }
}
fwrite($archivo, $SQL);
fclose($archivo);

echo "Se han creado ".$Categorias." categorias.<br/>";
echo "Se han creado ".$SubCatego." sub categorias.<br/>";
echo "Se han creado ".$Giros." giros.<br/>";
echo "Ubierón ".$Fallidas." giros fallidos.<br/>";

function remplazar_en_archivo($Archivo, $txtViejo, $txtNuevo)
{
    $resultado = array('estado' => 'error', 'mensaje' => '');
    if(file_exists($Archivo)===TRUE)
    {
        if(is_writeable($Archivo))
        {
            try
            {
                $Contenido = file_get_contents($Archivo);
                $Contenido = str_replace($txtViejo, $txtNuevo, $Contenido);
                if(file_put_contents($Archivo, $Contenido) > 0)
                {
                    $resultado["estado"] = 'Listo!';
                }
                else
                {
                   $resultado["mensaje"] = 'Error, mientras se escribe el codigo.';
                }
            }
            catch(Exception $e)
            {
                $resultado["mensaje"] = 'Error : '.$e;
            }
        }
        else
        {
            $resultado["mensaje"] = 'Archivo '.$Archivo.' no tiene permisos de escritura!';
        }
    }
    else
    {
        $resultado["mensaje"] = 'Archivo '.$Archivo.' no existe!';
    }
    return $resultado;
}

?>