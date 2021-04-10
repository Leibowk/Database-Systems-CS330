# Display two columns: sex, and sex counts. For all employees that work in the company.

SELECT gender, COUNT(gender)
FROM employees
GROUP BY gender;
