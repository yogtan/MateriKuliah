-- Contoh 1:
-- Menampilkan hire_date dengan format MM/YY dari employee yang last_namenya  ?Higgins?.
SELECT employee_id, TO_CHAR(hire_date,'MM/YY') Month_Hired
FROM employees
WHERE last_name='Higgins';

-- Contoh 2:
-- Menampilkan last_name dan hire_date dengan format DD MONTH YYYY untuk seluruh employee. 
-- Catatan : Format Month tergantung dari setting server oracle, dalam format Indonesia atau Inggris.
SELECT last_name, TO_CHAR(hire_date,'fmDD MONTH YYYY') AS HIREDATE
FROM employees;

-- Contoh 3:
-- Modifikasi contoh 2 sehingga ditampilkan dengan format ?Seventeenth of June 1987 12:00:00 AM?.
SELECT last_name, TO_CHAR(hire_date,'fmDdspth "of" MONTH YYYY fmHH:MI:SS AM') AS HIREDATE
FROM employees;

-- Contoh 4:
-- Menampilkan last_name dan salary dengan menggunakan elemen format number untuk employee yang last_namenya diawali huruf K.
SELECT last_name, TO_CHAR(salary,'$99,999.00') as SALARY
FROM employees 
where last_name like 'K%';

-- Contoh 5:
-- Menampilkan employee yang hire_date nya dimulai dengan May 24,1999. 
-- Karena menggunakan fx modifier terdapat kesalahan pada contoh 5. 
-- Perbaiki kueri contoh 5 tersebut agar menghasilkan hasil yang benar.
select last_name, hire_date
from employees
where hire_date = to_date('Jun 21, 2007 fxMonth DD, YYYY');

-- Contoh 6:
SELECT last_name,
UPPER(CONCAT(SUBSTR(LAST_NAME,1,8),'_US'))
FROM employees WHERE department_id=60;

-- Contoh 7: Penggunaan Fungsi NVL
SELECT last_name,salary,
NVL(commission_pct,"dd"),
(salary*12)+(salary*12*nvl(commission_pct,0)) as ANNSAL
FROM employees;

-- Contoh 8: Penggunaan Fungsi NVL2
SELECT last_name,salary,commission_pct,
NVL2(commission_pct,'SAL+COMM','SAL') income
FROM employees where department_id in (50,80);
-- Contoh 9: Penggunaan Fungsi NULLIF
SELECT first_name,LENGTH(first_name) "expr1",last_name,LENGTH(last_name) "expr2",
NULLIF(LENGTH(first_name),LENGTH(last_name)) result
FROM employees order by first_name;

-- Contoh 10: Penggunaan Fungsi COALESCE
SELECT last_name,
COALESCE(manager_id,commission_pct,-1) comm
FROM employees 
ORDER BY commission_pct;

-- Contoh 11:
SELECT last_name,job_id,salary,
CASE job_id WHEN 'IT_PROG'  THEN 1.10*salary
            WHEN 'ST_CLERK' THEN 1.15*salary
            WHEN 'SA_REP'   THEN 1.20*salary
ELSE  salary END "REVISED_SALARY"
FROM employees;

SELECT last_name, hire_date
FROM employees
where hire_date = to_date('05 2, 24, 1999', 'fxMonth DD, YYYY');


--Nomor 1
SELECT last_name || ' mendapat' || TO_CHAR(salary,'$99,999.99') ||
'perbulan tapi menginginkan'|| TO_CHAR(salary*3,'$99,999.99') AS "DREAM SALARY"
FROM employees;

--Nomor 2
SELECT last_name, TO_CHAR(hire_date, 'DD-MM-YYYY') AS hiredate,
TO_CHAR(next_day(add_months(hire_date,6), 'Monday'),
'fmDay", the" DDspth "of" Month, YYYY') AS review
FROM EMPLOYEES;

--Nomor 3
SELECT last_name,TO_CHAR(hire_date, 'DD-MM-YYYY') AS hiredate, 
TO_CHAR(hire_date, 'day') AS day
FROM employees
ORDER BY TO_CHAR(hire_date, 'd') ASC;

--Nomor 4
SELECT commission_pct, NVL2(commission_pct,'Comm', 'No Commission') AS Commission
FROM employees;

--Nomor 5
SELECT last_name,job_id,
DECODE(job_id,'AD_PRES', 'A',
              'ST_MAN',  'B',
              'IT_PROG', 'C',
              'SA_REP',  'D', 
              'ST_CLERK','E',
              'SA_PROG', 'F',
               0) AS GRADE
FROM employees
ORDER BY Job_id;

--Nomor 6
SELECT last_name,job_id,
CASE job_id WHEN 'AD_PRES' THEN 'A'
             WHEN  'ST_MAN' THEN  'B'
             WHEN  'IT_PROG' THEN 'C'
             WHEN  'SA_REP' THEN  'D' 
             WHEN  'ST_CLERK' THEN'E'
             WHEN  'Sa_PROG' THEN 'F'            
             ELSE TO_CHAR(0) END "GRADE"
FROM employees
ORDER BY Job_id;


SELECT employee_id, last_name, department_id, 
CASE department_id 
WHEN 10 THEN 'Administrator'
WHEN 20 THEN 'IT'
WHEN 110 THEN 'Sales'
ELSE '-' END "Nama",
NVL2(commission_pct,  commission_pct, 0) "Komisi"
FROM employees
WHERE department_id != 50 AND employee_id NOT BETWEEN 100 AND 180;