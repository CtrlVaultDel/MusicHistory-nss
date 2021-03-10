-- 1) Query all of the entries in the Genre Table
--Select * FROM Genre;

-- 2) Query all entries in the Artist Table and order by the artists' name */
-- SELECT * FROM Artist ORDER BY Artist.ArtistName;

-- 3) List all songs in the Song Table and include the Artist name
-- SELECT title, artist.ArtistName FROM Song JOIN Artist ON Song.ArtistId = Artist.Id;

-- 4) List all artists that have a pop album
-- SELECT ArtistName, Genre.Label FROM Album JOIN Artist ON Album.ArtistId = Artist.Id JOIN Genre ON Album.GenreId = Genre.Id WHERE Genre.Label = 'Pop';

-- 5) List all artists that have a Jazz or Rock album
-- SELECT ArtistName, Genre.Label FROM Album JOIN Artist ON Album.ArtistId = Artist.Id JOIN Genre ON Album.GenreId = Genre.Id WHERE Genre.Label = 'Jazz' OR Genre.Label = 'Rock';

-- 6) List the Albums with no songs
-- Select Album.Label FROM Album LEFT JOIN Song ON Song.AlbumId = Album.Id WHERE Song.title IS NULL;

-- 7) Add your favorite artist
-- INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Daft Punk', 1993)

-- 8) Add an album by your favorite artist
-- INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Random Access Memories', '5/17/2013', 4760, 'Columbia', 28, 14);

-- 9) Add some songs that are on that album into the song table
-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Give Life Back to Music', 274, '01/31/2014', 14, 28, 23);
-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Lose Yourself to Dance', 353, '08/13/2013', 14, 28, 23);

-- 10) Get the song titles, album title and artist name for what you just entered
-- SELECT * FROM Album JOIN Song ON Album.Id = Song.AlbumId JOIN Artist ON Album.ArtistId = Artist.Id WHERE Artist.ArtistName ='Daft Punk';