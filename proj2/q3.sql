#  Which employee got the largest salary increase since they started working in the company? (display emp_no, salary increase in percentage rounded in 2 decimal places, e.g., 100%)

SELECT emp_no, ROUND((maxSal-initSalary)/initSalary*100, 2) AS PercentageIncrease

FROM

(SELECT emp_no, max(salary) AS maxSal
	FROM employees NATURAL JOIN salaries
	GROUP BY emp_no)max 

NATURAL JOIN

(SELECT emp_no, salary AS initSalary
	FROM employees NATURAL JOIN salaries
	WHERE hire_date = from_date)init

ORDER BY PercentageIncrease DESC

LIMIT 1;
