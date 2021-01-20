Use bank;
-- 1
SELECT card_id AS card
FROM card
WHERE type = 'junior' AND issued > 980000;

-- 2
SELECT trans_id AS transaction
FROM bank.trans
WHERE type = 'VYDAJ' and (operation = 'VYBER' OR operation = 'VKLAD')
ORDER BY date ASC
LIMIT 10;

-- 3
SELECT loan_id, account_id, (amount - payments) AS debt_value
FROM bank.loan
WHERE (amount - payments) > 1000 and status = 'B'
ORDER BY debt_value DESC;

-- 4
SELECT MIN(amount) AS min_trans, MAX(amount) AS max_trans
FROM trans
WHERE amount > 0;

-- 5
SELECT *, LEFT(date,2) AS 'YY'
FROM account;

SELECT *, SUBSTR(date,1,2) AS 'YY'
FROM account;


