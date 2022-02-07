SELECT 
    Song.song_name AS cancao, COUNT(Rep.song_id) AS reproducoes
FROM
    SpotifyClone.songs AS Song
        INNER JOIN
    SpotifyClone.reproductions AS Rep ON Song.id = Rep.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;