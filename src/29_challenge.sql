SELECT artists.name AS 'Artista'
FROM artists INNER JOIN artists_followers ON artists_followers.artist_id = artists.id
GROUP BY artists.id, artists.name
ORDER BY COUNT(artists_followers.user_id) DESC
LIMIT 1;