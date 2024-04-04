SELECT artists.name AS 'Artista', albums.title AS 'Álbum', songs.title AS 'Música'
FROM albums 
  INNER JOIN songs ON songs.album_id = albums.id
  INNER JOIN artists ON artists.id = albums.artist_id
WHERE artists.name <> 'The Beatles' 
ORDER BY artists.name, albums.title, songs.title;