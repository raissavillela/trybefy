SELECT albums.title AS 'Álbum', SUM(duration_in_seconds) AS 'Duração' 
FROM albums INNER JOIN songs ON albums.id = songs.album_id 
GROUP BY albums.title ORDER BY SUM(duration_in_seconds) DESC;