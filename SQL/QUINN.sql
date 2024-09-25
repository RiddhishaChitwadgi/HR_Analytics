-- Question #7 Write a query to compare the total compensation (TOTAL GROSS) for employees with Quinn Education benefits (QUINN_EDUCATION > 0) versus those without. How could this analysis inform future policies regarding educational compensation and professional development?

SELECT CASE WHEN "QUINN_EDUCATION" > 0 THEN 'With Quinn Education' ELSE 'Without Quinn Education' END AS education_status,
       AVG("TOTAL GROSS") AS avg_total_gross
FROM salary_data
GROUP BY education_status
ORDER BY avg_total_gross DESC;