SELECT e.employee_id, e.first_name, e.last_name,  d.department_id
FROM employees e, departments d WHERE e.department_id= d.department_id
AND d.department_name LIKE 'Shipping';
