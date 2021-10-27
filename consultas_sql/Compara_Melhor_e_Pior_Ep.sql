-- Retorna uma linha com a comparação entre o melhor e o pior episódio baseado no rating
SELECT 
    pior.pior_ep,
    pior.title,
    pior.season,
    pior.rating,
    melhor.melhor_ep,
    melhor.title,
    melhor.season,
    melhor.rating
FROM
    (SELECT 
        episode AS pior_ep, title, season, rating
    FROM
        episodes
    ORDER BY rating ASC
    LIMIT 1) AS pior
        INNER JOIN
    (SELECT 
        episode AS melhor_ep, title, season, rating
    FROM
        episodes
    ORDER BY rating DESC
    LIMIT 1) AS melhor ON melhor.melhor_ep = melhor.melhor_ep;