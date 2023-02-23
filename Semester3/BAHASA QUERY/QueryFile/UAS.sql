CREATE TABLE employees_uas AS SELECT * FROM employees;
CREATE TABLE departments_uas AS SELECT * FROM departments;
CREATE TABLE jobs_uas AS SELECT * FROM jobs;

UPDATE employees_uas
SET salary = (SELECT salary FROM employees_uas
                WHERE employee_id = 125)
WHERE last_name = 'Weiss';
 
 SELECT last_name, employee_id, salary
FROM employees_uas
WHERE last_name = 'Weiss';

        
        CREATE TABLE dept_loc(
department_id NUMBER(10) NOT NULL,
employee_id NUMBER(30) NOT NULL,
locaton_id VARCHAR2(10) NOT NULL;

SELECT job_id, department_id
FROM employees
UNION
SELECT job_id, department_id
FROM employees
WHERE department_id IN (10,20,50);

drop table dept_loc;
CREATE TABLE dept_loc (
department_id NUMBER (15) 
CONSTRAINT depertment_id_pk PRIMARY KEY
CONSTRAINT depertment_id_nn NOT NULL,
employee_id NUMBER (10)
CONSTRAINT employee_id_nn NOT NULL,
location_id VARCHAR2 (20));

ALTER TABLE dept_loc MODIFY (location_id NUMBER (25) CONSTRAINT location_id_nn NOT NULL);

 SELECT department_id, department_name
FROM departments JOIN employees
USING (department_id)
MINUS
SELECT department_id, department_name
FROM departments JOIN employees 
USING (department_id)
WHERE job_id IN ('ST_CLERK', 'SA_REP');

