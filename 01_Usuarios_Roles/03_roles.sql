USE TURISMOPERU_AGCS;
GO

-- Creación de roles 
CREATE ROLE rol_vendedor;
CREATE ROLE rol_analista;
GO
-- Asignación de tus usuarios a sus respectivos roles
ALTER ROLE rol_vendedor ADD MEMBER AGCS_vendedor;
ALTER ROLE rol_analista ADD MEMBER AGCS_analista;
GO