/* Christina Deni Rumiarti
Bahasa Query Modul 3 (2022/2023)
Prodi Informatika - Fakultas Sains dan Teknologi - Universitas Sanata Dharma
*/

-- Contoh 1:
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000 AND job_id LIKE '%MAN%';

-- Contoh 2:
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000 
OR job_id LIKE '%MAN%';

-- Contoh 3:
SELECT last_name, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG','ST_CLERK','SA_REP');

-- Contoh 4:
SELECT last_name, job_id
FROM employees
WHERE job_id NOT IN ('AC_ACCOUNT', 'AD_VP');

SELECT last_name, job_id
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

SELECT last_name, job_id
FROM employees
WHERE last_name NOT LIKE '%a%';

SELECT last_name, job_id
FROM employees
WHERE commission_pct IS NOT NULL;

-- Contoh 5:
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP'
OR job_id = 'AD_PRES'
AND salary > 15000;

-- Contoh 6:
SELECT last_name, job_id, salary FROM employees
WHERE (job_id = 'SA_REP'  OR job_id = 'AD_PRES')
AND	salary > 15000;

-- Contoh 7:
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date;

-- Contoh 8:
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

-- Contoh 9:
SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal;

-- Contoh 10:
SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary DESC;

--Nomor 1
SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date BETWEEN '01-FEB-98' AND '01-DEC-08'
ORDER BY hire_date ASC;

--Nomor 2
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20,50)
ORDER BY department_id DESC;

--Nomor 3ggggg
SELECT last_name, salary, department_id
FROM employees
WHERE salary BETWEEN 5000 AND 12000 salary ;

--Nomor 4gggggg
SELECT last_name
FROM employees
--WHEre last_name LIKE '%e%a%';
WHERE (last_name LIKE'%a%' AND last_name LIKE '%e%');

--Nomor 5
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary, commission_pct DESC;


--Nomor 6yjtrj
SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = 'SA_REP' OR job_id = 'AD_CLERK')
AND salary NOT IN (2500, 3500) 
OR salary NOT LIKE 7000;

--Nomor 7
SELECT last_name, job_id, salary
FROM employees
WHERE last_name LIKE 'O%'
ORDER BY last_name ASC, job_id DESC;

--Nomor 8
SELECT department_id, last_name, salary, commission_pct
FROM  employees
WHERE commission_pct IS NULL
ORDER BY department_id DESC, last_name ASC;

--Nomor 9
SELECT department_id, last_name, salary, commission_pct
FROM  employees
WHERE (salary > 10000 OR salary < 7000)
AND commission_pct > 0.1
ORDER BY department_id DESC, last_name ASC;

--Nomor 10

