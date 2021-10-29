-- Qual o ranking dos diretores por ratings e os piores?

SELECT 
		concat_ws(',',Director, Episode, Season),
        MAX(Rating) AS TOP10_DIRECTORS
    FROM
        episodes 
    GROUP BY 1
    ORDER BY TOP10_DIRECTORS DESC
LIMIT 10;


SELECT 
	concat_ws(',',Director, Episode, Season),
        MIN(Rating) AS TOP10_DIRECTORS
    FROM
        episodes e
    GROUP BY 1
    ORDER BY LAST10_DIRECTORS
LIMIT 10;
