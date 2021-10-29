Select * from
(Select 
concat_ws(',', Star_1, Star_2, Star_3) as trio, count(Episode) as total_eps, `Character` as Character_1,
case
 WHEN Star_2 = 'Nikolaj Coster-Waldau' THEN 'Jaime Lannister'
        WHEN Star_2 = 'Lena Headey' THEN 'Cersei Lannister'
        WHEN Star_2 = 'Michelle Fairley' THEN 'Catelyn Stark'
        WHEN Star_2 = 'Mark Addy' THEN 'Robert Baratheon'
        WHEN Star_2 = 'John Bradley' THEN 'Samwell Tarly'
        WHEN Star_2 = 'Emilia Clarke' THEN 'Daenerys Targaryen'
        WHEN Star_2 = 'Kit Harington' THEN 'Jon Snow'
        ELSE 'Actor not found'
    END AS Character_2,
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
    END AS Character_3
  
from
episodes as e
inner join
characters as c on e.Star_1 = c.`Actor/ess`
group by 1, 3,4,5) as c1
order by 2 desc;
