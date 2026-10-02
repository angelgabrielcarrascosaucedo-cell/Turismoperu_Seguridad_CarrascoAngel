USE master;
GO

-- Creación de logins 
CREATE LOGIN AGCS_admin WITH PASSWORD = 'AdminAGCSPassword*';
CREATE LOGIN AGCS_vendedor WITH PASSWORD = 'VendedorAGCSPassword*';
CREATE LOGIN AGCS_analista WITH PASSWORD = 'AnalistaAGCSPassword*';
GO