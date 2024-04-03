SELECT name AS 'Artista'
FROM artists INNER JOIN albums ON artists.id = albums.artist_id
GROUP BY name
HAVING COUNT(album.artist_id) >= 3
ORDER BY name;