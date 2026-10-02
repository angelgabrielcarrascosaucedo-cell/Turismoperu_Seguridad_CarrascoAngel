-- Script para Restauracion de la base de datos
USE master;
GO
RESTORE DATABASE TURISMOPERU_AGCS 
FROM DISK = 'C:\Backups\TurismoPeru_AGCS_Full.bak' WITH REPLACE;
GO