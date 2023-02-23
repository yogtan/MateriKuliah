--Nomor 1
CREATE TABLE MY_EMPLOYEES (id NUMBER(4)
CONSTRAINT emp_id_pk PRIMARY KEY
,first_name VARCHAR2(20)
,last_name VARCHAR2(25)
,userid VARCHAR2(8)
,salary NUMBER(8,2));


--Nomor 2
SELECT *
FROM MY_EMPLOYEES; 
DESC MY_EMPLOYEES;

--Nomor 3
INSERT INTO MY_EMPLOYEES
VALUES (1, 'Ralph', 'Patel', 'rpatel', 895);


--Nomor 4
INSERT INTO MY_EMPLOYEES
VALUES (2, 'Betty', 'Dance', 'bdance', 860);

--Nomor 5
INSERT INTO MY_EMPLOYEES(id, first_name, last_name, userid, salary) VALUES (3, 'Ben', 'Biri', 'bbiri', 1100);
INSERT INTO MY_EMPLOYEES(id, first_name, last_name, userid, salary) VALUES (4, 'Chad', 'Newman', 'cnewman', 750);
INSERT INTO MY_EMPLOYEES(id, first_name, last_name, userid, salary) VALUES (5, 'Audrey', 'Ropeburn', 'aropebur', 1550);

--Nomor 6
UPDATE MY_EMPLOYEES
SET last_name = 'Drexler', salary	= (SELECT salary
FROM employees
WHERE employee_id = 120)
WHERE id = 3;

--Nomor 7
UPDATE MY_EMPLOYEES
SET salary = 1000 
WHERE salary < 900;

--Nomor 8
DELETE MY_EMPLOYEES 
WHERE id = 2;


