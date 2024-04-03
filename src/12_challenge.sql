SELECT name AS 'Artista', COUNT(artist_id) AS 'Quantidade de álbuns'
FROM artists INNER JOIN albums ON artists.id = albums.artist_id
GROUP BY name
ORDER BY COUNT(artist.id) DESC, name;