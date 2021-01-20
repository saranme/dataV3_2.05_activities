Use bank;
-- 1
SELECT A2 AS district_name, A11 AS average_salary 
FROM district
WHERE A4 > 10000;

-- 2
SELECT loan_id as loan, account_id as account
FROM loan
WHERE status = 'B'
ORDER BY account_id;

-- 3
SELECT *
FROM card
WHERE type = 'junior'
LIMIT 10;

-- 4
SELECT loan_id, account_id, status, (amount - payments) as debt_value
FROM loan
WHERE status = 'B';

-- 5
SELECT A2 AS district_name, round(A4*A10/100) AS 'urban population' 
FROM district;

-- 6
SELECT A2 AS district_name, round(A4*A10/100) AS 'urban population' 
FROM district
WHERE A10 > 50.0;



