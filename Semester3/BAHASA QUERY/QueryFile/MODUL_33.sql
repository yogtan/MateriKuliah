describe employees;

describe job_history;

select employee_id, job_id, hire_date, department_id
from employees
where employee_id = 101;

select employee_id, job_id, start_date, end_date, department_id
from job_history
where employee_id = 101;

-- contoh 1
SELECT employee_id, job_id
FROM employees
UNION
SELECT employee_id, job_id
FROM job_history;

-- contoh 2
SELECT employee_id, job_id, department_id
FROM employees
UNION
SELECT employee_id, job_id, department_id
FROM job_history;

-- contoh 3
SELECT employee_id, job_id, department_id
FROM employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM job_history
ORDER BY employee_id;

-- union all diubah menjadi union
SELECT employee_id, job_id, department_id
FROM employees
UNION 
SELECT employee_id, job_id, department_id
FROM job_history
ORDER BY employee_id;

-- contoh 4
SELECT employee_id, job_id 
FROM employees
INTERSECT
SELECT employee_id, job_id 
FROM job_history;

-- contoh 5
SELECT employee_id, job_id, department_id
FROM employees
INTERSECT
SELECT employee_id, job_id, department_id
FROM job_history;

-- contoh 6
SELECT employee_id, job_id
FROM employees
MINUS
SELECT employee_id, job_id 
FROM job_history;

-- contoh 7
SELECT employee_id, department_id
FROM   employees
WHERE  (employee_id, department_id)
       IN (SELECT employee_id, department_id
       FROM employees
       UNION
       SELECT employee_id, department_id
       FROM job_history);

-- contoh 8
SELECT employee_id, job_id, salary
FROM employees
UNION
SELECT employee_id, job_id, 0
FROM job_history;