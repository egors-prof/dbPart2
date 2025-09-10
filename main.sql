--1--
select model,speed,hd from PC
where price<500;
--2--
select maker from Product where type='Printer'group by maker
--3--
select model,ram,screen from Laptop where price>1000;
--4--
select*from Printer where color='y';
--5--
Select model,speed,hd from PC where price<600 and (cd='12x' or cd='24x');
---6---
Select maker, speed  from Product inner join Laptop on Product.model = Laptop.model
where hd >= 10
---7---
select Laptop.model,Laptop.price from Laptop inner join Product on Laptop.model=Product.model
where maker ='B'
union
select Pc.model,Pc.price from Pc inner join Product on Pc.model=Product.model
where maker ='B'
union
select Printer.model,Printer.price from Printer inner join Product on Printer.model=Product.model
where maker ='B'
---8---
select maker  from Product where type ='Pc'
except
select maker from Product where type ='Laptop'
---9---
Select maker from Product join Pc on Product.model=Pc.model where speed>=450 group by maker
---10---
select model,price from Printer where price =(select max(price)from Printer)
---11---
Select avg(speed ) from Pc
---12---
Select avg(speed) from Laptop where price >1000
---13---
select avg(speed) from Product join Pc on Product.model=Pc.model where maker ='A'
---14---
select Classes.class,name,country from Classes join Ships on Classes.class=Ships.class where numGuns>=10
---15---
Select hd from Pc group by hd having count(*)>=2

