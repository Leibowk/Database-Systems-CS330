# You will need two queries for this one. It can be done in one but it will require too much copying.
# Using the previous query, create a view (this will help you from copy pasting it) and display the ratio of women to men for each department. Display department and ratio rounded in 2 decimals points.
# For the view use: CREATE OR REPLACE VIEW
# Otherwise scripts will fail if a view exists

CREATE VIEW deptGenders AS
	SELECT dept_name, gender, COUNT(gender) AS num_gender
	FROM employees NATURAL JOIN dept_emp NATURAL JOIN departments
	GROUP BY gender, dept_name;
			    
SELECT dept_name, ROUND(FEMALE/MALE, 2) AS RATIO

FROM 

(SELECT dept_name, num_gender AS MALE FROM deptGenders
WHERE gender = 'M')MALES

NATURAL JOIN 

(SELECT dept_name, num_gender as FEMALE FROM deptGenders
WHERE gender='F')FEMALES;
