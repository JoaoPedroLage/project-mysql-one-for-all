SELECT 
    User.user_name AS usuario,
    COUNT(Rep.song_id) AS qtde_musicas_ouvidas,
    ROUND((SUM(Song.duration_sec) / 60), 2) AS total_minutos
FROM
    SpotifyClone.reproductions AS Rep
        JOIN
    SpotifyClone.users AS User ON User.id = Rep.user_id
        JOIN
    SpotifyClone.songs AS Song ON Song.id = Rep.song_id
GROUP BY usuario
ORDER BY usuario;