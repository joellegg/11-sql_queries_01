/* Query all of the entries in the Genre table */
/* SELECT * FROM Genre; */

/* Using the INSERT statement, add one of your favorite artists to the Artist table. */
/* INSERT INTO Artist VALUES (29, 'Billy Beetz', 2017); */

/* Using the INSERT statement, add one, or more, albums by your artist to the Album table. */
/* INSERT INTO Album VALUES (24, 'Beet Off', '02/28/2017', 2278, 'Beetz', 29, 14); */

/* Using the INSERT statement, add some songs that are on that album to the Song table. */
/* INSERT INTO Song VALUES (24, 'Bears', 208, '02/28/2017', 14, 29, 24); */

/*
 	Write a SELECT query that provides the song titles, album title,
  and artist name for all of the data you just entered in.
  Use the LEFT JOIN keyword sequence to connect the tables, and the
  WHERE keyword to filter the results to the album and artist you added.
  Here is some more info on joins that might help.
*/

/* Reminder: Direction of join matters. Try the following statements and see the difference in results. */

/*
  SELECT a.Title AS 'album title', s.Title AS 'song title'
  FROM Album a
  LEFT JOIN Song s
  ON s.AlbumId = a.AlbumId;
*/

/*
  SELECT a.Title AS 'album title', s.Title AS 'song title'
  FROM Song s
  LEFT JOIN Album a
  ON s.AlbumId = a.AlbumId;
*/


/*
  Write a SELECT statement to display how many songs exist for each album.
  You'll need to use the COUNT() function and the GROUP BY keyword sequence.
*/
/*
  SELECT a.Title AS 'album title', COUNT(s.Title) AS countDemSongs
  FROM Album a
  LEFT JOIN Song s ON s.AlbumId = a.AlbumId
  GROUP BY a.Title
  ORDER BY countDemSongs DESC
*/

/*
  Write a SELECT statement to display how many songs exist for each artist.
  You'll need to use the COUNT() function and the GROUP BY keyword sequence.
*/
/*
  SELECT a.ArtistName AS artist, COUNT(s.Title) AS numberOsongs
  FROM Artist a
  JOIN Song s ON a.ArtistId = s.ArtistId
  GROUP BY a.ArtistName
  ORDER BY numberOsongs DESC
*/

/*
  Write a SELECT statement to display how many songs exist for each genre.
  You'll need to use the COUNT() function and the GROUP BY keyword sequence.
*/
/*
  SELECT g.Label AS genre, COUNT(s.Title) AS genreCount
  FROM Genre g
  LEFT JOIN Song s ON g.GenreId = s.GenreId
  GROUP BY g.GenreId
  ORDER BY genreCount DESC
*/

/*
  Using MAX() function, write a select statement to find the album with the longest duration.
  The result should display the album title and the duration.
*/
/*
  SELECT a.Title AS AlbumTitle, MAX(a.AlbumLength) AS length
  FROM Album a
*/

/*
  Using MAX() function, write a select statement to find the song with the longest duration.
  The result should display the song title and the duration.
*/
/*
  SELECT s.Title AS 'song title', MAX(s.SongLength) AS length
  FROM Song s
*/

/* Modify the previous query to also display the title of the album. */
/*
  SELECT s.Title AS 'song title', a.Title AS albumTitle, MAX(s.SongLength) AS length
  FROM Song s
  JOIN Album a ON a.AlbumId = s.AlbumId
*/
