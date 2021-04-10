# Display the first name and last name as well as department name of all current department managers. SORT by department name, last name, first name

SELECT first_name, last_name, dept_name
FROM employees NATURAL JOIN dept_manager NATURAL JOIN departments
WHERE to_date = '9999-01-01'
ORDER BY
dept_name ASC,
last_name ASC,
first_name ASC;
