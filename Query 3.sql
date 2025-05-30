-- Empleado con mejor desempeño (más ventas realizadas)

SELECT 
`e` . `nombre`,
COUNT(`e` . `nombre`) AS `numero_de_ventas`
FROM `tienda` . `venta` `v`
INNER JOIN `tienda` . `empleado` `e` ON `e` . `id` = `v` . `empleado_id`
GROUP BY `e` . `nombre`
LIMIT 1;