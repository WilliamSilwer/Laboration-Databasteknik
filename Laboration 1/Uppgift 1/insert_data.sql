INSERT INTO albums (al_title, al_release_year)
VALUES
('Det kommer aldrig va över för mig', 2013);

SELECT * FROM albums;

INSERT INTO songs (so_title, so_release_year, al_id)
VALUES
('Valborg', 2013, 1),
('Det kommer aldrig va över för mig', 2013, 1);

SELECT * FROM albums
JOIN songs ON albums.al_id = songs.al_id;

INSERT INTO albums (al_title, al_release_year)
VALUES
('Handen i fickan fast jag bryr mig', 2013),
('Vindar på Mars', 2019),
('Satan i gatan', 2011),
('Du gamla du fria', 2016);

INSERT INTO songs (so_title, so_release_year, al_id)
VALUES
('Pärlor', 2016, 5),
('I sprickorna kommer ljuset in', 2016, 5),
('Hela huset', 2013, 2),
('Sergels torg', 2013, 2),
('Välkommen in', 2011, 4),
('Horntullsstrand', 2019, 3),
('Vindar på Mars', 2019, 3),
('Tequila', 2026, NULL),
('Jag lovar', 2013, 2),
('Hädanefter', 2013, 2),
('Beloved', 2019, NULL),
('Guiding Light', 2018, NULL);

INSERT INTO artists (ar_name, ar_birth_year, ar_country)
VALUES
('Veronica Maggio', 1981, 'Sverige'),
('Håkan Hellström', 1974, 'Japan'),
('Hovet', NULL, 'Sverige'),
('Mumford & Sons', NULL, 'Storbritannien'),
('Otto Knows', 1989, 'Sverige'),
('Bruce Springsteen', 1949, 'USA');


INSERT INTO songs_artists (so_id, ar_id)
VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(8, 3),
(9, 3),
(10, 2),
(10, 5),
(11, 1),
(12, 1),
(13, 4),
(14, 4);

SELECT 
songs_artists.so_id,
songs.so_title,
songs_artists.ar_id,
artists.ar_name
FROM songs_artists
JOIN songs ON songs_artists.so_id = songs.so_id
JOIN artists ON songs_artists.ar_id = artists.ar_id
ORDER BY songs.so_id; 

INSERT INTO songs (so_title, so_release_year, al_id)
VALUES ('Kom igen Lena', 2010, 999);

UPDATE artists
SET ar_country = 'Sverige'
WHERE ar_name = 'Håkan Hellström';

SELECT * FROM artists
WHERE ar_name = 'Håkan Hellström';

DELETE FROM songs_artists
WHERE so_id = 14 AND ar_id = 4;

SELECT * FROM songs_artists;


DELETE FROM songs
WHERE so_id = 1;

SELECT * FROM songs;

