SELECT users.full_name AS 'Pessoa usuária', COUNT(artists_followers.artist_id) AS 'Artistas que segue'
FROM artists_followers INNER JOIN users ON users.id = artists_followers.user_id
GROUP BY users.id
ORDER BY users.full_name;