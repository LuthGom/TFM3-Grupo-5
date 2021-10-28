 -- Ranking de atores com maiores Rating's
    SELECT 
    star_1, AVG(rating) as MÉDIA
FROM
    episodes
    GROUP BY Star_1
    ORDER BY MÉDIA DESC;
 
 SELECT 
    star_2, AVG(rating) as MÉDIA
FROM
    episodes
    GROUP BY Star_2
    ORDER BY MÉDIA DESC;
    
    SELECT 
    star_3, AVG(rating) as MÉDIA
FROM
    episodes
      GROUP BY Star_3
      ORDER BY  	MÉDIA DESC;

