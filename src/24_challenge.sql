SELECT users.full_name AS 'Nome', COUNT(history_play_songs.user_id) AS 'Quantidade de músicas reproduzidas'
FROM history_play_songs
INNER JOIN users ON history_play_songs.user_id = users.id
GROUP BY users.full_name 
ORDER BY COUNT(history_play_songs.user_id) DESC, users.full_name;