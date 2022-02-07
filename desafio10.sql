SELECT 
    Song.song_name AS nome, COUNT(Rep.song_id) AS reproducoes
FROM
    SpotifyClone.users AS User
        JOIN
    SpotifyClone.reproductions AS Rep ON Rep.user_id = User.id
        JOIN
    SpotifyClone.songs AS Song ON Song.id = Rep.song_id
WHERE
    User.plan_id = 1 OR User.plan_id = 3
GROUP BY nome
ORDER BY nome;