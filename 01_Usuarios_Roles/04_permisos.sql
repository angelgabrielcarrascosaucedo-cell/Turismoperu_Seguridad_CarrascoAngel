USE TURISMOPERU_AGCS;
GO

-- PERMISOS PARA EL ROL VENDEDOR
GRANT SELECT, INSERT ON AGCS.cliente TO rol_vendedor;
GRANT SELECT, INSERT ON AGCS.reserva TO rol_vendedor;
GRANT SELECT ON AGCS.alojamiento TO rol_vendedor;
GRANT SELECT ON AGCS.habitacion TO rol_vendedor;

DENY DELETE ON AGCS.cliente TO rol_vendedor;
DENY DELETE ON AGCS.reserva TO rol_vendedor;

----------------------------------------
-- PERMISOS PARA EL ROL ANALISTA
GRANT SELECT ON AGCS.cliente TO rol_analista;
GRANT SELECT ON AGCS.reserva TO rol_analista;
GRANT SELECT ON AGCS.pago TO rol_analista;
GRANT SELECT ON AGCS.alojamiento TO rol_analista;
GRANT SELECT ON AGCS.habitacion TO rol_analista;
GRANT SELECT ON AGCS.paquete TO rol_analista;
GRANT SELECT ON AGCS.lugar_turistico TO rol_analista;

-- Denegamos modificaciones en todo el esquema AGCS para el analista
DENY INSERT, UPDATE, DELETE ON SCHEMA::AGCS TO rol_analista;
GO