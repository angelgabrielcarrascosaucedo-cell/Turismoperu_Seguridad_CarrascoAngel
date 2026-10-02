-- Script para Backup Full 
BACKUP DATABASE TURISMOPERU_AGCS 
TO DISK = 'C:\Backups\TurismoPeru_AGCS_Full.bak'
WITH FORMAT, MEDIANAME = 'SQLServerBackups', NAME = 'Full Backup';
GO