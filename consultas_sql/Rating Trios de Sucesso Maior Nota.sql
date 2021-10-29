SELECT DISTINCT
    Star_1,
    Star_2,
    Star_3,
    MAX(Rating),
    GROUP_CONCAT(DISTINCT CASE
            WHEN Star_1 = 'Peter Dinklage' THEN 'Tyrion Lannister'
            WHEN Star_1 = 'Nikolaj Coster-Waldau' THEN 'Jaime Lannister'
            WHEN Star_1 = 'Kit Harington' THEN 'Jon Snow'
            WHEN Star_1 = 'Emilia Clarke' THEN 'Daenerys Targaryen'
            WHEN Star_1 = 'Sean Bean' THEN 'Eddard \'Ned\' Stark'
            ELSE 'Actor not found'
        END,
        ', ',
        CASE
            WHEN Star_2 = 'Nikolaj Coster-Waldau' THEN 'Jaime Lannister'
            WHEN Star_2 = 'Lena Headey' THEN 'Cersei Lannister'
            WHEN Star_2 = 'Michelle Fairley' THEN 'Catelyn Stark'
            WHEN Star_2 = 'Mark Addy' THEN 'Robert Baratheon'
            WHEN Star_2 = 'John Bradley' THEN 'Samwell Tarly'
            WHEN Star_2 = 'Emilia Clarke' THEN 'Daenerys Targaryen'
            WHEN Star_2 = 'Kit Harington' THEN 'Jon Snow'
            ELSE 'Actor not found'
        END,
        ', ',
        CASE
            WHEN Star_3 = 'Nikolaj Coster-Waldau' THEN 'Jaime Lannister'
            WHEN Star_3 = 'Lena Headey' THEN 'Cersei Lannister'
            WHEN Star_3 = 'Michelle Fairley' THEN 'Catelyn Stark'
            WHEN Star_3 = 'Mark Addy' THEN 'Robert Baratheon'
            WHEN Star_3 = 'Emilia Clarke' THEN 'Daenerys Targaryen'
            WHEN Star_3 = 'Kit Harington' THEN 'Jon Snow'
            WHEN Star_3 = 'Hannah Murray' THEN 'Gilly'
            WHEN Star_3 = 'Charles Dance' THEN 'Tywin Lannister'
            WHEN Star_3 = 'Richard Madden' THEN 'Robb Stark'
            ELSE 'Actor not found'
        END) AS Trios
FROM
    episodes
GROUP BY 1 , 2 , 3
ORDER BY 4 DESC
LIMIT 8;

