-- B.3. Menggunakan subquery  
-- CONTOH 1 rknjjhi
--jdldiahgoaer
SELECT last_name
FROM EMPLOYEES               
WHERE salary > (SELECT salary
                  FROM employees
                 WHERE last_name = 'Abel');
                 
SELECT last_name
FROM EMPLOYEES               
WHERE salary > 2;
-- B.5. Single-Row Subquery   
-- CONTOH 2
SELECT last_name, job_id
FROM employees                            
WHERE job_id = (SELECT job_id
			      FROM employees
			     WHERE employee_id = 141);

-- B.5. Single-Row Subquery  
-- CONTOH 3
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = (SELECT job_id
                  FROM employees
                 WHERE employee_id = 141)
AND salary > (SELECT salary
                FROM employees
               WHERE employee_id = 143);
              
-- B.5.1. Menggunakan Fungsi Grup dalam Sebuah Subquery  
-- CONTOH 4
SELECT last_name, job_id, salary
  FROM employees                              
 WHERE salary = (SELECT MIN (salary) 
                   FROM employees);

-- B.5.2. Menggunakan Klausa HAVING dalam Subquery  
-- CONTOH 5
SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) > (SELECT MIN (salary)
                        FROM employees
                       WHERE department_id = 50);

-- CONTOH 6
SELECT job_id, AVG(salary) 
FROM employees
GROUP BY job_id 				
HAVING AVG(salary) = (SELECT MIN (AVG (salary))
                        FROM employees
                       GROUP BY job_id);

-- B.5.3. Penggunaan kueri ilegal dalam subquery  
-- CONTOH 7
SELECT employee_id, last_name
FROM employees
WHERE salary = (SELECT    MIN (salary)
                  FROM       employees
              GROUP BY   department_id);

-- B.5.3. Penggunaan kueri ilegal dalam subquery  
-- CONTOH 8
SELECT employee_id, last_name
FROM employees
WHERE salary IN (SELECT MIN (salary)
		           FROM employees
               GROUP BY department_id);

-- B.5.4. Masalah dalam Subquery 
-- CONTOH 9
SELECT last_name, job_id
FROM employees
WHERE job_id = (SELECT job_id
                  FROM employees
                 WHERE last_name = 'Haas');

-- B.6.1.  Menggunakan operator IN dalam Multiple-Row Subquery  
-- CONTOH 10
SELECT  last_name, salary, department_id
FROM employees
WHERE salary IN (SELECT MIN (salary)
                   FROM employees
               GROUP BY department_id);

-- B.6.2.  Menggunakan operator ANY dalam Multiple-Row Subquery
-- CONTOH 11
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY (SELECT salary
                      FROM employees            	
                     WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';                 

-- B.6.3.  Menggunakan operator ALL dalam Multiple-Row Subquery  
-- CONTOH 12
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ALL (SELECT salary
                      FROM employees            	
                     WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';       

-- B.7. Mengembalikan Nilai Null dalam Sebuah Subquery  
-- CONTOH 13
SELECT  emp.last_name
FROM    employees emp
WHERE   emp.employee_id NOT IN (SELECT   mgr.manager_id
                                  FROM   employees mgr);

-- B.7. Mengembalikan Nilai Null dalam Sebuah Subquery  
-- CONTOH 14
SELECT  emp.last_name
FROM    employees emp
WHERE   emp.employee_id NOT IN (SELECT mgr.manager_id
                                  FROM employees mgr
                                 WHERE manager_id IS NOT NULL);
                                 
--Nomor 1
SELECT last_name, hire_date
FROM employees
WHERE department_id =(SELECT department_id
                        FROM employees
                        WHERE last_name = 'Zlotkey')
AND last_name != 'Zlotkey';


--Nomor 2
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees)
ORDER BY salary ASC;

--Nomor 3
SELECT employee_id, last_name
FROM employees
WHERE department_id = (SELECT department_id
                        FROM employees
                        WHERE last_name LIKE '%U%');
       
                        
--Nomer 4
SELECT last_name,department_id,job_id
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE location_id=1700)
                        ORDER BY department_id;
                    
--Nomer 5
SELECT last_name,salary
FROM employees
WHERE manager_id IN (SELECT employee_id
                      FROM employees
                      WHERE last_name ='King');
                        
--Nomer 6
SELECT department_id,last_name,job_id
FROM employees
WHERE department_id = (SELECT department_id
                        FROM departments
                        WHERE department_name='Executive');                
                        

                        
                        
--QUIZZ
SELECT l.city, d.department_name, e.job_id, COUNT(*)"Jumlah Karyawan", AVG(salary)"Rata-Rata Salary"
FROM employees e, departments d, locations l, countries c
WHERE c.country_name IN ('United Kingdom','Canada','Germany')
GROUP BY l.city, d.department_name, e.job_id
HAVING COUNT(*) < 10
ORDER BY AVG(salary);