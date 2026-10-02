USE TURISMOPERU_AGCS;
GO

/* 
DOCUMENTACIÓN DEL PROCEDIMIENTO DE IMPORTACIÓN
1. Comando bcp ejecutado en consola para importar el archivo CSV a la tabla staging:
   bcp TURISMOPERU_AGCS.AGCS.agcs_ClientesImportados in "C:\ruta\agcs_Clientes.csv" -c -t "," -S SERVIDOR_AGCS -T
*/
-- 1. Creación de la tabla staging 
IF OBJECT_ID('AGCS.agcs_ClientesImportados', 'U') IS NULL 
BEGIN
    CREATE TABLE AGCS.agcs_ClientesImportados (
        Documento VARCHAR(20),
        Nombres VARCHAR(100),
        ApellidoPaterno VARCHAR(100),
        ApellidoMaterno VARCHAR(100)
    );
END
GO

-- 2. Validar registros e identificar duplicados antes de insertar en la tabla final
INSERT INTO AGCS.cliente (Documento, Nombres, ApellidoPaterno, ApellidoMaterno)
SELECT 
    i.Documento, 
    i.Nombres, 
    i.ApellidoPaterno, 
    i.ApellidoMaterno
FROM AGCS.agcs_ClientesImportados i
WHERE NOT EXISTS (
    SELECT 1 
    FROM AGCS.cliente c 
    WHERE c.Documento = i.Documento
);
GO

-- 3. Limpiar tabla temporal para liberar espacio
TRUNCATE TABLE AGCS.agcs_ClientesImportados;
GO