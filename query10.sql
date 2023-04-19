USE pierwsza_baza;

SELECT name, length(name), surname, length(surname), lower(name), upper(name) FROM users;

SELECT profession, length(profession), avg(age), min(age), max(age) FROM users GROUP BY profession HAVING length(profession) > 5 ORDER BY profession ASC;

SELECT count(distinct(profession))FROM users;

SELECT now();