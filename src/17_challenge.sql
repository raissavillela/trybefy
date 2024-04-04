SELECT songs.title AS 'Título' FROM songs 
INNER JOIN albums ON albums.id = songs.album_id
WHERE albums.title = 'Thriller'
ORDER BY songs.title;