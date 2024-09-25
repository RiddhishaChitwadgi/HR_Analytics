--Question_3: Select all employees who have received retroactive pay (RETRO), grouped by department

SELECT "DEPARTMENT_NAME", COUNT("NAME") AS num_employees, SUM("RETRO") AS total_retro
FROM salary_data
WHERE "RETRO" > 0
GROUP BY "DEPARTMENT_NAME"
ORDER BY total_retro DESC;