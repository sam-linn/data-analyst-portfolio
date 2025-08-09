SELECT province, ROUND(AVG(value), 2) AS avg_stay_ratio
FROM SQL_Thailand_Tourism_SQL
WHERE metric = 'ratio_tourist_stay'
GROUP BY province
ORDER BY avg_stay_ratio DESC
LIMIT 10;

SELECT STRFTIME('%Y-%m', date) AS month, ROUND(AVG(value), 2) AS avg_ratio
FROM SQL_Thailand_Tourism_SQL
WHERE province = 'Bangkok' AND metric = 'ratio_tourist_stay'
GROUP BY month
ORDER BY month;

SELECT region, ROUND(AVG(value), 2) AS avg_ratio
FROM SQL_Thailand_Tourism_SQL
WHERE metric = 'ratio_tourist_stay'
GROUP BY region
ORDER BY avg_ratio DESC;

SELECT STRFTIME('%Y-%m', date) AS month, ROUND(AVG(value), 2) AS avg_ratio
FROM SQL_Thailand_Tourism_SQL
WHERE metric = 'ratio_tourist_stay'
GROUP BY month
ORDER BY month;

SELECT COUNT(*) AS total_records FROM SQL_Thailand_Tourism_SQL; 

SELECT DISTINCT metric FROM SQL_Thailand_Tourism_SQL; 

SELECT province, STRFTIME('%Y', date) AS year, ROUND(AVG(value), 2) AS avg_ratio
FROM SQL_Thailand_Tourism_SQL
WHERE metric = 'ratio_tourist_stay'
GROUP BY province, year
ORDER BY province, year;