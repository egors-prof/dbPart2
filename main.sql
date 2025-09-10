--1--
SELECT model,speed,hd FROM PC
WHERE price<500;
--2--
SELECT maker FROM Product WHERE type='Printer'GROUP BY maker
--3--
SELECT model,ram,screen FROM  Laptop WHERE price>1000;
--4--
SELECT *FROM  Printer WHERE color='y';
--5--
SELECT model,speed,hd FROM  PC WHERE price<600 AND (cd='12x' or cd='24x');
---6---
SELECT maker, speed  FROM  Product INNER JOIN Laptop ON Product.model = Laptop.model
WHERE hd >= 10
---7---
SELECT Laptop.model,Laptop.price FROM Laptop INNER JOIN Product ON Laptop.model=Product.model
WHERE maker ='B'
UNION
SELECT Pc.model,Pc.price FROM Pc INNER JOIN Product ON Pc.model=Product.model
WHERE maker ='B'
UNION
SELECT Printer.model,Printer.price FROM Printer INNER JOIN Product ON Printer.model=Product.model
WHERE maker ='B'
---8---
SELECT maker FROM Product WHERE type ='Pc'
EXCEPT
SELECT maker FROM Product WHERE type ='Laptop'
---9---
SELECT maker FROM Product JOIN Pc ON Product.model=Pc.model WHERE speed>=450 GROUP BY maker
---10---
SELECT model,price FROM Printer WHERE price =(SELECT max(price)FROM Printer)
---11---
SELECT avg(speed ) FROM Pc
---12---
SELECT avg(speed) FROM Laptop WHERE price >1000
---13---
SELECT avg(speed) FROM Product JOIN Pc ON Product.model=Pc.model WHERE maker ='A'
---14---
SELECT Classes.class,name,country FROM Classes JOIN Ships ON Classes.class=Ships.class WHERE numGuns>=10
---15---
SELECT hd FROM Pc GROUP BY hd HAVING count(*)>=2

