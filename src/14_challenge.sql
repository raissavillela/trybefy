SELECT name AS 'Artista', GROUP_CONCAT(title) AS 'Álbuns'
FROM artists INNER JOIN albums ON artists.id = albums.artist_id
GROUP BY name
ORDER BY name;