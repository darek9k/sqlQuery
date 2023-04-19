USE pierwsza_baza;

-- FUNKCJE GRUPUJĄCE
SELECT avg(age) FROM users;
SELECT count(*) FROM users;
SELECT sum(age) FROM users;
SELECT max(age), min(age) FROM users;
SELECT distinct(surname) FROM users;

-- FUNKCJE GROUP BY, HAVING
SELECT profession, count(profession) FROM users GROUP BY profession;
SELECT profession, avg(age) FROM users GROUP BY profession ORDER BY profession ASC;
SELECT profession, avg(age) FROM users GROUP BY profession HAVING avg(age) < 45;

-- FUNCKEJ CZASU
SELECT curdate();
SELECT curtime();
SELECT now();

-- FUNKCJE TEKSTOWE 
SELECT lower(name) FROM users;
SELECT upper(name) FROM users;
SELECT length(name), name FROM users;
-- Wycinająca
SELECT left('Moje zdanie testowe',5);
SELECT right('Moje zdanie testowe',5);
SELECT concat(name, '',surname) FROM users;
SELECT concat('Mam na imie: ', name,' i mam ',age,'lat.') FROM users;

-- FUNKCJE MATEMATYCZNE
SELECT ABS(-90);
SELECT RADIANS(90);
SELECT LOG(2,8);
SELECT 8 MOD 3;
SELECT 8 % 3;
SELECT ROUND(123.6443);
SELECT ROUND(324.5432,3);
SELECT RAND();
SELECT PI();