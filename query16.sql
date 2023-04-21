CREATE PROCEDURE select_users()
SELECT * FROM users;


CALL select_users;

CREATE PROCEDURE szukaj_uzytkownika(IN imie VARCHAR(200))
SELECT * FROM users WHERE name = imie;

CALL szukaj_uzytkownika('Dariusz');