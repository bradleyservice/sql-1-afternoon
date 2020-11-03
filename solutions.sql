CREATE TABLE person (
	id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INT,
  height INT,
  city VARCHAR(120),
  favorite_color VARCHAR(200)
);

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Butters', 24, 72, 'South Park', 'orange'),
('Grandie', 12, 50, 'Bellevue', 'purple'),
('Sally', 22, 60, 'Minneapolis', 'green'),
('Heather', 44, 65, 'Ballinger', 'yellow'),
('Pablo', 63, 63, 'Laos', 'blue');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color NOT IN ('red', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('green', 'orange');

SELECT * FROM person
WHERE favorite_color IN ('green', 'orange', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(160),
  product_price DECIMAL,
  quantity INT
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(100, 'Oranges', 0.69, 2000),
(101, 'Peaches', 2.02, 105),
(100, 'Handsaw', 149.99, 2),
(102, 'DVD', 20.99, 63),
(101, 'Books', 30, 300);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(product_price) FROM orders;

SELECT sum(product_price) FROM orders
WHERE person_id = 100;

INSERT INTO artist
(name)
VALUES
('Gully Boys'),
('Niiice.'),
('Doggy');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT birth_date FROM employee
ORDER BY birth_date ASC
LIMIT 1;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT * FROM invoice
ORDER BY total DESC
LIMIT 1;
--  OR 
 SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice;

SELECT sum(total) FROM invoice;