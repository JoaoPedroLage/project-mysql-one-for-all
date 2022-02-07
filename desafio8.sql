SELECT 
    Artist.artist_name AS artista, Album.album_name AS album
FROM
    SpotifyClone.albums AS Album
        JOIN
    SpotifyClone.artists AS Artist ON Artist.id = Album.artist_id
GROUP BY artista , album
ORDER BY artista DESC
LIMIT 2;