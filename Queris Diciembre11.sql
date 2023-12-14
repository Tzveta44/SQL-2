--Ejemplo de filtros
--Obtener los productos de order_details cuyo precio sea mayor a 50
Select * from public.order_details
where unit_price>50;

--Obtener productos de order_details cuya cantidad sea mayor a 75
Select*from order_details
where quantity>75;

--Obtener Obtener los empleados que contengan una W en su apellido
Select*from employees
where last_name like '%w%';

--Obtener los productos de order _details cuya cantidad se encuentre 75 y 150
Select product_id from public.order_details
where quantity between 75 and 150;

--Obtener los productos cuya stock esté entre 100 y 200
Select*from products
where units_in_stock between 100 and 200;

--Obtenet los productos cuyo nombre comience con C y termine con i
Select*from products
where product_name like 'C%i';

--Obtener los productos cuyo nombre temine en n
Select*from products
where product_name like '%n';

--Obtener los productos cuyo proveedor sea 1,5,7 y 2
Select*from products
where supplier_id in (1,5,7,2);

--Obtener los productos cuyo nombre comience con A, G y R
Select*from products
where product_name like 'A%'
or product_name like 'G%'
or product_name like 'R%';

--Ordenar la tabla de productos por nombre
Select*from products
order by product_name;

--Ordenar la tabla de productos por id descendiente
Select*from products
order by product_id DESC;

--Ordenar la tabls de productos por categoria ascendientemente y proveedor descendientemente
Select*from products
order by category_id asc, supplier_id desc; 

--Obtener los productos cuyo nombre comience con A, G y R y por orden alfabético
Select*from products
where product_name like 'A%'
or product_name like 'G%'
or product_name like 'R%'
order by  product_name;

--Obtener las filas de la tabla de productos
--Funciones de agregacion: count, sum, avg, max, min
--La única que acepta el * es count
--El resto el nombre de una columna o operacion aritmetica
Select count (*) as num_registro
from products;

--Obtener el numero de filas de la tabla de empleados
Select count (*) as num_registros
from employees;



Select * from employees;


--Evitar el *
Select count (employee_id) as num_registros
from employees;

Select count (region) as num_registros
from employees;

Select*from customers;

--Gestión de nulos (ejecutar cada bloque por separado)
create table datos
(a numeric);

insert into datos
values
(8),
(7),
(null),
(5);
select*from datos;

--Obtener la suma de la tabla creada anteriormente
Select sum(A) from datos;

-- Crear una tabla con dos columnas
create table datos2
(a numeric, b numeric);

insert into datos2
values
(8,2),
(7,3),
(null,3),
(5,5);
Select *from datos2;

-- Crear una tabla con dos columnas y sumar la columna a y b
create table datos2
(a numeric, b numeric);

insert into datos2
values
(8,2),
(7,3),
(null,3),
(5,5);
Select a+b as suma from datos2;


--Obtener el promedio de datos
create table datos
(a numeric);

insert into datos
values
(8),
(7),
(null),
(5);
select*from datos;
select avg(a) from datos;

--Obtenr el precio promedio, max y min del productos
Select avg(unit_price)as promedio, max(unit_price)as maximo,
min(unit_price)as minimo
from products;
--Comprobacion
select unit_price from products order by unit_price;

--Obtener la cantidad promedio, maximo y minimo de order_details
Select avg(quantity) as promedio, max(unit_price) as maximo,
min(unit_price) as minimo
from order_details;

--Obtenerla suma de las unidades en stock de los productos
Select sum (units_in_stock) as unidades
from products;



