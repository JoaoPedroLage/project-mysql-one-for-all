SELECT MAX(Song.id) AS cancoes, MAX(Song.artist_id) AS artistas, MAX(Album.id) AS albuns
FROM SpotifyClone.songs AS Song
INNER JOIN SpotifyClone.albums AS Album
ON Song.album_id = Album.id;