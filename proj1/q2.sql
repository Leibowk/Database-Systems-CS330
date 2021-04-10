# Display the number of employees whose first name is Elvis
SELECT COUNT(first_name)
FROM employees
WHERE employees.first_name= 'Elvis';