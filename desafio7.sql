SELECT 
    Artist.artist_name AS artista,
    Album.album_name AS album,
    COUNT(Follow.following_artist_id) AS seguidores
FROM
    SpotifyClone.albums AS Album
        JOIN
    SpotifyClone.followers AS Follow ON Album.artist_id = Follow.following_artist_id
        JOIN
    SpotifyClone.artists AS Artist ON Album.artist_id = Artist.id
GROUP BY artista , album
ORDER BY seguidores DESC , artista , album;