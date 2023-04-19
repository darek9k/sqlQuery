USE pierwsza_baza;
INSERT INTO users (name, surname, age, city, profession) VALUES ('Jan', 'Kowalski', 41, 'Warszawa', 'Informatyk');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Ewa', 'Kowalska', 40, 'Warszawa', 'Pomoc w przedszkolu');
INSERT INTO users (name, surname, city, profession) VALUES ('Ewa', 'Kowalska', 'Warszawa', 'Pomoc w przedszkolu');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Ewa', 'Kowalska', 41, 'Warszawa', 'QA Engineer');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Rafał', 'Kowalski', 42, 'Warszawa', 'Automatic Tester');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Jan', 'Kowalski', 62, 'Warszawa', 'Dziadek');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Zofia', 'Kowalska', 63, 'Warszawa', 'Babcia');

SELECT * FROM users;

UPDATE users SET age = 42 WHERE id = 1;

UPDATE users SET name = 'Anna' WHERE id = 3;

DELETE FROM users WHERE id = 1;



