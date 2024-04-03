SELECT name AS 'Artista'
FROM artists INNER JOIN albums ON artists.id = albums.artist_id
GROUP BY name
HAVING COUNT(artist_id) > 2
ORDER BY name;