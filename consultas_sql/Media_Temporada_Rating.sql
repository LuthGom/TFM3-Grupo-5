-- Retorna a média de rating da temporada.
SELECT 
    season, ROUND(AVG(rating), 2) AS Total_de_Rating
FROM
    episodes
GROUP BY season ORDER BY Total_de_Rating desc;