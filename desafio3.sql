SELECT User.user_name AS usuario, COUNT(Rep.user_id) AS qtde_musicas_ouvidas
FROM SpotifyClone.users AS User
INNER JOIN SpotifyClone.reproductions AS Rep
ON Rep.user_id = User.id
GROUP BY User.user_name
ORDER BY User.user_name;

SELECT Song.id, Song.duration_sec/60 AS total_minutos
FROM SpotifyClone.songs AS Song
INNER JOIN SpotifyClone.reproductions AS Rep
ON Song.id = Rep.song_id
GROUP BY Song.id;