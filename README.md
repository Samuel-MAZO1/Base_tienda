En este documento se explicara el funcionamiento de cada una de las consultas SQL dadas:

- 1. En esta consulta agruparemos los metodos de pago, para asi calcular cuanto se genera con cada metodo de pago:
Nuestra consulta primero suma los resultados de las cantidades por los precios unitarios, realizamos nuestro JOIN para traer
dicha informacion de la tabla `detalle_venta`. Luego, par que quede en solo metodos de pago se agrupa con un `GROUP BY`.

- 2. En esta consulta agruparemos las categorias, para revisar cual genera mayor facturacion:
Empezaremos utilizando nuestros INNER JOIN, ya que debemos de traer informacion de las tablas `producto_id` y `categoria_id`.
Suamos los resultados de multiplicar la cantidad por el precio unitario, para luego, agruparlos por el nombre de la categoria.

- 3. En esta consulta señalaremos al empleado con mas ventas en la tienda:
Para esto, contaremos el nombre del empleado, y agruparemos por nombres a cada ´COUNT´

- 4. Esta consulta se vuelve un poco compleja, ya que nos pide ver el stock en distintos momentos:
Para empezar eligiremos nuestra tabla `FROM`, para asi poder realizar nuestros INNER JOIN hacia las tablas relacionadas.
De nuestra tabla ´p´ sacaremos el nombre, la cantidad y la fecha de creacion; consiguiente a esto de la tabla 
`detalle_venta` sacaremos la fecha de creacion (definiendo esta como nuestra fecha de venta), la cantidad (definida como la cantidad vendida).
Ahora, restaremos la cantidad vendida a la cantidad de creacion del producto.
Filtraremos la informacion con `WHERE`, con nuestro id del producto.

- 5. En esta consulta vamos a localizar a los clientes registrados, pero aun sin ventas:
Mostraremos todas las tablas, definimos nuestro JOIN como ´LEFT JOIN´ debido a que solo necesitamos la informacion de los clientes
Filtraremos los datos con un ´WHERE´ ya que si `cliente_id` es nulo, significa que existe el cliente, pero no hay registro de compra.

- 6. En esta consulta vamos a calcular el promedio de monto por venta:
Lo primero y mas esencial es definir nuestro INNER JOIN para extraer la informacion necesaria.
Ya con esto, sumamos los valores de los resultados de multiplicar la cantidad por el precio unitario, luego lo dividmos entre el numero total de ventas (Utilizamos `COUNT` para saber cual es el numero de ventas).

