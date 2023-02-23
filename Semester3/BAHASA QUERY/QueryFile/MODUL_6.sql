--Nomor 1
SELECT i.location_id, i.street_address, i.city, i.state_province, c.country_name
FROM locations i, countries c
WHERE i.country_id = c.country_id
ORDER BY i.location_id;

--Nomor 2
SELECT e.employee_id, e.first_name, e.last_name, d.department_id
FROM employees e, departments d
WHERE e.department_id = d.department_id AND d.department_name = 'Shipping';

--Nomor 3
SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e, departments d, locations l
WHERE (e.department_id = d.department_id AND d.location_id = l.location_id)
AND l.city  = 'Toronto';

--Nomor 4
Select e.last_name AS "Employees", e.employee_id AS "EMP#",
mgr.last_name AS "Manager", mgr.employee_id AS "MGR#"
FROM employees e, employees mgr
WHERE e.manager_id = mgr.employee_id
ORDER BY mgr.employee_id, e.employee_id ASC;

--Nomor 5
SELECT e.last_name, d.department_name, d.location_id, l.city, e.commission_pct
FROM employees e, departments d, locations l
WHERE (e.department_id = d.department_id AND d.location_id = l.location_id) 
AND e.commission_pct IS NOT NULL;