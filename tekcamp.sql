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

CREATE TABLE ta_tim_phillips (
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100)
);

INSERT INTO ta_tim_phillips (first_name, last_name)
VALUES ('Gabe', 'Chavez'),
('Abigail', 'Swigert'),
('Adam', 'Rice'),
('Marcelo', 'Barbosa'),
('Julian', 'Ladd'),
('Jose', 'Moreno'),
('Phoenix', 'Shane'),
('Michael', 'Kinney'),
('Christian', 'Gonzalez'),
('Monica', 'Howard'),
('Devon', 'Brewster');

CREATE TABLE hobbies (
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
hobby VARCHAR(255)
);

INSERT INTO hobbies (first_name, last_name, hobby)
VALUES ('Gabe', 'Chavez', 'Cattle rustling'),
('Abigail', 'Swigert', 'Reading'),
('Adam', 'Rice', 'Golfing'),
('Marcelo', 'Barbosa', 'Jiu Jitsu'),
('Julian', 'Ladd', 'Pickle ball'),
('Jose', 'Moreno', 'Soccer'),
('Phoenix', 'Shane', 'Aerial yoga'),
('Michael', 'Kinney', NULL),
('Christian', 'Gonzalez', NULL),
('Monica', 'Howard', NULL),
('Devon', 'Brewster', NULL),
('Aaron', 'White', NULL),
('Caleb', 'Waters', 'Eating'),
('Cody', 'Clark', 'Cooking'),
('George', 'Torres', 'Gaming'),
('Gowtham', 'Katta', 'Running'),
('Jessica', 'Ulysse', 'Listening to music and creating playlists'),
('John', 'Bosarov', 'Soccer'),
('John', 'Kol', NULL),
('Justin', 'Cheng', 'Eating'),
('Katherine', 'Kim', 'Writing'),
('Kevin', 'Ibanez', 'Working out'),
('Kevin', 'Keesee', 'Video games'),
('Korey', 'Brooks', NULL),
('Matthew', 'Castiglione', 'Video games'),
('Matthew', 'Choat', 'Longboarding'),
('Nancy', 'Golden', NULL),
('Norita', 'Sieffert', 'Motorcycle riding'),
('Sabitha', 'Radhakrishnan', 'Doing engineering projects with kids'),
('Sarah', 'Bates', NULL),
('Tyler', 'Clements', 'Growing hot peppers'),
('Vani', 'Muppuru', NULL),
('Victor', 'Betts', 'Reading'),
('Vimala', 'Murthy', 'Gardening'),
('Zachary', 'Johnson', 'Hockey');

SELECT ta_tim_phillips.first_name, ta_tim_phillips.last_name, hobbies.hobby FROM ta_tim_phillips
LEFT JOIN hobbies ON ta_tim_phillips.last_name = hobbies.last_name;

ALTER TABLE tekcampers
ADD COLUMN bootcamp VARCHAR(255) AFTER education;

ALTER TABLE ta_tim_phillips
ADD COLUMN bootcamp VARCHAR(255) AFTER last_name;