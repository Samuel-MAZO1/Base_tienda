-- Clientes sin compras desde su alta

SELECT 
SUM(`dv`.`cantidad` * `dv`. `precio_unitario`)/ COUNT(`dv`.`cantidad`) AS `Promedio_por_venta`
FROM `tienda`.`venta` `v`
INNER JOIN `tienda`.`detalle_venta` `dv` ON `dv`.`id` = `v`.`detalle_venta_id`;