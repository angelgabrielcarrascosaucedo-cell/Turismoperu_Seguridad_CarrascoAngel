-- Script para Backup Diferencial
BACKUP DATABASE TURISMOPERU_AGCS 
TO DISK = 'C:\Backups\TurismoPeru_AGCS_Diff.bak'
WITH DIFFERENTIAL, NAME = 'Differential Backup';
GO