# Display the age of the oldest employee (as an int) in absolute years (assuming they are still working there)

SELECT DISTINCT ROUND(DATEDIFF(CURDATE(), birth_date)/365.25) AS age
FROM employees 
WHERE birth_date = 
(SELECT MIN(birth_date)
	FROM employees);
