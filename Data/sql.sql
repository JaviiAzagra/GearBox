DROP DATABASE IF EXISTS GearBox;
CREATE DATABASE GearBox;
USE GearBox;

DROP TABLE IF EXISTS customers, cars, repairs, employees;

CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE cars(
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    brand VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20),
    license_plate VARCHAR(15),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE repairs(
    repair_id INT PRIMARY KEY AUTO_INCREMENT,
    car_id INT,
    repair_date DATE,
    description TEXT,
    cost DECIMAL (10,2),
    FOREIGN KEY (car_id) REFERENCES cars(car_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE employees(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100),
    position VARCHAR(50)
);

INSERT INTO customers (first_name, last_name, address, phone, email)
VALUES
('John', 'Doe', '123 Main St, Anytown, USA', '555-1234', 'john@example.com'),
('Jane', 'Smith', '456 Elm St, Othertown, USA', '555-5678', 'jane@example.com'),
('Michael', 'Johnson', '789 Oak St, Anothertown, USA', '555-9012', 'michael@example.com'),
('Emily', 'Brown', '246 Pine St, Smalltown, USA', '555-3456', 'emily@example.com'),
('Daniel', 'Garcia', '579 Maple St, Largetown, USA', '555-7890', 'daniel@example.com'),
('Amanda', 'Martinez', '135 Cedar St, Hugetown, USA', '555-2345', 'amanda@example.com'),
('Robert', 'Anderson', '802 Walnut St, Colossal City, USA', '555-6789', 'robert@example.com'),
('Sophia', 'Wilson', '913 Oak St, Megalopolis, USA', '555-1234', 'sophia@example.com'),
('William', 'Taylor', '725 Elm St, Giganticville, USA', '555-5678', 'william@example.com'),
('Olivia', 'Lopez', '658 Pine St, Minusculetown, USA', '555-9012', 'olivia@example.com');

INSERT INTO cars (customer_id, brand, model, year, color, license_plate)
VALUES
(1, 'Toyota', 'Camry', 2018, 'Blue', 'ABC123'),
(2, 'Honda', 'Civic', 2019, 'Red', 'DEF456'),
(3, 'Ford', 'Fusion', 2017, 'Black', 'GHI789'),
(4, 'Chevrolet', 'Malibu', 2020, 'Silver', 'JKL012'),
(5, 'Nissan', 'Altima', 2016, 'White', 'MNO345'),
(6, 'BMW', '3 Series', 2015, 'Gray', 'PQR678'),
(7, 'Mercedes-Benz', 'C-Class', 2021, 'Black', 'STU901'),
(8, 'Audi', 'A4', 2019, 'Blue', 'VWX234'),
(9, 'Subaru', 'Outback', 2017, 'Green', 'YZA567'),
(10, 'Volkswagen', 'Jetta', 2018, 'Red', 'BCD890');

INSERT INTO repairs (car_id, repair_date, description, cost)
VALUES
( 1, '2023-03-01', 'Oil change and tune-up', 100.00),
(2, '2023-03-05', 'Brake pad replacement', 150.00),
(3, '2023-03-10', 'Transmission repair', 500.00),
(4, '2023-03-15', 'Battery replacement', 80.00),
(5, '2023-03-20', 'Tire rotation', 50.00),
(6, '2023-03-25', 'Engine diagnostic', 120.00),
(7, '2023-03-30', 'Air conditioning repair', 200.00),
(8, '2023-04-01', 'Electrical system check', 90.00),
(9, '2023-04-05', 'Suspension repair', 300.00),
(10, '2023-04-10', 'Fuel system cleaning', 70.00);

INSERT INTO employees (first_name, last_name, phone, email, position)
VALUES
('David', 'Brown', '555-1111', 'david@example.com', 'Mechanic'),
('Sarah', 'Wilson', '555-2222', 'sarah@example.com', 'Service Advisor'),
('James', 'Taylor', '555-3333', 'james@example.com', 'Manager'),
('Emma', 'Anderson', '555-4444', 'emma@example.com', 'Mechanic'),
('Matthew', 'Martinez', '555-5555', 'matthew@example.com', 'Service Advisor'),
('Olivia', 'Garcia', '555-6666', 'olivia@example.com', 'Mechanic'),
('Ethan', 'Lopez', '555-7777', 'ethan@example.com', 'Manager'),
('Isabella', 'Brown', '555-8888', 'isabella@example.com', 'Mechanic'),
('William', 'Jones', '555-9999', 'william@example.com', 'Service Advisor'),
('Sophia', 'Hernandez', '555-1010', 'sophia@example.com', 'Manager');



