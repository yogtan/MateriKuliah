-- Contoh 1:
SELECT 'The job id for ' || UPPER(last_name) || ' is ' || LOWER(JOB_ID) as "EMPLOYEE DETAILS" FROM employees;

-- Contoh 2: Apa perbedaannya?
SELECT employee_id, last_name,department_id 
FROM employees
WHERE last_name = 'Weiss';
UPDATE EMPLOYEES
SET SALARY = (SELECT SALARY FROM EMPLOYEES_UAS
                WHERE EMPLOYEE_ID = 125)
WHERE LAST_NAME = 'Weiss';

select INSTR(‘BahasaQuery’,’Q’)
 
SELECT employee_id, last_name,department_id 
FROM employees
WHERE LOWER(last_name) = 'austin';

SELECT employee_id, UPPER(last_name), department_id 
FROM employees
WHERE INITCAP(last_name) = 'Austin';

-- Contoh 3:
SELECT employee_id, CONCAT(first_name,last_name) NAMA, job_id, LENGTH(last_name), INSTR(last_name,'a') "Posisi huruf 'a'" 
FROM employees 
WHERE SUBSTR(job_id,4)='REP';

-- Contoh 4:
SELECT employee_id, CONCAT(first_name,last_name) NAMA, job_id, LENGTH(last_name), INSTR(last_name,'a') "Posisi huruf 'a'" 
FROM employees 
WHERE SUBSTR(last_name,-1,1)='n';

-- Contoh 5:
SELECT ROUND(45.925,2),ROUND(45.926,0), ROUND(54.926,-2) FROM DUAL;

-- Contoh 6:
SELECT TRUNC(45.926,2), TRUNC(45.926,0), TRUNC(45.926,-1) FROM DUAL;

-- Contoh 7:
SELECT LAST_NAME, SALARY, MOD(SALARY,5000)
FROM EMPLOYEES
WHERE JOB_ID='SA_REP';

-- Contoh 8:				
SELECT last_name,hire_date 
FROM employees
-- WHERE hire_date <'01-FEB-88';
WHERE hire_date <'01-FEB-08';

-- Contoh 9: 			
SELECT SYSDATE from dual;

-- Contoh 10:
SELECT  last_name,(SYSDATE-hire_date)/7 as WEEK FROM employees
WHERE  department_id=90;

-- Contoh 11:                 NNNNNNNNNNNNNN                              
SELECT employee_id, hire_date,
  months_between(SYSDATE,hire_date) TENURE, 
  add_months(hire_date,6) REVIEW,
  next_day(hire_date,'FRIDAY'),
  last_day(hire_date) 
  from employees
  where months_between (sysdate,hire_date) > 200;
  
-- Contoh 12: 
SELECT employee_id,hire_date,
 ROUND(hire_date,'MONTH'), TRUNC(hire_date,'MONTH')
FROM employees 
-- WHERE hire_date like '%97';
WHERE hire_date like '%07';

--SOAL
--Nomor 1
SELECT employee_id, INITCAP(last_name) AS last_name, LENGTH(last_name)
FROM employees
WHERE SUBSTR(last_name,1,1) IN ('J','A','M')
ORDER BY last_name ASC;

-- Nomor 2
SELECT employee_id, first_name, SUBSTR(LOWER(first_name),1,1) 
|| SUBSTR(UPPER(first_name),2) first_name2, INSTR(first_name,'a') "Contains 'a'"
FROM employees
WHERE SUBSTR(first_name,-1,1) = 'n'
ORDER BY first_name ASC;

--Nomor 3
SELECT employee_id, last_name, LPAD(salary,10,'$') AS  salary
FROM employees
WHERE job_id like 'SA_REP'
ORDER BY last_name ASC;

--Nomor 4
SELECT employee_id, last_name, salary, ROUND(0.17*salary+salary, 2) "NEW SALARY"
FROM employees
ORDER BY "NEW SALARY" DESC;

--Nomor 5 
SELECT employee_id, last_name, salary, ROUND(0.17*salary+salary, 2) "NEW salary",
ROUND(0.17*salary+salary, 2) - salary AS increase
FROM employees
ORDER BY "NEW salary" DESC;

--Nomor 6
SELECT last_name, ROUND(MONTHs_between(sysdate,hire_date),0) "MONTH WORKED"
FROM employees
ORDER BY "MONTH WORKED" ASC;

--Nomor 7
SELECT last_name, ROUND((sysdate-hire_date)/365,0) AS tahun, 
ROUND(((sysdate-hire_date)/365)/12) AS bulan
FROM employees
ORDER BY tahun DESC, bulan DESC;
