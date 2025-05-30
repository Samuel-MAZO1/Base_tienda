-- Distribución de ventas por método de pago

SELECT 
`v`. `metodo_pago`,
SUM(`dv`.`cantidad` * `dv`.`precio_unitario`) AS `total`
FROM `tienda`.`venta` `v`
INNER JOIN `tienda`.`detalle_venta` `dv` ON 
`dv`.`id` = `v`.`detalle_venta_id`
GROUP BY `v`. `metodo_pago`;
