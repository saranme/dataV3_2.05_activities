Use bank;
-- 1
-- WHERE column IS NOT NULL AND colum = ''
-- SELECT SUM(ISNULL(column))

-- 2
SELECT sum(amount)
FROM trans
WHERE amount IS NOT NULL AND amount = '';

SELECT *, amount AS nulls_amount
FROM trans
WHERE amount IS NOT NULL AND amount = '';

-- 3
SELECT COUNT(trans_id) AS empty_k_trans
FROM trans
WHERE k_symbol IS NOT NULL AND k_symbol = '';

SELECT SUM(k_symbol = '') AS k_symbol_empty,
	   SUM(not K_Symbol = '') AS k_symbol_non_empty
FROM trans
WHERE amount is not null;