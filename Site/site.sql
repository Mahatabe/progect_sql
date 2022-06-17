clear screen;

SET SERVEROUTPUT ON;
SET VERIFY OFF;

drop table Orders CASCADE CONSTRAINTS;
drop table Car CASCADE CONSTRAINTS;
drop table Car2 CASCADE CONSTRAINTS;
drop table Price CASCADE CONSTRAINTS;
drop table Price2 CASCADE CONSTRAINTS;
drop table Location CASCADE CONSTRAINTS;

create table Car(carNo number, carName varchar2(40), totalCar number, carType varchar2(20), totalSit number, available varchar2(10), PRIMARY KEY(carNo));
create table Location(locationNo number, location1 varchar2(40), location2 varchar2(40), distanceKm number, PRIMARY KEY(locationNo));
create table Price(priceNo number, carType varchar2(20), timesP number, locationNo number, totalPrice number, PRIMARY KEY(priceNo), FOREIGN KEY(locationNo) REFERENCES Location(locationNo));
create table Orders(orderNo number, customerName varchar2(40), carNo number, duration number, tCarOrder number, priceNo number, total number, dates varchar2(40), PRIMARY KEY(orderNo), FOREIGN KEY(carNo) REFERENCES Car(carNo), FOREIGN KEY(priceNo) REFERENCES Price(priceNo));

CREATE OR REPLACE TRIGGER TRI1 
BEFORE INSERT 
ON Car
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Insert into Car table');
END;
/

insert into Car values (1, 'Audi', 5, 'Large', 8, 'Yes');
insert into Car values (2, 'Audi', 3, 'Mini', 4, 'Yes');
insert into Car values (3, 'BMW', 4, 'Mini', 4, 'Yes'); 
insert into Car values (4, 'Chevrolet', 3, 'Large', 8, 'Yes');
insert into Car values (5, 'Chevrolet', 5, 'Mini', 4, 'Yes'); 
insert into Car values (6, 'Ford', 2, 'Large', 7, 'Yes');
insert into Car values (7, 'Ford', 4, 'Mini', 4, 'Yes'); 
insert into Car values (8, 'Hyundai', 10, 'Large', 8, 'Yes');
insert into Car values (9, 'Hyundai', 10, 'Mini', 4, 'Yes'); 
insert into Car values (10, 'Jeep', 5, 'Large', 10, 'Yes');
insert into Car values (11, 'Kia', 5, 'Mini', 10, 'Yes');
insert into Car values (12, 'Mercedes-Benz', 2, 'Mini', 4, 'Yes'); 
insert into Car values (13, 'Tesla', 10, 'Mini', 10, 'Yes');
insert into Car values (14, 'Toyota', 20, 'Mini', 4, 'Yes'); 
insert into Car values (15, 'Toyota', 10, 'Large', 7, 'Yes');

CREATE OR REPLACE TRIGGER TRI2 
BEFORE INSERT 
ON Location
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Insert into Location table');
END;
/

insert into Location values (1, 'Banasree', 'Khilgaon', 3);
insert into Location values (2, 'Banasree', 'Gulshan', 5);
insert into Location values (3, 'Banasree', 'Mirpur', 15);
insert into Location values (4, 'Banasree', 'Uttara', 30);
insert into Location values (5, 'Khilgaon', 'Mirpur', 18);
insert into Location values (6, 'Khilgaon', 'Banasree', 3);
insert into Location values (7, 'Khilgaon', 'Uttara', 33);
insert into Location values (8, 'Khilgaon', 'Gulshan', 8);
insert into Location values (9, 'Mirpur', 'Khilgaon', 18);
insert into Location values (10, 'Mirpur', 'Banasree', 15);
insert into Location values (11, 'Mirpur', 'Uttara', 20);
insert into Location values (12, 'Mirpur', 'Khilgaon', 3);
insert into Location values (13, 'Gulshan', 'Khilgaon', 10);
insert into Location values (14, 'Gulshan', 'Banasree', 5);
insert into Location values (15, 'Gulshan', 'Uttara', 20);
insert into Location values (16, 'Gulshan', 'Mirpur', 18);
insert into Location values (17, 'Uttara', 'Khilgaon', 30);
insert into Location values (18, 'Uttara', 'Banasree', 25);
insert into Location values (19, 'Uttara', 'Gulshan', 20);
insert into Location values (20, 'Uttara', 'Mirpur', 18);

CREATE OR REPLACE TRIGGER TRI3 
BEFORE INSERT 
ON Price
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Insert into Price table');
END;
/

insert into Price values (1, 'Large', 1, 1, 200);
insert into Price values (2, 'Large', 1, 2, 350);
insert into Price values (3, 'Large', 1, 3, 500);
insert into Price values (4, 'Large', 1, 4, 600);
insert into Price values (5, 'Large', 1, 5, 550);
insert into Price values (6, 'Large', 1, 6, 200);
insert into Price values (7, 'Large', 1, 7, 700);
insert into Price values (8, 'Large', 1, 8, 350);
insert into Price values (9, 'Large', 1, 9, 450);
insert into Price values (10, 'Large', 1, 10, 400);
insert into Price values (11, 'Large', 1, 11, 550);
insert into Price values (12, 'Large', 1, 12, 200);
insert into Price values (13, 'Large', 1, 13, 350);
insert into Price values (14, 'Large', 1, 14, 300);
insert into Price values (15, 'Large', 1, 15, 550);
insert into Price values (16, 'Large', 1, 16, 500);
insert into Price values (17, 'Large', 1, 17, 650);
insert into Price values (18, 'Large', 1, 18, 550);
insert into Price values (19, 'Large', 1, 19, 450);
insert into Price values (20, 'Large', 1, 20, 400);
insert into Price values (21, 'Mini', 1, 1, 150);
insert into Price values (22, 'Mini', 1, 2, 300);
insert into Price values (23, 'Mini', 1, 3, 400);
insert into Price values (24, 'Mini', 1, 4, 500);
insert into Price values (25, 'Mini', 1, 5, 400);
insert into Price values (26, 'Mini', 1, 6, 150);
insert into Price values (27, 'Mini', 1, 7, 500);
insert into Price values (28, 'Mini', 1, 8, 250);
insert into Price values (29, 'Mini', 1, 9, 350);
insert into Price values (30, 'Mini', 1, 10, 300);
insert into Price values (31, 'Mini', 1, 11, 450);
insert into Price values (32, 'Mini', 1, 12, 100);
insert into Price values (33, 'Mini', 1, 13, 250);
insert into Price values (34, 'Mini', 1, 14, 200);
insert into Price values (35, 'Mini', 1, 15, 400);
insert into Price values (36, 'Mini', 1, 16, 400);
insert into Price values (37, 'Mini', 1, 17, 500);
insert into Price values (38, 'Mini', 1, 18, 400);
insert into Price values (39, 'Mini', 1, 19, 350);
insert into Price values (40, 'Mini', 1, 20, 300);

CREATE OR REPLACE TRIGGER TRI4 
BEFORE INSERT 
ON Orders
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Insert into Orders table');
END;
/

insert into Orders values (1, 'Mostafa', 1, 5, 1, 1, 200, '03-10-2022');
insert into Orders values (2, 'Mahatabe', 3, 4, 1, 200,  '03-10-2022');
insert into Orders values (3, 'Ranan', 4, 3, 1, 7, 700, '03-10-2022');
insert into Orders values (4, 'Hasin', 15, 3, 1, 15, 550, '03-10-2022');
insert into Orders values (5, 'Shobuj', 8, 3, 1, 18, 550, '03-10-2022');

select * from Car;
select * from Location;
select * from Price;
select * from Orders;



create table Car2(carNo number, carName varchar2(40), totalCar number, carType varchar2(20), totalSit number, available varchar2(10), PRIMARY KEY(carNo));
BEGIN

	FOR i IN (SELECT * FROM Car WHERE carType = 'Mini')
	LOOP
		insert into Car2 VALUES (i.carNo, i.carName, i.totalCar, i.carType, i.totalSit, i.available);
	END LOOP;

END;
/

create table Price2(priceNo number, carType varchar2(20), timesP number, locationNo number, totalPrice number, PRIMARY KEY(priceNo), FOREIGN KEY(locationNo) REFERENCES Location(locationNo));
BEGIN

	FOR j IN (SELECT * FROM Price WHERE carType = 'Mini')
	LOOP
		insert into Price2 VALUES (j.priceNo, j.carType, j.timesP, j.locationNo, j.totalPrice);
	END LOOP;

END;
/


CREATE OR REPLACE PACKAGE Car_rental2 AS

	FUNCTION myF2(C1 Car.carType%TYPE, L1 IN Location.location1%TYPE, L2 in Location.location1%TYPE, T1 in number)
	RETURN number;
	
END Car_rental2;
/

CREATE OR REPLACE PACKAGE BODY Car_rental2 AS

	FUNCTION myF2(C1 Car.carType%TYPE, L1 IN Location.location1%TYPE, L2 in Location.location1%TYPE, T1 in number)
	RETURN number
	IS 	
	
	T2 NUMBER;
	
	BEGIN
	

		select Price2.totalPrice into T2 from Price2 inner join Location on Price2.locationNo = Location.locationNo where Location.location1 = L1 and Location.location2 = L2;
		T2 := T2 * T1;
		DBMS_OUTPUT.PUT_LINE('Total price : ' || T2);	
		
	RETURN T2;
	
	END myF2;	
	
END Car_rental2;
/

CREATE OR REPLACE PROCEDURE carP2(pro IN Car2.carType%TYPE)
IS
BEGIN

	For K in (SELECT carNo, carName from Car2 where carType = pro and available = 'Yes')
	Loop
	DBMS_OUTPUT.PUT_LINE(K.carNo ||' ' || K.carName);
	End Loop;
	
END carP2;
/
/*
DECLARE

	D Car.carType%TYPE;
	A Location.location1%TYPE;
	B Location.location2%TYPE;
	C number;
	
	T number;
	
BEGIN

	D := '&U';
	A := '&X';
	B := '&Y';
	C := &Z;
	
	T := Car_rental2.myF(D, A, B, C);
	
	DBMS_OUTPUT.PUT_LINE('Here are the available cars for you !');
	carP2(D);
	
EXCEPTION	
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('No data Found !');	
		
END;
/
*/

