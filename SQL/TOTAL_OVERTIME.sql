--Question_1: Identify the top 5 departments that have the highest overtime costs (OVERTIME) in the last fiscal year

SELECT "DEPARTMENT_NAME", SUM("OVERTIME") AS total_overtime
FROM salary_data
WHERE "OVERTIME" IS NOT NULL
GROUP BY "DEPARTMENT_NAME"
ORDER BY total_overtime DESC
LIMIT 5 