SELECT artists.name AS 'Artista', COUNT(artists_followers.user_id) AS 'Total de seguidores'
FROM artists INNER JOIN artists_followers ON artists.id = artists_followers.artist_id
GROUP BY artists_followers.artist_id
HAVING COUNT(artists_followers.user_id) < 5;