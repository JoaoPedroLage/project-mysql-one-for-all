SELECT 
    User.user_name AS usuario,
    IF(MAX(YEAR(Rep.reproduction_date)) = 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.reproductions AS Rep
        INNER JOIN
    SpotifyClone.users AS User ON User.id = Rep.user_id
GROUP BY usuario
ORDER BY usuario;