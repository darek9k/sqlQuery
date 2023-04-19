USE pierwsza_baza;

SELECT * FROM users WHERE age BETWEEN 30 AND 50;

SELECT * FROM users WHERE name IN ('Krzysztof', 'Danuta');

SELECT * FROM users WHERE surname like '%Kow%';

SELECT * FROM users WHERE name like '_anu%';

SELECT * FROM users WHERE age is null;

SELECT * FROM users WHERE age is not null;


