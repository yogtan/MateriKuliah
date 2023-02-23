SELECT e.first_name, e.commission_pct, j.job_title, d.department_id,
d.department_name, l.city, c.country_name
FROM employees e, jobs j, departments d, locations l, countries c
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND e.job_id = j.job_id
AND l.country_id = c.country_id
AND e.commission_pct IS NOT NULL
AND j.job_title = 'Sales Manager';

SELECT l.city, d.department_name, j.job_title,(COUNT(e.employee_id)),(AVG(e.salary))
FROM employees e JOIN departments 
USING (department_id) JOIN locations l
USING (location_id) JOIN countries c
USING (country_id) JOIN jobs j
USING (job_id)
WHERE country_name IN ('United Kingdom','Canada','Germany')
GROUP BY l.city, d.department_name, j.job_tile
HAVING COUNT (e.employee_id) < 10
ORDER BY AVG(salary) DESC;