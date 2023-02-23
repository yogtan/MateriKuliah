--Nomor 1
SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date BETWEEN '1-FEB-98' AND '31-DEC-08'
ORDER BY hire_date ASC;

--Nomor 2
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20,50)
ORDER BY last_name DESC;

--Nomor 3
SELECT last_name "Employee", salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (20,50);

--Nomor 4
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%e%';

--Nomor 5
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary, commission_pct DESC;

--Nomor 6
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_REP','SH_CLERK')
AND salary NOT IN (2500, 3500, 7000);

--Nomor 7
SELECT last_name, job_id, salary
FROM employees
WHERE last_name LIKE 'O%'
ORDER BY last_name ASC, job_id DESC;

--Nomor 8
SELECT department_id, last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NULL
ORDER BY department_id DESC, last_name ASC;

--Nomor 9
SELECT department_id, last_name, salary, commission_pct
FROM employees
WHERE salary NOT BETWEEN 7000 AND 10000
AND commission_pct > 0.1
ORDER BY department_id DESC, last_name ASC;

--Nomor 10
SELECT department_id "Department", last_name "Employee", salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (20,50)
ORDER BY "Monthly Salary" DESC;


