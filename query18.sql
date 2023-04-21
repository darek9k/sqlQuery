USE task;

CREATE TABLE sale(
id INT AUTO_INCREMENT PRIMARY KEY,
id_product INT,
id_client INT,
price INT
);

DROP TABLE sale;

CREATE TABLE price(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200)
);

CREATE TABLE client(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200),
country VARCHAR(200)
);

CREATE TABLE product(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200)
);

CREATE TABLE info(
id INT AUTO_INCREMENT PRIMARY KEY,
data timestamp default now(),
id_sale INT
);

DROP TABLE info;

CREATE PROCEDURE addClient (IN name VARCHAR(200), country VARCHAR(200))
INSERT INTO client (name, country) VALUES (name, country);

CREATE PROCEDURE addProduct (IN name VARCHAR(200))
INSERT INTO product (name) VALUES (name);

CREATE PROCEDURE addSale (IN id_product INT, id_client INT, price INT)
INSERT INTO sale (id_product, id_client, price) VALUES (id_product, id_client, price);

CALL addClient ('Dariusz', 'Warszawa');
CALL addClient ('Juliusz', 'Warszawa');
CALL addClient ('Aleksandra', 'Plock');
CALL addClient ('Anna', 'Lomianki');
CALL addClient ('Dariusz', 'Olsztyn');

CALL addProduct ('Komputer');
CALL addProduct ('Monitor');
CALL addProduct ('Myszka');
CALL addProduct ('Klawiatura');
CALL addProduct ('Glosniki');

CALL addSale (1,1,3500);
CALL addSale (1,2,2500);
CALL addSale (1,3,300);
CALL addSale (2,4,150);
CALL addSale (2,5,500);
CALL addSale (1,5,500);
CALL addSale (3,1,3500);
CALL addSale (4,5,500);
CALL addSale (5,1,3500);

SELECT a.price, b.name, b.country, c.name FROM sale a
LEFT JOIN client b ON a.id_client = b.id
LEFT JOIN product c ON a.id_product = c.id;

CREATE TRIGGER count AFTER INSERT ON sale
FOR EACH ROW 
INSERT INTO info (id_sale) VALUES (NEW.id);

DROP TRIGGER count;

CALL addSale (1,1,3500);
CALL addSale (1,2,2500);
CALL addSale (1,3,300);
CALL addSale (2,4,150);
CALL addSale (2,5,500);

SELECT * FROM info;

SELECT c.name, p.name, s.price, i.data FROM info i
LEFT JOIN sale s ON s.id = i.id_sale
LEFT JOIN product p ON p.id = s.id_product
LEFT JOIN client c ON c.id = s.id_client;

CREATE PROCEDURE deleteUser (IN id INT)
DELETE FROM client WHERE id = id;












