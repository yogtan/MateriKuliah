--Nomor 1
SELECT department_id
FROM employees
MINUS
SELECT department_id
FROM employees
WHERE job_id = 'ST_CLERK'
ORDER BY department_id;

--Nomor 2
SELECT country_id, country_name
FROM countries
MINUS
SELECT country_id, country_name
FROM countries
NATURAL JOIN locations
NATURAL JOIN departments;

--Nomor 3
SELECT job_id, department_id
FROM employees
UNION
SELECT job_id, department_id
FROM employees
WHERE department_id IN (10,20,50);

--Nomor 4
SELECT employee_id, job_id
FROM employees
WHERE(employee_id, job_id) IN(SELECT employee_id,job_id
        FROM employees
        UNION
        SELECT employee_id, job_id
 FROM job_history);

CREATE TABLE dept_job (
DEPARTMENT_ID NUMBER (15) CONSTRAINT depertment_id_pk PRIMARY KEY,
EMPLOYEE_ID NUMBER (10) CONSTRAINT employee_id_nn NOT NULL,
JOB_ID VARCHAR2 (15));

ALTER TABLE dept_job ADD (LAST_NAME VARCHAR2 (35) CONSTRAINT lastname_nn NOT NULL);