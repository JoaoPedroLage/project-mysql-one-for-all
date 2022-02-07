SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.reproductions AS Rep
        JOIN
    SpotifyClone.users AS User ON Rep.user_id = User.id
WHERE
    User.user_name = 'Bill';