-- Categoría que genera mayor facturación

SELECT
`c` . `nombre`,
SUM(`dv`.`cantidad`*`dv`.`precio_unitario`) AS `total`
FROM `tienda` . `detalle_venta` `dv`
INNER JOIN `tienda` . `producto` `p` ON `p` . `id` = `dv` . `producto_id`
INNER JOIN `tienda` . `categoria` `c` ON `c` . `id` = `p` . `categoria_id`
GROUP BY `c` . `nombre`
LIMIT 1
;