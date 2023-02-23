--Nomor 1
CREATE TABLE DEPT1 (id NUMBER(7)
                    CONSTRAINT dep_id_pk PRIMARY KEY,
                    nama VARCHAR2(25));
 
DESC dept1;
SELECT * FROM dept1;

--Nomor 2
INSERT INTO dept1
SELECT department_id, department_name
FROM departments;

SELECT * FROM dept1;

--Nomor 3
CREATE TABLE EMP1 (id NUMBER(7)
        CONSTRAINT emp1_id_pk PRIMARY KEY,
        last_name VARCHAR2(25),
        first_name VARCHAR2(26),
        dept_id NUMBER(7)
        CONSTRAINT emp1_id_fk REFERENCES dept1(id));
 
DESC emp1;
SELECT * FROM emp1;

--Nomor 4
ALTER TABLE emp1
MODIFY (first_name VARCHAR2(50));

DESC emp1p;

--Nomor 5
CREATE TABLE emp2
AS
SELECT employee_id "ID", first_name, last_name,
        salary,department_id "DEPT_ID"
FROM employees;

DESC emp2;
SELECT * FROM emp2;

--Nomor 6
DROP TABLE emp1;

--Nomor 7
RENAME emp2 TO STAFF;

--Nomor 8
ALTER TABLE staff
DROP COLUMN first_name;

DESC staff;

--Nomor 9
DESC employees2;

--Nomor 10
CREATE TABLE DEPARTMENTS2 
        (department_id NUMBER(10)
        CONSTRAINT dept2_deptid_pk PRIMARY KEY
        CONSTRAINT dept2_deptid_nn NOT NULL,
        department_name VARCHAR2(30)
        CONSTRAINT dept2_deptname_nn NOT NULL,
        manager_id NUMBER(10)
        CONSTRAINT dept2_manager_nn NOT NULL
        CONSTRAINT dept2_manager_fk REFERENCES employees2
        (employee_id), location_id NUMBER(10)
        CONSTRAINT dept2_loc_nn NOT NULL);
 
DESC departments2;
SELECT * FROM departments2;

--Nomor 11
DROP TABLE employees2;

--Nomor 12
DROP TABLE departments2;

--Nomor 13
DROP TABLE emAployees2;