CREATE DATABASE online_store;
-- created the database ecommerce

-- created the table customers
CREATE TABLE customers(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(191) NOT NULL,
phone_number VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(191) NOT NULL UNIQUE,
country VARCHAR(30) NOT NULL 
);
--Inserting into customers
INSERT INTO customers(
full_name,
phone_number,
email,
country)
 VALUES('Chinedu Okoro', '+2348013234567', 'Chinedu.okoro@gamil.com','Nigeria'),
('Amara Johnson', '+2348057690072', 'amara.johnson@gmail.com', 'Nigeria'),
('Davidm Smith', '+4455552617', 'david.smith@gamil.com', 'UK'),
('Sarah Williams', '+442071838750','sarah.williams@gmail.com', 'USA'),
('Emeka Nwosu', '+2348091122332', 'emaka.nwosu@gmail.com', 'Nigeria'),
('Fatima Bello', '+23470688335', 'fatima.bello@gmail.com', 'Nigeria'),
('james Brown', '+14155551234', 'james.brown@gmail.com', 'USA'),
('Olivia Jones', '+6141234244', 'olivia.jones@gmail.com', 'Australia' ),
('Tunde Adebayo', '+234705264789', 'tunde.adebayo@gamil.com', 'Nigeria'),
('Grace Okonkwo', '+2348097565374', 'grace.okonkwo@gmail.com', 'Nigeria'),
('Micheal Chen', '+141673763', 'micheal.chen@gmail', 'canada'),
('Aisha Mohammed', '+23481936354', 'ashiamohammed@gmail.com', 'Nigeria'),
('John Doe', '+4420716679', 'john.doe@gamail.com', 'UK' ),
('Blessing Eze', '+23490322233445', 'blessing.eze@gamil.com', 'Nigeria'),
('Sophia Martinez', '+34512356744', 'sophia.martinez@gmail.com', 'Spain' ),
('Kunle Afolayan', '+@23479897809', 'kunle.afolayan@gmail.com', 'Nigeria'),
('Linda White', '+14155554321', 'linda.white@gmail.com', 'USA'),
('Ibariam Musa', '+23470488990', 'ibariam.musa@gmail.com', 'Nigeria'),
('Chioma Uche', '+234788798', 'chioma.uche@gamil.com', 'Nigeria'),
('Daniel Wilson', '+44791112356', 'daniel.wilson@gmail.com', 'UK');

--creating a category table
CREATE  TABLE categories(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL);
--inserting into categories
INSERT INTO categories(
name
) VALUES('Smartphones'),
('Laptops' ),
('Acessories' ),
('Wearables'),
('Audio');

--creating products table
CREATE TABLE products(
id  INT PRIMARY KEY AUTO_INCREMENT,
Product_Name VARCHAR(100) NOT NULL,
category_id INT  NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
Product_quantity INT NOT NULL
FOREIGN KEY (category_id) REFERENCES categories(id)
);
-- categories and product has a one to many relationship meaning that many products can belong to one category and one category can belong to many products
INSERT INTO products(
Product_Name,
category_id,
Price,
Product_quantity
) VALUES(
'iphone 15 pro max', 1, 1660590.00, 15),
('Samsung Galaxy S24', 1, 1522115.00, 20),
('Google Pixel 8', 1, 1383615.00, 18),
('Tecno camon 30', 1, 346250.00, 40),
('Infinte Note 40', 1, 304700.00, 50),
('Iphone 14', 1, 1106615.00, 25),
('macbook air m2', 2, 1522115.00, 10),
('Dell Xps 13', 2, 1383615.00, 12),
('HP Pavillion 15', 2, 900250.00, 15),
('lenovo Think pad', 2, 1662000.00, 8),
('Asus ROG Strix G15', 2, 1522115.00, 10),
('Dell XPS 13', 2, 1382615.00, 12),
('HP Pavillon', 2, 900250.00, 15),
('Lenevo Thinkpad X1', 2, 1662000.00,  8),
('Asus ROG Strix', 2, 1800500.00, 6),
('Acer Aspire 5', 2, 761750.00, 20),
('Anker 20000mAh powerbank', 3, 62324.00, 100),
('Type-C fast Charger', 3, 41550.00, 80),
('iphone 15 silicone case', 3, 34625.00, 120),
('laptop Stand Aluminum', 3, 48475.00, 60),
('Wireless Mouse', 3, 27700.00, 90),
('USB-C to HDML cable', 3, 20775.00, 150),
('Apple Watch Series 9', 4, 552615.00, 20),
('Samsung Galaxy Watch 6', 4, 414115.00, 35),
('Oriamo watch', 4, 55400.00, 70),
('Fitbit charge 5', 4, 206365.00, 40),
('Haylou Solar Smartwatch', 4, 76175.00, 60),
('Airpods Pro 2nd Gen', 5, 344185.00, 50),
('Sqmsun galaxy buds 2', 5, 275615.00, 45),
('JBL Flip 6 speaker', 5, 178665.00, 30),
('oraimo free pods', 5, 48475.00, 100),
('Sony WH-1000XM5', 5, 485365.00, 20),
('Anker Soundcare', 5, 109415.00, 55),
('JBL Tune 510BT',  5, 67865.00, 65);

-- creating orders table
CREATE TABLE orders(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
customers_id  INT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
status varchar(20) NOT NULL,
total_amount DECIMAL(10, 2) NOT NULL,
FOREIGN kEY (customers_id) REFERENCES customers(id));


INSERT INTO orders(
customers_id,
status,
total_amount
)
VALUES(1, 'Pending',1660590.00),
(2, 'shipped',1522115.00),
(3, 'pending',1383615.00),
(1, 'cancelled' ,346250.00),
(13, 'Delivered', 304700.00),
(6, 'Pending' ,1106615.00),
(7, 'shipped' ,1522115.00),
(8, 'Delivered' ,1383615.00),
(12, 'cancelled',900250.00),
(14, 'shipped' ,1662000.00),
(9, 'pending' ,1662000.00),
(16, 'Delivered' ,1800500.00),
(15,  'cancelled',761750.00),
(11, 'cancelled',62324.00),
(18, 'Delivered',41550.00),
(19,  'shipped',34625.00),
(3,  'shipped' ,48475.00),
(2, 'pending',27700.00),
(6, 'Delivered',20775.00),
(5, 'cancelled',552615.00),
(8, 'Delivered',414115.00),
(7, 'shipped',62324.00),
(9, 'shipped',41550.00),
(11, 'pending',34625.00),
(12, 'pending' ,48475.00),
(13, 'pending',27700.00),
(14, 'Delivered',20775.00),
(15, 'Delivered',552615.00),
(16, 'cancelled',414115.00),
(18, 'cancelled',1800500.00
);

-- creating order items
CREATE TABLE order_items(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
order_id INT NOT NULL,
Product_id INT NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (Product_id) REFERENCES products(id));
INSERT INTO order_items(
order_id, 
Product_id)
VALUES(1, 2),
(2, 4),
(3, 6),
(10, 3),
(13, 7),
(6, 5),
(7, 8),
(8, 14),
(12, 24),
(14, 10),
(9, 15),
(16, 16),
(15,  12),
(11, 13),
(18, 17),
(19, 18),
(17,  19),
(18, 11),
(26, 10),
(25, 9),
(28, 20),
(27, 21),
(29,  22),
(30, 23),
(22, 25),
(13, 27),
(14, 29),
(15, 26),
(16, 30),
(18, 28),
(21, 2),
(20, 4),
(23, 6),
(1, 3),
(13, 7),
(6, 5),
(7, 8),
(8, 14),
(12, 24),
(14, 10);

-- creating payments table
CREATE TABLE Payments(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
payment_status VARCHAR(50) NOT NULL,
Order_id INT NOT NULL,
FOREIGN KEY (Order_id) REFERENCES orders(id));
INSERT INTO payments(
Order_id,
payment_status)
VALUES(1, 'Pending'),
(2, 'Paid'),
(3, 'pending'),
(4, 'Paid'),
(13, 'Paid'),
(6, 'Pending'),
(7, 'Paid'),
(8, 'Paid'),
(12, 'cancelled'),
(14, 'Paid'),
(9, 'pending'),
(16, 'Paid'),
(15,  'cancelled'),
(11, 'cancelled'),
(18, 'Paid'),
(19,  'Paid'),
(20,  'Paid');

-- Displaying my customers
SELECT * FROM customers ;
-- display all pr oducts above 500000
SELECT * FROM products WHERE Price > 500000
-- products from most expensive to cheapest
SELECT * FROM products ORDER BY Price DESC;
-- Count all customers
SELECT COUNT(*) FROM customers;
-- calculate average products
SELECT AVG(price) AS product_price FROM products;
--FIND THE MOST EXPENSIVE PRODUCT
SELECT MAX(price) AS Expensive_product FROM products;
-- show orders with customers name
SELECT customers.full_name,
orders.id,
FROM customers INNER JOIN orders ON customers.id = orders.customers_id;
-- show product inside every orders
SELECT order_items.Product_id,
order_items.order_id,
FROM order_items INNER JOIN products ON order_items.Product_id = products.id,
FROM order_items  INNER JOIN orders ON order_items.order_id = orders.id;
-- customers and total amount spent
SELECT customers.id,
customers.full_name
orders.total_amount,
FROM customers INNER JOIN orders ON customers.id = orders.customers_id;
-- show customers who has never ordered
SELECT customers.id,
customers.full_name,
FROM customers LEFT JOIN orders ON customers.id = orders.customers_id
WHERE orders.id is Null;
-- Show the number of products in each category
SELECT categories.id,
categories.name
products.Product_Name,
FROM categories INNER JOIN products ON categories.id = products.category_id;
-- customers who spent more than 100000
SELECT customers.id,
customers.full_name
orders.total_amount,
FROM customers INNER JOIN orders ON customers.id = orders.customers_id
WHERE orders.total_amount IS > 100000;

--  EXPORT DATABASE