--Question_2: Calculate the average total gross pay (TOTAL GROSS) per department

SELECT "DEPARTMENT_NAME", ROUND(AVG(CAST("TOTAL GROSS" AS NUMERIC)), 2) AS avg_total_gross
FROM salary_data
GROUP BY "DEPARTMENT_NAME"
ORDER BY avg_total_gross DESC;
