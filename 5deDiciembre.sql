select*from categories;
--Todas columnas y la filas de la tabla de productos
select*from products;
--Todas las columnas y las filas de la tabla de clientes
select*from customers;
--Toa las filas y las columnas de la tabla de ordenes
select*from orders;

--Obtener las columnas category_id, category_name de la tabla de gategorias
select category_id, category_name from categories;

--Obtener la columna de id, nombre, precio de la tabla de productos
select product_id,product_name, unit_price from products;

--Obtener las columnas de id, producto, cantidad de la tabla de ordenes
select order_id, product_id,  quantity from order_details;

--Obtener las columnas de id, nombre, apellidos, jefe de la tabla de empleados
select employee_id,first_name, last_name, reports_to from employees;

--Filtros
--No se muestan todas las filas
--únicamente las que cumpplen la condicion
--operadores de comparacion >,<,<> (diferente),>=,<=, =
--and/or/not
--between -rangos between 1 and 20 (operador de4 BBDD)
--in - definir si  un valor esta en un conjunto: sexo in ('m','h')
--like- operador que se utiliza para"igual" - p%, %n, %l% 


--Obtener los productos cuyo precio sea mayor a 50
select*from PRODUCTS
WHERE UNIT_PRICE> 50;

--obtener los productos cuyo precio sea menor a 100
select * from products
where unit_price < 100;

--obtener los productos que tengan categoría 1, 6, 7
select*from products
where category_id in (1, 6, 7);

--Obtener los productos que tengan el precio entre 35 y 75
select*from products
where unit_price between 35 and 75;

--Obtener los productos que comienzen con P
select*from products
where product_name like 'P%';

