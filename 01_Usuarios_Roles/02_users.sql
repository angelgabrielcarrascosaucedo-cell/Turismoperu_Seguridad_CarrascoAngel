USE TURISMOPERU_AGCS;
GO

-- Creación de usuarios conectados a los logins
CREATE USER AGCS_admin FOR LOGIN AGCS_admin;
CREATE USER AGCS_vendedor FOR LOGIN AGCS_vendedor;
CREATE USER AGCS_analista FOR LOGIN AGCS_analista;
GO
-- permisos de administrador de base de datos al admin
ALTER ROLE db_owner ADD MEMBER AGCS_admin;
GO