SELECT artists.name AS 'Artista', COUNT(history_play_songs.id) AS 'Quantidade de músicas reproduzidas' 
FROM history_play_songs
  INNER JOIN songs ON history_play_songs.song_id = songs.id 
  INNER JOIN albums ON songs.album_id = albums.id 
  INNER JOIN artists ON albums.artist_id = artists.id 
GROUP BY artists.name HAVING COUNT(history_play_songs.id) > 10
ORDER BY COUNT(history_play_songs.id) DESC, artists.name;