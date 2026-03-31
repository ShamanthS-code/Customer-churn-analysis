CREATE DATABASE churn_analysis;
USE churn_analysis;
SELECT * FROM churn_data;

-- Total customers
SELECT COUNT(*) FROM churn_data;

-- Churn distribution
SELECT Churn, COUNT(*) 
FROM churn_data 
GROUP BY Churn;

-- Churn rate %
SELECT Churn,
COUNT(*) * 100.0 / (SELECT COUNT(*) FROM churn_data) AS churn_rate
FROM churn_data
GROUP BY Churn;

-- Churn by contract
SELECT Contract, Churn,
COUNT(*) AS total
FROM churn_data
GROUP BY Contract, Churn
ORDER BY Contract;

-- Avg charges by churn
SELECT Churn,
AVG(MonthlyCharges),
AVG(TotalCharges)
FROM churn_data
GROUP BY Churn;



