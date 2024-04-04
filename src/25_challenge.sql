SELECT albums.title AS 'Álbum', COUNT(history_play_songs.id) AS 'Quantidade de músicas reproduzidas' 
FROM history_play_songs
  INNER JOIN songs ON history_play_songs.song_id = songs.id
  INNER JOIN albums ON songs.album_id = albums.id
GROUP BY albums.id
ORDER BY COUNT(history_play_songs.id) DESC, albums.title
LIMIT 5;