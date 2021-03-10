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
