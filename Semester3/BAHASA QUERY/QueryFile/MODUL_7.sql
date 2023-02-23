--Nomor 1
SELECT location_id, street_address, city, state_province, country_name
FROM locations 
NATURAL JOIN countries;

--Nomor 2
--USING
SELECT e.last_name, department_id, d.department_name
FROM employees e JOIN departments d
USING (department_id);

--ON
SELECT e.last_name, e.department_id, d.department_name
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

--Nomor 3
--NATURAL JOIN
SELECT last_name, job_id, department_id, department_name, city
FROM employees
NATURAL JOIN (departments NATURAL JOIN locations)
WHERE city = 'Toronto';

--USING
SELECT e.last_name, e.job_id, department_id, d.department_name
FROM employees e
JOIN departments d USING (department_id)
JOIN locations l USING (location_id)
WHERE city = 'Toronto';

--ON
SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON (d.location_id = l.location_id)
WHERE city = 'Toronto';

--Nomor 4
SELECT e.last_name "EMPLOYEE", e.employee_id "EMP#", e.last_name "Manager",
d.manager_id "Mgr#"
FROM employees e JOIN employees d ON (e.manager_id = d.employee_id);

--Nomor 5
SELECT e.last_name, d.department_name, l.location_id, l.city
FROM employees e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON (d.location_id = l.location_id)
WHERE e.commission_pct IS NOT NULL;