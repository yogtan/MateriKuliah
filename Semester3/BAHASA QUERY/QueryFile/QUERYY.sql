SELECT e.employee_id, e.commission_pct, j.job_title, d.department_id,
d.department_name, l.city, c.country_name
FROM employees e, jobs j, departments d, locations l, countries c
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND e.job_id = j.job_id
AND l.country_id = c.country_id
AND e.commission_pct IS NULL
AND d.department_name = 'Finance';

SELECT l.city, d.department_name, j.job_title,(COUNT(e.employee_id)),(AVG(e.salary))
FROM employees e JOIN departments d USING (department_id) JOIN locations l
USING (location_id) JOIN countries c
USING (country_id) JOIN jobs j
USING (job_id)
WHERE country_name IN ('United Kingdom','Canada','Germany')
GROUP BY l.city, d.department_name, j.job_title
HAVING COUNT (e.employee_id) < 10
ORDER BY AVG(salary) DESC;

SELECT first_name, job_id, department_id, hire_date
FROM employees
WHERE hire_date >  (SELECT hire_date
                FROM employees
                WHERE last_name = 'Whalen')
                AND department_id IN
                (SELECT d.department_id
                FROM departments d NATURAL JOIN jobs j
                WHERE j.job_title = 'Programmer')
                AND department_id = 60;
                

                SELECT e.employee_id, e.first_name, e.last_name,  d.department_id FROM employees e, departments d WHERE e.department_id= d.department_id AND d.department_name LIKE 'Shipping'