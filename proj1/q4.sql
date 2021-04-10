# Display the first and last name of the employee that has a first name 'Elvis' and is the oldest employee
SELECT first_name, last_name
FROM employees
WHERE employees.first_name = 'Elvis' AND employees.birth_date = 
(SELECT MIN(employees.birth_date)
FROM employees
WHERE employees.first_name = 'Elvis');