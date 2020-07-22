--Students database contains one table named tekcamp01

CREATE DATABASE tc1_phoenix_shane;

USE tc1_phoenix_shane;

CREATE TABLE tekcampers
SELECT * FROM students.tekcamp01;

INSERT INTO tekcampers(first_name, last_name, gender)
VALUES ('Aaron', 'White', 'M'),
('Cody', 'Clark', 'M'),
('Devon', 'Brewster', 'M'),
('Gowtham', 'Katta', 'M'),
('John', 'Bosarov', 'M'),
('John', 'Kol', 'M'),
('Justin', 'Cheng', 'M'),
('Kevin', 'Keesee', 'M'),
('Monica', 'Howard', 'F'),
('Tyler', 'Clements', 'M'),
('Vimala', 'Murthy', 'F');

DELETE FROM tekcampers
WHERE first_name = 'Desaree';

DELETE FROM tekcampers
WHERE first_name = 'Rosa';

DELETE FROM tekcampers
WHERE first_name = 'Jake';

UPDATE tekcampers
SET gender=education;

UPDATE tekcampers
SET education=null;

UPDATE tekcampers
SET gender = 'M'
WHERE first_name = 'Christian';

UPDATE tekcampers
SET gender = 'M'
WHERE first_name = 'Gabe';

UPDATE tekcampers
SET gender = 'M'
WHERE first_name = 'George';

UPDATE tekcampers
SET gender = 'F'
WHERE first_name = 'Jessica';

UPDATE tekcampers
SET gender = 'F'
WHERE first_name = 'Norita';

UPDATE tekcampers
SET gender = 'M'
WHERE first_name = 'Michael';

UPDATE tekcampers
SET education = 'High School'
WHERE last_name = 'Ibanez'
OR last_name = 'Keesee'
OR last_name = 'Johnson';

UPDATE tekcampers
SET education = 'Some College'
WHERE last_name = 'Gonzalez'
OR last_name = 'Clark'
OR last_name = 'Brewster'
OR last_name = 'Torres'
OR last_name = 'Ladd'
OR last_name = 'Cheng'
OR last_name = 'Barbosa'
OR last_name = 'Betts';

UPDATE tekcampers
SET education = 'Associates Degree'
WHERE last_name = 'Waters'
OR last_name = 'Shane';

UPDATE tekcampers
SET education = 'Bachelors Degree'
WHERE last_name = 'Swigert'
OR last_name = 'Rice'
OR last_name = 'Katta'
OR last_name = 'Ulysse'
OR last_name = 'Bosarov'
OR last_name = 'Moreno'
OR last_name = 'Kim'
OR last_name = 'Castiglione'
OR last_name = 'Radhakrishnan'
OR last_name = 'Clements';

UPDATE tekcampers
SET education = 'Masters Degree'
WHERE last_name = 'Choat'
OR last_name = 'Golden'
OR last_name = 'Murthy';

UPDATE tekcampers
SET education = 'Doctorate'
WHERE last_name = 'Sieffert';

ALTER TABLE tekcampers MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

SELECT last_name FROM tekcampers
WHERE length(last_name) > 7;

SELECT * FROM tekcampers
ORDER BY first_name ASC;

SELECT * FROM tekcampers
ORDER BY last_name ASC;

SELECT * FROM tekcampers
WHERE gender = 'M';

SELECT * FROM tekcampers
WHERE gender = 'F';

SELECT * FROM tekcampers
WHERE education = 'Masters Degree';

SELECT * FROM tekcampers
WHERE education = 'Bachelors Degree';

SELECT * FROM tekcampers
WHERE education = 'Associates Degree';

SELECT * FROM tekcampers
WHERE education = 'High School';

