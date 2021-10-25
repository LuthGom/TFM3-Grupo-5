-- Quais trios de personagens principais tiveram maior quantidade de aparição (em eps) juntos?
SELECT 
    *
FROM
(SELECT 
        COUNT(Episode) AS qtde_eps
    FROM
        episodes
    GROUP BY CONCAT_WS(',', Star_1, Star_2, Star_3)) AS trios

    inner join
    (SELECT 
        Character
    FROM
        characters as c
    INNER JOIN episodes as e ON c.Actor/ess= e.Star_1) as consulta1

    inner join
    (Select Character from   characters as c
    INNER JOIN episodes as e ON c.Actor/ess= e.Star_2) as consulta2
    inner join
    (Select Character from   characters as c
    INNER JOIN episodes as e ON c.Actor/ess= e.Star_3)  as consulta3
ORDER BY qtde_eps DESC;