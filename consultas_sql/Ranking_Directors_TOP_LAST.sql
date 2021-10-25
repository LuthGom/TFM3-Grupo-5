-- Qual o ranking dos diretores por ratings e os piores?
select Director from episodes;
SELECT 
		e.Director,
        MAX(Rating) AS TOP10_DIRECTORS
    FROM
        episodes e
    GROUP BY e.Director
    ORDER BY TOP10_DIRECTORS DESC
LIMIT 10;

SELECT 
		e.Director,
        MIN(Rating) AS LAST10_DIRECTORS
    FROM
        episodes e
    GROUP BY e.Director
    ORDER BY LAST10_DIRECTORS
LIMIT 10;
