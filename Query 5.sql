-- Clientes sin compras desde su alta

SELECT *
FROM `tienda`.`cliente` `c`
LEFT JOIN `tienda`.`venta` `v` ON `c`.`id` = `v`.`cliente_id`
WHERE `cliente_id` IS NULL


;