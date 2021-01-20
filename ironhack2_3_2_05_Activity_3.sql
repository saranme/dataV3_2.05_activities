Use bank;
-- 1
SELECT card_id, 
	   DATE_FORMAT(CONVERT(SUBSTRING_INDEX(issued, ' ',1), date),'%Y') AS year_issued
FROM card
WHERE type = 'gold';

-- 2
SELECT card_id, CONVERT(SUBSTRING_INDEX(issued, ' ',1), date) as date
FROM bank.card
WHERE type = 'gold'
ORDER BY date ASC
LIMIT 1;

-- 3
SELECT *, 
	   CONCAT(
       DATE_FORMAT(CONVERT(SUBSTRING_INDEX(issued, ' ',1), date),'%M'),
       ' ',
       DATE_FORMAT(CONVERT(SUBSTRING_INDEX(issued, ' ',1), date),'%D'),
	   ', ',
       DATE_FORMAT(CONVERT(SUBSTRING_INDEX(issued, ' ',1), date),'%Y')
       ) as date
FROM card;

SELECT *, 
	   CONCAT(
       DATE_FORMAT(CONVERT(SUBSTRING_INDEX(issued, ' ',1), date),'%d'),
       ' of ',
       DATE_FORMAT(CONVERT(SUBSTRING_INDEX(issued, ' ',1), date),'%M'),
       ' of ',
       DATE_FORMAT(CONVERT(SUBSTRING_INDEX(issued, ' ',1), date),'%Y')
       ) as fecha_emision
FROM card;
