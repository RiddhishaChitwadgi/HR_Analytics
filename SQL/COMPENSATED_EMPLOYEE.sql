-- Question #6 Develop a query to identify the top 3 departments with the highest number of employees receiving additional compensation (OTHER > 0 or OVERTIME > 0) across multiple categories. How would this data support the centralization of customer support strategies for People Operations tools?

SELECT "DEPARTMENT_NAME", COUNT("NAME") AS compensated_employees
FROM salary_data
WHERE "OTHER" > 0 OR "OVERTIME" > 0
GROUP BY "DEPARTMENT_NAME"
ORDER BY compensated_employees DESC
LIMIT 3;