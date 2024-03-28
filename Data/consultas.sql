select * from customers;
select * from cars;
select * from repairs;
select * from employees;

-- LISTA TODOS LOS CLIENTES Y SUS COCHES
select CONCAT(c.first_name, ' ', c.last_name) AS CUSTOMER, CONCAT(ca.brand, ' ', ca.model) AS CAR
from customers c
left join cars ca ON c.customer_id = ca.customer_id;

-- CALCULAR PRECIO PROMEDIO DE LAS REPARACIONES
SELECT AVG(cost) AS Average_Cost
FROM repairs;

-- COCHE MAS ANTIGUO EN EL TALLER
SELECT brand, model, MIN(year) AS OldestCar
FROM cars
WHERE car_id IN (SELECT car_id FROM repairs);

-- MUESTRA TODOS LOS CLIENTES QUE HAN REALIZADO REPARACIONES JUNTO AL NUMERO TOTAL DE
-- REPARACIONES


-- LOS 3 PRIMEROS EMPLEADOS CON MAS REPARACIONES
SELECT e.first_name, e.last_name, COUNT(r.repair_id) AS TOTAL_REPAIRS
from employees e
LEFT JOIN repairs r ON e.employee_id = r.repair_id
GROUP BY e.employee_id
ORDER BY TOTAL_REPAIRS DESC
LIMIT 3;

-- SACAR EL PRECIO DE LA REPARACION CON EL COCHE A UN CLIENTE ESPECIFICO
select r.cost, CONCAT(ca.brand, ' ', ca.model) AS CAR
from repairs r
left join cars ca ON r.car_id = ca.car_id
left join customers c ON ca.customer_id = c.customer_id
where c.first_name = 'amanda' and c.last_name= 'martinez';

select c.first_name, c.last_name
from customers c
left join cars ca ON c.customer_id = ca.customer_id
where ca.brand = 'Audi' and ca.model = 'A3';