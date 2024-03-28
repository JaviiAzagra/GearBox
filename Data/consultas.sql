select * from customers;
select * from cars;
select * from repairs;
select * from employees;

-- LIST ALL CUSTOMERS AND THEIR CARS
SELECT CONCAT(c.first_name, ' ', c.last_name) AS CUSTOMER, CONCAT(ca.brand, ' ', ca.model) AS CAR
FROM customers c
LEFT JOIN cars ca ON c.customer_id = ca.customer_id;

-- CALCULATE AVERAGE PRICE OF REPAIRS
SELECT AVG(cost) AS Average_Cost
FROM repairs;

-- OLDEST CAR IN THE WORKSHOP
SELECT brand, model, MIN(year) AS OldestCar
FROM cars
WHERE car_id IN (SELECT car_id FROM repairs);

-- SHOW ALL CUSTOMERS WHO HAVE DONE REPAIRS ALONG WITH THE TOTAL NUMBER OF REPAIRS

-- THE TOP 3 EMPLOYEES WITH THE MOST REPAIRS
SELECT e.first_name, e.last_name, COUNT(r.repair_id) AS TOTAL_REPAIRS
FROM employees e
LEFT JOIN repairs r ON e.employee_id = r.repair_id
GROUP BY e.employee_id
ORDER BY TOTAL_REPAIRS DESC
LIMIT 3;

-- FETCH THE PRICE OF THE REPAIR WITH THE CAR TO A SPECIFIC CUSTOMER
SELECT r.cost, CONCAT(ca.brand, ' ', ca.model) AS CAR
FROM repairs r
LEFT JOIN cars ca ON r.car_id = ca.car_id
LEFT JOIN customers c ON ca.customer_id = c.customer_id
WHERE c.first_name = 'amanda' AND c.last_name = 'martinez';

SELECT c.first_name, c.last_name
FROM customers c
LEFT JOIN cars ca ON c.customer_id = ca.customer_id
WHERE ca.brand = 'Audi' AND ca.model = 'A3';