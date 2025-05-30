-- Evolución del inventario de un producto específico
SET
@primer_corte_inicio = '2023-03-01 11:00:00', @primer_corte_fin = '2023-03-10 12:00:00',
@segundo_corte_inicio = '2023-04-01 13:00:00', @segundo_corte_fin = '2023-05-03 15:00:00',
@tercer_corte_inicio = '2023-05-04 16:00:00', @tercer_corte_fin = '2023-05-10 14:00:00';

SELECT 
`p`.`cantidad` AS `cantidad_inicial`,
`p`.`nombre`,
`p` . `createdAt` AS `creacion`,
`dv`.`createdAt` AS `fecha_venta`,
`dv`.`cantidad` AS `cantidad_vendida`,
(`p`.`cantidad` - `dv`.`cantidad`) AS `Restante`
FROM `tienda` . `venta` `v`
INNER JOIN `tienda` . `detalle_venta` `dv` ON `dv` . `id` = `v` . `detalle_venta_id`
INNER JOIN `tienda` . `producto` `p` ON `p` . `id` = `dv` . `producto_id`
WHERE `p`.`id` = 5;