
USE mysql_challenges;

CREATE TABLE cars_copy select * from cars;

SELECT * FROM cars_copy;

INSERT INTO cars_copy(make, model, year) 
VALUES ('Toyota', 'Hundai', 2021),('Mercedes', 'Mazda', 2021),('Ford', 'Kia', 2021);



ALTER TABLE cars_copy ADD price INT, ADD color VARCHAR(10);

UPDATE cars_copy
SET `price`=60000, `color`='red' 
WHERE model='Supra';

SELECT CONCAT(make, ' ', model)
 AS 'make and model' 
FROM cars_copy;


SELECT DISTINCT make, COUNT('model') 
AS results 
FROM cars 
GROUP BY make;