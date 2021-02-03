

USE mysql_challenges;


CREATE TABLE movies2 (
id INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(50),
Release_Date INT,
Rating VARCHAR(10)
);

INSERT INTO movies2 (Title,Release_Date,Rating)
VALUES('Citizen Cane',1997,'R'),('The quite man',1995,'PG-13'),('Jumanji',2003,'R'),('Lord of the Rings',2020,'PG-13'),('Inside Out ',2015,'PG'),('Shrek',2001,'PG');

INSERT INTO movies2 (Title,Release_Date,Rating)
VALUES('Family Guy',2019,'PG'),('Star Wars: Episode IX - The Rise of Skywalker',2019,'PG-13'),('Moana ',2016,'PG'),('Coco',2017,'PG');




SELECT * FROM movies2 
WHERE Title LIKE 'S%'
ORDER BY Release_Date ASC;