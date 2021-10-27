-- Retorna os 10 Piores episódios baseados no rating
SELECT concat_ws('.', title,'ep', episode, 'season',season), rating
FROM episodes
ORDER BY rating ASC
LIMIT 10;
