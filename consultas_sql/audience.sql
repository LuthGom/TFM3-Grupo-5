-- Qual a relação entre os períodos de tempo entre lançamentos das temporadas com as mudanças da audiência?

select  Season, Release_date,avg(US_Viewers) as avg_audience
from
episodes
where Episode = 1
group by 1,2
order by 1;




