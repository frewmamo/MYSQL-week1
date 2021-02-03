USE mysql_challenges;

CREATE TABLE movies2copy select * from movies2;


SELECT * FROM movies2copy;

ALTER TABLE movies2copy
ADD directors_first_name VARCHAR(125);

ALTER TABLE movies2copy
ADD directors_last_name VARCHAR(125);

INSERT INTO movies2copy (directors_first_name,directors_last_name)
VALUES('Orson','Welles'),('John','Ford'),('Peter','Jackson'),('Paul','Anderson'),('Pete','Docter'),('Andrew','Andamson'),('Rob','Letterman'),('J.J','Abrams'),('Ron','Clements'),('Lee','Unkrich');

UPDATE movies2copy
SET 
directors_first_name ='Orson',
directors_last_name = 'Welles'
WHERE Title ='Citizen Cane';

UPDATE movies2copy
SET 
directors_first_name ='John',
directors_last_name = 'Ford'
WHERE Title ='The quite Man';

UPDATE movies2copy
SET 
directors_first_name ='Paul',
directors_last_name = 'Anderson'
WHERE Title ='TLOTR: The Return of the King ';

UPDATE movies2copy
SET 
directors_first_name ='Peter',
directors_last_name = 'Doctor'
WHERE Title ='Monster Hunter';

UPDATE movies2copy
SET 
directors_first_name ='Andrew',
directors_last_name = 'Andamson'
WHERE Title ='Inside Out ';

UPDATE movies2copy
SET 
directors_first_name ='Rob',
directors_last_name = 'Letterman'
WHERE Title ='Shrek';

UPDATE movies2copy
SET 
directors_first_name ='J.J',
directors_last_name = 'Abrams'
WHERE Title ='Pokémon Detective Pikachu';

UPDATE movies2copy
SET 
directors_first_name ='Clement',
directors_last_name = 'Ron'
WHERE Title ='Star Wars: Episode IX - The Rise of Skywalker';

UPDATE movies2copy
SET 
directors_first_name ='John',
directors_last_name = 'Ron'
WHERE Title ='Moana ';

UPDATE movies2copy
SET 
directors_first_name ='Lee',
directors_last_name = 'Ulkrich'
WHERE Title ='Coco';

SELECT CONCAT(directors_first_name, ' ', directors_last_name) 
AS 'Together' 
FROM movies2copy;

SELECT * FROM movies2copy;


SELECT directors_last_name FROM movies2copy 
ORDER BY directors_last_name ASC;

SELECT * FROM movies2copy
WHERE directors_last_name >= 'R%';

SELECT directors_last_name FROM movies2copy
ORDER BY directors_last_name
LIMIT 3;
