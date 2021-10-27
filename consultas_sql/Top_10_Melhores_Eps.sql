-- Retorna os 10 melhores episódios baseados no rating
SELECT concat_ws('.', title,'ep', episode, 'season',season), rating
FROM episodes
ORDER BY rating DESC
LIMIT 10;
