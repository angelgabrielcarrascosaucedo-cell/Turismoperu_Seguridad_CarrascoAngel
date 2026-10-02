USE TURISMOPERU_AGCS;
GO
--  Cambiamos el contexto de ejecución para simular que somos el analista
EXECUTE AS USER = 'AGCS_analista';
GO
-- PRUEBA EXITOSA: Consultar datos 
SELECT TOP 5 * FROM AGCS.pago;
GO
-- PRUEBA DENEGADA: Intentar modificar datos 
-- Esto forzará el error rojo de SQL Server que demuestra que la seguridad funciona
INSERT INTO AGCS.pago (monto, fecha_pago, id_reserva) 
VALUES (500.00, GETDATE(), 1);
GO
-- Revertimos para volver a ser el administrador
REVERT;
GO