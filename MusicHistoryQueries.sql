-- 1) Query all of the entries in the Genre Table
-- SELECT * FROM Genre;

-- 2) Query all entries in the Artist Table and order by the artists' name */
-- SELECT * FROM Artist ORDER BY Artist.ArtistName;

-- 3) List all songs in the Song Table and include the Artist name
-- SELECT title, artist.ArtistName FROM Song JOIN Artist ON Song.ArtistId = Artist.Id;

-- 4) List all artists that have a pop album
-- SELECT ArtistName, Genre.Label FROM Album JOIN Artist ON Album.ArtistId = Artist.Id JOIN Genre ON Album.GenreId = Genre.Id WHERE Genre.Label = 'Pop';

-- 5) List all artists that have a Jazz or Rock album
-- SELECT ArtistName, Genre.Label FROM Album JOIN Artist ON Album.ArtistId = Artist.Id JOIN Genre ON Album.GenreId = Genre.Id WHERE Genre.Label = 'Jazz' OR Genre.Label = 'Rock';

-- 6) List the Albums with no songs
-- SELECT Album.Label FROM Album LEFT JOIN Song ON Song.AlbumId = Album.Id WHERE Song.title IS NULL;

-- 7) Add your favorite artist
-- INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Daft Punk', 1993)

-- 8) Add an album by your favorite artist
-- INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Random Access Memories', '5/17/2013', 4760, 'Columbia', 28, 14);

-- 9) Add some songs that are on that album into the song table
-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Give Life Back to Music', 274, '01/31/2014', 14, 28, 23);
-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Lose Yourself to Dance', 353, '08/13/2013', 14, 28, 23);

-- 10) Get the song titles, album title and artist name for what you just entered
-- SELECT Song.Title, Album.Label, Artist.ArtistName FROM Album JOIN Song ON Album.Id = Song.AlbumId JOIN Artist ON Album.ArtistId = Artist.Id WHERE Artist.ArtistName ='Daft Punk';

-- 11) Display how many songs there are in each album (You're allowed to mention anything in the GROUP BY Clause or that is in an aggregate function
-- SELECT COUNT(s.id), al.Title FROM Song s LEFT JOIN Album al ON s.AlbumId = al.Id GROUP BY al.Id, al.Title

-- 12) Display how many songs exist for each artist
-- SELECT artist.ArtistName, COUNT(song.id) as NumOfSongs FROM song JOIN artist ON song.ArtistId = artist.Id GROUP BY artist.id, artist.ArtistName

-- 13) Display how many songs exist for each Genre
-- SELECT Genre.Label, COUNT(song.id) as NumOfSongs FROM song JOIN Genre ON song.GenreId = Genre.id GROUP BY Genre.id, Genre.Label

-- 14) List the artists that have put out records on more than one record label
-- SELECT COUNT(DISTINCT al.label), ar.ArtistName FROM Artist ar JOIN Album al ON ar.id = al.ArtistId GROUP BY ar.ArtistName HAVING COUNT(DISTINCT al.label) > 1;

-- 15) Find the album with the longest duration
-- SELECT a.Label, a.AlbumLength FROM album a WHERE a.AlbumLength = (SELECT MAX(a.AlbumLength) FROM album a);

-- 16) Find the song with the longest duration
-- SELECT s.Title, s.SongLength FROM song s WHERE s.SongLength = (SELECT MAX(s.SongLength) FROM song s);

-- 17) Modify the previous query to also display the title of the album
-- SELECT a.Label, s.Title, s.SongLength FROM song s JOIN Album a ON s.AlbumId = a.Id WHERE s.SongLength = (SELECT MAX(s.SongLength) FROM song s);
