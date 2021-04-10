# How many women and how many men are working on each department. Display three columns: dept name, gender and number of people working

SELECT dept_name, gender, COUNT(gender) AS num_gender
FROM employees NATURAL JOIN dept_emp NATURAL JOIN departments
GROUP BY gender, dept_name;
