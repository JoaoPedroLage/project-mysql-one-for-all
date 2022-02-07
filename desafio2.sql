SELECT MAX(Song.id) AS cancoes, MAX(Song.artist_id) AS artistas, MAX(Song2.album_id) AS albuns
FROM SpotifyClone.songs AS Song
JOIN SpotifyClone.songs AS Song2
ON Song.album_id = Song2.album_id;