USE TURISMOPERU_AGCS;
GO

-- Consulta base extraída para el modelo analítico en Power BI
SELECT 
    c.id_persona,
    r.id_reserva,
    r.fecha_reserva,
    r.id_estado_reserva,
    p.monto,
    p.fecha_pago,
    p.id_medio_pago
FROM AGCS.cliente c
INNER JOIN AGCS.reserva r ON c.id_persona = r.id_cliente
LEFT JOIN AGCS.pago p ON r.id_reserva = p.id_reserva;
GO